//
//  YZGUserSettingViewController.m
//  yzg
//
//  Created by LXY on 16/6/2.
//  Copyright © 2016年 AVGD. All rights reserved.
/*
 http://blog.csdn.net/kingcodexl/article/details/50786110
 self.automaticallyAdjustsScrollViewInsets = NO;
 看这个UIViewController的这个属性你就明白了，此属性默认为YES，这样UIViewController下如果只有一个UIScollView或者其子类，那么会自动留出空白，让scollview滚动经过各种bar下面时能隐约看到内容。但是每个UIViewController只能有唯一一个UIScollView或者其子类，如果超过一个，需要将此属性设置为NO,自己去控制留白以及坐标问题。
 */

#import "YZGVVVController.h"
@interface YZGVVVController ()
@property (nonatomic, strong) UIScrollView *scroll;    /**< Scrollow视图 */
@property (nonatomic, strong) UIScrollView *scroll1;    /**< Scrollow视图 */

@end

@implementation YZGVVVController

#pragma mark ************** 懒加载控件
- (UIScrollView *)scroll{
    
    if(!_scroll){
        _scroll=[[UIScrollView alloc] init];
        _scroll.contentSize=CGSizeMake(SCREEN_WIDTH, 800);
        _scroll.backgroundColor = [UIColor grayColor];
    }
    return _scroll;
}
- (UIScrollView *)scroll1{
    
    if(!_scroll1){
        _scroll1=[[UIScrollView alloc] init];
        _scroll1.contentSize=CGSizeMake(SCREEN_WIDTH, 800);
        _scroll1.backgroundColor = [UIColor grayColor];
    }
    return _scroll1;
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
    
//    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0 ? YES:NO) {
//        self.automaticallyAdjustsScrollViewInsets = NO;
//    }

    /*
       self.automaticallyAdjustsScrollViewInsets 默认为 Yes
       uiscrollview中view向下偏移64
       第一个UIScollView或者其子类 添加到View 上 会向下偏移64，其他就不会偏移
       所以要加上上方代码
     */
    

    
    //第一个加到View 上
    [self.view addSubview:self.scroll];
    _scroll.frame = CGRectMake(0, 74, SCREEN_WIDTH, 200);
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30)];
    view.backgroundColor = [UIColor redColor];
    [self.scroll addSubview:view];
    
    
    
     //第二个加到View 上
    [self.view addSubview:self.scroll1];
    _scroll1.frame = CGRectMake(0, SCREEN_HEIGHT - 200, SCREEN_WIDTH, 200);
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 30)];
    view1.backgroundColor = [UIColor redColor];
    [self.scroll1 addSubview:view1];
    
   
    


}
#pragma mark ************** 添加约束
- (void)addConstraintsForView
{
//    [_scroll mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.equalTo(self.view);
//        make.top.equalTo(self.view).offset(74);
//        make.height.width.equalTo(@(300));
//        
//    }];

}
@end
