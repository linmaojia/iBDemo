//
//  YZGRootNavigationController.m
//  yzg
//
//  Created by AVGD—JK on 16/5/30.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "YZGRootNavigationController.h"
@interface YZGRootNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation YZGRootNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //    UINavigationBar *appearance = [UINavigationBar appearance];
    //    [appearance setBackgroundImage:[UIImage imageNamed:@"navigationbar"] forBarMetrics:UIBarMetricsDefault];
    //    appearance.layer.contents = (id)[UIImage imageNamed:@"navigationbar"].CGImage;
    //    [appearance.layer setMasksToBounds:YES];
    
    [self setNavigationBarTheme];//导航栏背景不是图片
    
//    [self setNavigationBarThemeImg];//导航栏背景是图片

    
}
- (void)setNavigationBarTheme
{
    /*先考虑没图片的情况
     没修改和只改变导航栏颜色的情况
     子视图添加时候 要从 （0，64） 开始布局
     
     */
    UINavigationBar *appearance = [UINavigationBar appearance];
    //导航栏背景颜色
    [appearance setBarTintColor:mainColor];
    //设置中部文字属性,颜色和字体大小
    [appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor] ,NSFontAttributeName:[UIFont boldSystemFontOfSize:17]}];
    //返回item颜色
    [appearance setTintColor:[UIColor whiteColor]];
    
  
    
}



- (void)setNavigationBarThemeImg
{
    /*
   
     子视图添加时候 要从 （0，0） 开始布局
     
     */
    UINavigationBar *appearance = [UINavigationBar appearance];
    //导航栏背景颜色
    [appearance setBackgroundImage:[UIImage imageNamed:@"navBar"] forBarMetrics:UIBarMetricsDefault];
    //设置中部文字属性,颜色和字体大小
    [appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor] ,NSFontAttributeName:[UIFont boldSystemFontOfSize:17]}];
    //返回item颜色
    [appearance setTintColor:[UIColor whiteColor]];
    
    
   //如果用图片，会和下面代码执行布局的效果一样，都是从导航栏开始计算，如果想去除， 则改为 UIRectEdgeAll
    
    //设置CGRectZero从导航栏下开始计算
//    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
//    {
//        self.edgesForExtendedLayout = UIRectEdgeNone;//默认为all
//    }
    
    
    
    
    
    
 


}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        }

       [super pushViewController:viewController animated:animated];
}

/**
 *  当第一次使用这个类的时候调用1次
 */
+ (void)initialize
{
    // 设置UINavigationBar的主题
    //    [self setupNavigationBarTheme];
    
}

+ (void)setupNavigationBarTheme
{
    UINavigationBar *appearance = [UINavigationBar appearance];
    
#warning 这里使用图片和不用图片  会影响控制器的view的尺寸,原因暂时不得而知  建议使用鱼片
    //以下二选一   最好用图片
    // 设置导航栏背景图片
    [appearance setBackgroundImage:[UIImage imageNamed:@"navigationbar"] forBarMetrics:UIBarMetricsDefault];
    
    
    //设置导航栏背景颜色
    [appearance setBarTintColor:mainColor];
    [appearance.layer setMasksToBounds:YES];
    
    // 设置中部文字属性
    [appearance setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor colorWithHexColorString:@"333333"]}];
    
    //设置返回文字颜色
    [appearance setTintColor:[UIColor colorWithHexColorString:@"333333"]];
}


@end
