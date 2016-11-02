//
//  btnView.h
//  ggg
//
//  Created by LXY on 16/11/2.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface btnView : UIView

@property (strong, nonatomic) IBOutlet UIButton *btn_1;
@property (strong, nonatomic) IBOutlet UIButton *btn_2;
@property (strong, nonatomic) IBOutlet UIButton *btn_3;



@property (nonatomic,copy) void(^btnClickBlock)(NSString *text);

@end
