//
//  TurkeyAdapter.h
//  Adapter
//
//  Created by wdwk on 2017/6/1.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "Duck.h"
#import "Turkey.h"
//使用火鸡冒充鸭子做相应适配
@interface TurkeyAdapter : Duck
@property(nonatomic, strong)Turkey  *turkey;
-(void)turkeyAdapter:(Turkey *)turkey;
@end
