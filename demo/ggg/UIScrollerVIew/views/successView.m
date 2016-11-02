//
//  successView.m
//  ggg
//
//  Created by LXY on 16/11/1.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "successView.h"

@implementation successView

/* 初始化ib */
- (void)awakeFromNib
{
   [super awakeFromNib];
    
    self.backgroundColor = [UIColor grayColor];
    _image_1.layer.cornerRadius = 5;
    _image_1.layer.masksToBounds = YES;
}
- (IBAction)clickAction:(id)sender
{
    if(self.UserHeadImgClick)
    {
        self.UserHeadImgClick(@"xx");
    }
    
   
}

@end
