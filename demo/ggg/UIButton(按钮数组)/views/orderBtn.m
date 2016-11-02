//
//  orderBtn.m
//  ggg
//
//  Created by LXY on 16/11/2.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "orderBtn.h"

@interface orderBtn()
@property (nonatomic, strong) NSArray *titleArray;               /**< 按钮标题 */

@end
@implementation orderBtn
- (NSArray *)titleArray{
    if (!_titleArray) {
        _titleArray = @[@"我的收藏",@"我的足迹",@"收货地址",@"物流地址"];
        
    }
    return _titleArray;
}
/* 初始化ib */
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    for(int i = 0;i<4;i++)
    {
        UIView *view = (UIView *)[self viewWithTag:100+i];
        view.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewClick:)];
        [view addGestureRecognizer:tap];
        
        UILabel *titleLab = (UILabel *)[view viewWithTag:1];
        titleLab.text = self.titleArray[i];
    }

}

#pragma mark ************** 个人背景被点击
-(void)viewClick:(UITapGestureRecognizer *)sender
{
   UILabel *titleLab = (UILabel *)[sender.view viewWithTag:1];
    if(self.btnClickBlock)
    {
        self.btnClickBlock(titleLab.text);
    }
}
@end
