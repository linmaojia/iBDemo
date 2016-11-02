//
//  YZGUserSettingViewController.m
//  yzg
//
//  Created by LXY on 16/6/2.
//  Copyright © 2016年 AVGD. All rights reserved.


#import "YZGKKKController.h"
#import "successView.h"
@interface YZGKKKController ()
@property (nonatomic, strong) UIScrollView *scroll;    /**< Scrollow视图 */
@property (nonatomic, strong) successView *successView;

@end

@implementation YZGKKKController

#pragma mark ************** 懒加载控件

- (successView *)successView{
    
    if(!_successView){
        _successView = [[[NSBundle mainBundle] loadNibNamed:@"successView" owner:self options:nil] objectAtIndex:0];
        _successView.UserHeadImgClick = ^(NSString *text)
        {
            NSLog(@"xxx");
            
        };
    }
    return _successView;
}
- (UIScrollView *)scroll{
    
    if(!_scroll){
        _scroll=[[UIScrollView alloc] init];
        _scroll.contentSize=CGSizeMake(SCREEN_WIDTH, 800);
        _scroll.backgroundColor = [UIColor grayColor];
    }
    return _scroll;
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
    self.title = @"新建/编辑收货地址";
    self.view.backgroundColor = RGB(235, 235, 241);
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? YES:NO) {
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
  
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
    
    [self.view addSubview:self.scroll];
    [self.scroll addSubview:self.successView];


}
#pragma mark ************** 添加约束
- (void)addConstraintsForView
{


 
      //设置CGRectZero从导航栏下开始计算
//     if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
//         self.edgesForExtendedLayout = UIRectEdgeNone;//默认为all
//     }
//    _scroll.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT - 64);

    
   
//    _scroll.frame = CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT - 64);

    _successView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 800);


}
@end
