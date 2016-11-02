//
//  btnView.m
//  ggg
//
//  Created by LXY on 16/11/2.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import "btnView.h"

@implementation btnView
/* 初始化ib */
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    _btn_1.layer.borderWidth = 0.5;
    _btn_1.layer.borderColor = [UIColor blackColor].CGColor;
    _btn_1.layer.cornerRadius = 5;
    _btn_1.layer.masksToBounds = YES;
    
    _btn_2.layer.borderWidth = 0.5;
    _btn_2.layer.borderColor = [UIColor blackColor].CGColor;
    _btn_2.layer.cornerRadius = 5;
    _btn_2.layer.masksToBounds = YES;
    
    _btn_3.layer.borderWidth = 0.5;
    _btn_3.layer.borderColor = [UIColor blackColor].CGColor;
    _btn_3.layer.cornerRadius = 5;
    _btn_3.layer.masksToBounds = YES;
}

- (IBAction)btnAcion:(id)sender {
    
    UIButton *btn = (UIButton *)sender;
    
    if(self.btnClickBlock)
    {
        self.btnClickBlock(btn.titleLabel.text);
    }
}

@end
