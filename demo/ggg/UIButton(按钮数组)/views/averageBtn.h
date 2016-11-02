//
//  averageBtn.h
//  ggg
//
//  Created by LXY on 16/11/2.
//  Copyright © 2016年 AVGD. All rights reserved.
//

#import <UIKit/UIKit.h>
/*平均分配*/
@interface averageBtn : UIView
@property (nonatomic,copy) void(^btnClickBlock)(NSString *text);

@end
