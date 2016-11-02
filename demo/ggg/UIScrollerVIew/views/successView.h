//
//  successView.h
//  ggg
//
//  Created by LXY on 16/11/1.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface successView : UIView


@property (strong, nonatomic) IBOutlet UIButton *clickBtn;

@property (strong, nonatomic) IBOutlet UIImageView *image_1;

@property (strong, nonatomic) IBOutlet UIImageView *image_2;


@property (nonatomic,copy) void(^UserHeadImgClick)(NSString *text);  //block



@end
