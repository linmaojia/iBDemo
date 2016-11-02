//
//  YZGUserSettingViewController.m
//  yzg
//
//  Created by LXY on 16/6/2.
//  Copyright © 2016年 AVGD. All rights reserved.
/*
 用 iB 来布局，统一用frame
 
 scrollow 下布局 frame 比较好
 如果用约束的话，要把 宽 高都设置
 */

#import "UIScrollerViewController.h"

#import "KViewController.h"
#import "btnView.h"
#import "averageBtn.h"
#import "orderBtn.h"
#import "spaceBtn.h"

@interface UIScrollerViewController ()

@property (nonatomic, strong) btnView *btnView; /**<以中间作为参照点 */
@property (nonatomic, strong) averageBtn *averageBtn; /**<平均分配 */
@property (nonatomic, strong) orderBtn *orderBtn;
@property (nonatomic, strong) spaceBtn *spaceBtn;


@end

@implementation UIScrollerViewController

#pragma mark ************** 懒加载控件
- (spaceBtn *)spaceBtn{
    if(!_spaceBtn){
        _spaceBtn = [[[NSBundle mainBundle] loadNibNamed:@"spaceBtn" owner:self options:nil] objectAtIndex:0];
      
    }
    return _spaceBtn;
}
- (orderBtn *)orderBtn{
    if(!_orderBtn){
        _orderBtn = [[[NSBundle mainBundle] loadNibNamed:@"orderBtn" owner:self options:nil] objectAtIndex:0];
        _orderBtn.btnClickBlock = ^(NSString *text)
        {
            NSLog(@"----%@",text);
        };
    }
    return _orderBtn;
}


- (averageBtn *)averageBtn{
    if(!_averageBtn){
        _averageBtn = [[[NSBundle mainBundle] loadNibNamed:@"averageBtn" owner:self options:nil] objectAtIndex:0];
        _averageBtn.btnClickBlock = ^(NSString *text)
        {
            NSLog(@"----%@",text);
        };
    }
    return _averageBtn;
}
- (btnView *)btnView{
    if(!_btnView){
        _btnView = [[[NSBundle mainBundle] loadNibNamed:@"btnView" owner:self options:nil] objectAtIndex:0];
        _btnView.btnClickBlock = ^(NSString *text)
        {

            NSLog(@"----%@",text);
        };
    }
    return _btnView;
}
- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNav];//设置导航栏
    
    [self addSubviewsForView];
    
    [self addConstraintsForView];
    
    [self getData];
}
#pragma mark ************** 设置导航栏
- (void)setNav
{
    self.title = @"UIScrollView";
    self.view.backgroundColor = [UIColor whiteColor];
    
}
- (void)backAction
{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark ************** 获取数据
- (void)getData
{
}
#pragma mark ************** 添加子控件
- (void)addSubviewsForView
{

    [self.view addSubview:self.btnView];
    [self.view addSubview:self.averageBtn];
    [self.view addSubview:self.orderBtn];
    [self.view addSubview:self.spaceBtn];


}
#pragma mark ************** 添加约束
- (void)addConstraintsForView
{
    /*
      用 frame 约束都可以
     */
    
    _btnView.frame = CGRectMake(0, SCREEN_HEIGHT - 50, SCREEN_WIDTH, 50);

    _averageBtn.frame = CGRectMake(0, SCREEN_HEIGHT - 100, SCREEN_WIDTH, 50);

    _orderBtn.frame = CGRectMake(0, 100, SCREEN_WIDTH, 80);
    
//    _spaceBtn.frame = CGRectMake(0, 200, SCREEN_WIDTH, 50);

    [_spaceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(_orderBtn.bottom).offset(10);
        make.height.width.equalTo(@(50));
       
    }];
    
    
   

    
    NSLog(@"---%@",NSStringFromCGRect(self.view.frame));
    
    
}
@end
