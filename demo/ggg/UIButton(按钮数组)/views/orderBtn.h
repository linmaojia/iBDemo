//
//  orderBtn.h
//  ggg
//
//  Created by LXY on 16/11/2.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface orderBtn : UIView
@property (nonatomic,copy) void(^btnClickBlock)(NSString *text);
@property (strong, nonatomic) IBOutlet UIView *view_1;
@property (strong, nonatomic) IBOutlet UIView *view_2;
@property (strong, nonatomic) IBOutlet UIView *view_3;
@property (strong, nonatomic) IBOutlet UIView *view_4;

@end
