//
//  ViewController.m
//  CSLYQ
//
//  Created by 罗超 on 16/2/26.
//  Copyright © 2016年 罗超. All rights reserved.
//

#import "ViewController.h"
#import "MakeCollectionViewCell.h"

const static CGFloat markCollectionViewHeight = 310;
#define markCollectioCell @"MarkAndPrivilegeCollectionViewCell"


@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *markView;

@end

@implementation ViewController
{
    NSArray *array;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self removeStateView];
    array = [NSArray array];
    array = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"0"];
    [self.view addSubview:self.markView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (UICollectionView *)markView {
    if (!_markView) {
        CGRect rect = CGRectMake(0.f, 64.f, self.view.tfWidth, self.view.tfHeight - 40);
        
        UICollectionViewFlowLayout *viewLayout = [[UICollectionViewFlowLayout alloc] init];
        
        _markView = [[UICollectionView alloc]initWithFrame:rect collectionViewLayout:viewLayout];
        _markView.tag = 1202;
        // 注册可重用视图
        [_markView registerClass:[MakeCollectionViewCell class]
      forCellWithReuseIdentifier:markCollectioCell];
        _markView.backgroundColor = TFSTYLEVAR(alertCancelColor);
        [_markView setShowsHorizontalScrollIndicator:NO];
        [_markView setShowsVerticalScrollIndicator:NO];
        _markView.dataSource = self;
        _markView.delegate = self;
        _markView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
        _markView.alwaysBounceVertical = NO;
//        [_markView registerClass:[MarkCollectionHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
//             withReuseIdentifier:@"SectionHeaderView"];
//        [_markView registerClass:[MarkCollectionFooterView class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter
//             withReuseIdentifier:@"SectionFooterView"];
        viewLayout.headerReferenceSize = CGSizeZero;
        viewLayout.footerReferenceSize = CGSizeZero;
        
    }
    return _markView;
}



#pragma  mark - UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return array.count;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MakeCollectionViewCell *cell = (MakeCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:markCollectioCell forIndexPath:indexPath];
    NSInteger row = [indexPath row];
    
    [cell refresh:array[row]];
    
    
    return cell;
}


- (BOOL)collectionView:(UICollectionView *)collectionView shouldUpdateFocusInContext:(UICollectionViewFocusUpdateContext *)context {
    return YES;
}

#pragma mark UICollectionDelegate
/**
 *  点击选中
 *
 *  @param collectionView <#collectionView description#>
 *  @param indexPath      <#indexPath description#>
 */
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
        UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
        MakeCollectionViewCell *cellMark = (MakeCollectionViewCell *)cell;
        cellMark.backgroundColor = TFSTYLEVAR(defaultBlueColor);
}
/**
 *  取消选中
 *
 *  @param collectionView <#collectionView description#>
 *  @param indexPath      <#indexPath description#>
 */
- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    MakeCollectionViewCell *cellMark = (MakeCollectionViewCell *)cell;
    cellMark.backgroundColor = TFSTYLEVAR(defaultWhiteColor);
  
}


//定义每个UICollectionView 的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat kImageViewWidth = (self.view.tfWidth - 5*16)/ 4;
    return CGSizeMake(kImageViewWidth, kImageViewWidth);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 0;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 16;
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(16, 16, 16, 16);
}




//返回头headerView的大小
-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section{
    CGSize size={self.view.tfWidth,0};
    return size;
}
//返回头footerView的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForFooterInSection:(NSInteger)section
{
    CGSize size={self.view.tfWidth,0};
    return size;
}

//设置collection的headerView和footerView
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    UICollectionReusableView *reusableview = nil;
    if (kind == UICollectionElementKindSectionHeader) {
        if (indexPath.row == 0) {
//            MarkCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"SectionHeaderView" forIndexPath:indexPath];
//            NSString *headtitle =NSLocalizedString(@"您想做一本什么样的书？ ", nil);
//            NSString *headprompt = NSLocalizedString(@"请选择书的标签", nil);
//            
//            [headerView refreshTitle:headtitle prompt:headprompt];
//            headerView.backgroundColor = [UIColor clearColor];
//            
//            reusableview = headerView;
            
        }
        
    }
    if (kind == UICollectionElementKindSectionFooter) {
//        MarkCollectionFooterView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"SectionFooterView" forIndexPath:indexPath];
//        NSString *footTitle = NSLocalizedString(@"如未选择标签，您的时光书默认归入“其他”类别", nil);
//        [headerView refreshTitle:footTitle];
//        headerView.backgroundColor = [UIColor clearColor];
//        
//        reusableview = headerView;
//        
    }
    
    return reusableview;
}














@end
