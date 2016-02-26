//
//  TFJSBridge.m
//  TimeFace
//
//  Created by boxwu on 5/26/15.
//  Copyright (c) 2014 TNMP. All rights reserved.
//

#import "TFJSBridge.h"
#import <objc/runtime.h>
#import "TimeFaceFoundationConst.h"


@interface TFJSBridge ()<UIWebViewDelegate>

@property (nonatomic, weak) id webViewDelegate;
@property (nonatomic, weak) NSBundle *resourceBundle;

@end

@implementation TFJSBridge

+ (instancetype)bridgeForWebView:(UIWebView*)webView webViewDelegate:(NSObject<UIWebViewDelegate>*)webViewDelegate {
    return [self bridgeForWebView:webView webViewDelegate:webViewDelegate resourceBundle:nil];
}

+ (instancetype)bridgeForWebView:(UIWebView*)webView webViewDelegate:(NSObject<UIWebViewDelegate>*)webViewDelegate resourceBundle:(NSBundle*)bundle
{
    TFJSBridge* bridge = [[[self class] alloc] init];
    [bridge _platformSpecificSetup:webView webViewDelegate:webViewDelegate resourceBundle:bundle];
    return bridge;
}

#pragma mark - init & dealloc

- (void) _platformSpecificSetup:(UIWebView*)webView webViewDelegate:(id<UIWebViewDelegate>)webViewDelegate resourceBundle:(NSBundle*)bundle{
    _webView = webView;
    _webViewDelegate = webViewDelegate;
    _webView.delegate = self;
    _resourceBundle = bundle;
}

- (void)dealloc {
    _webView.delegate = nil;
    
    _webView = nil;
    _webViewDelegate = nil;
}

#pragma mark - UIWebView Delegate

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    if (webView != _webView) {
        return;
    }
    //is js insert
    if (![[webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"typeof window.%@ == 'object'", kBridgeName]] isEqualToString:@"true"]) {
        //get class method dynamically
        unsigned int methodCount = 0;
        Method *methods = class_copyMethodList([self class], &methodCount);
        NSMutableString *methodList = [NSMutableString string];
        for (int i=0; i<methodCount; i++) {
            NSString *methodName = [NSString stringWithCString:sel_getName(method_getName(methods[i])) encoding:NSUTF8StringEncoding];
            [methodList appendString:@"\""];
            [methodList appendString:[methodName stringByReplacingOccurrencesOfString:@":" withString:@""]];
            [methodList appendString:@"\","];
        }
        if (methodList.length>0) {
            [methodList deleteCharactersInRange:NSMakeRange(methodList.length-1, 1)];
        }
        
        NSBundle *bundle = _resourceBundle ? _resourceBundle : [NSBundle mainBundle];
        NSString *filePath = [bundle pathForResource:@"TFJSBridge" ofType:@"js"];
        NSString *js = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        [webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:js, methodList]];
    }
    
    __strong typeof(_webViewDelegate) strongDelegate = _webViewDelegate;
    if (strongDelegate && [strongDelegate respondsToSelector:@selector(webViewDidFinishLoad:)]) {
        [strongDelegate webViewDidFinishLoad:webView];
    }
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    if (webView != _webView) { return; }
    
    __strong typeof(_webViewDelegate) strongDelegate = _webViewDelegate;
    if (strongDelegate && [strongDelegate respondsToSelector:@selector(webView:didFailLoadWithError:)]) {
        [strongDelegate webView:webView didFailLoadWithError:error];
    }
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    if (webView != _webView) { return YES; }
    NSURL *url = [request URL];
    __strong typeof(_webViewDelegate) strongDelegate = _webViewDelegate;
    
    NSString *requestString = [[request URL] absoluteString];
    if ([requestString hasPrefix:kProtocolScheme]) {
        NSArray *components = [[url absoluteString] componentsSeparatedByString:@":"];
        
        NSString *function = (NSString*)[components objectAtIndex:1];
        NSString *argsAsString = [(NSString*)[components objectAtIndex:2]
                                  stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSData *argsData = [argsAsString dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *argsDic = (NSDictionary *)[NSJSONSerialization JSONObjectWithData:argsData options:kNilOptions error:NULL];
        //convert js array to objc array
        NSMutableArray *args = [NSMutableArray array];
        for (int i=0; i<[argsDic count]; i++) {
            [args addObject:[argsDic objectForKey:[NSString stringWithFormat:@"%d", i]]];
        }
        //ignore warning
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        SEL selector = NSSelectorFromString([args count]>0?[function stringByAppendingString:@":"]:function);
        if ([self respondsToSelector:selector]) {
            [self performSelector:selector withObject:args];
        }
        return NO;
    } else if (strongDelegate && [strongDelegate respondsToSelector:@selector(webView:shouldStartLoadWithRequest:navigationType:)]) {
        return [strongDelegate webView:webView shouldStartLoadWithRequest:request navigationType:navigationType];
    } else {
        return YES;
    }
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    if (webView != _webView) { return; }
    
    __strong typeof(_webViewDelegate) strongDelegate = _webViewDelegate;
    if (strongDelegate && [strongDelegate respondsToSelector:@selector(webViewDidStartLoad:)]) {
        [strongDelegate webViewDidStartLoad:webView];
    }
}

#pragma mark - call js

//执行js方法
- (void)excuteJSWithObj:(NSString *)obj function:(NSString *)function {
    NSString *js = function;
    if (obj) {
        js = [NSString stringWithFormat:@"%@.%@", obj, function];
    }
    TFLog(@"excuteJS:%@", js);
    [self.webView stringByEvaluatingJavaScriptFromString:js];
}

@end
