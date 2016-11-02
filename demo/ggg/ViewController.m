//
//  ViewController.m
//  ggg
//
//  Created by LXY on 16/8/3.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "ViewController.h"
#import "KViewController.h"
#import "UIScrollerViewController.h"
#import "YZGVVVController.h"
#import "YZGKKKController.h"
@interface ViewController ()
{
    NSMutableArray *buttonArray;    /**< 按钮数组 */
    NSMutableArray *buttonArray1;    /**< 按钮数组 */
}
@property (nonatomic, strong) UIView *bottomView;    /**< 底部视图 */
@property (nonatomic, strong) UIView *bottomView1;    /**< 底部视图 */

@end

@implementation ViewController


- (UIView *)bottomView{
    
    if(!_bottomView){
        
        buttonArray = [NSMutableArray new];//使用数组约束
        _bottomView = [[UIView alloc]init];
        _bottomView.backgroundColor = [UIColor whiteColor];
        NSArray *array = [NSArray arrayWithObjects:@"多个按钮",@"UIScrollerView 子视图问题",@"ScrollerView 拖IB",nil];
        for(int i=0;i<array.count;i++){
            
            UIButton *button=[UIButton buttonWithType:UIButtonTypeSystem];
            
            button.backgroundColor = RGB(238, 91, 40);
            [button setTitleColor:[UIColor whiteColor] forState:0];
            [button setTitle:array[i] forState:UIControlStateNormal];
            button.titleLabel.font= boldSystemFont(15);
            button.tag=100+i;
            [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
            [self.bottomView addSubview:button];
            [buttonArray addObject:button];
            
        }
        
        
    }
    return _bottomView;
}
#pragma mark ************************* 监听button方法
-(void)buttonAction:(UIButton *)sender{
    switch (sender.tag) {
        case 100:
        {
            UIScrollerViewController *vc = [[UIScrollerViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        case 101:
        {
            
            [self.navigationController pushViewController:[YZGVVVController new] animated:YES];
        }
            break;
        case 102:
        {
            [self.navigationController pushViewController:[YZGKKKController new] animated:YES];
            
        }
            break;
            
        default:
            break;
    }
    
    
    
}





- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.bottomView];
    
    [_bottomView makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.equalTo(@100);
        make.top.bottom.equalTo(self.view);
    }];
    
    //平均分配 水平
    
    [buttonArray mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:5 leadSpacing:5 tailSpacing:5];
    [buttonArray makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.equalTo(@100);
        make.left.equalTo(self.bottomView);
    }];
    
    
}

@end
