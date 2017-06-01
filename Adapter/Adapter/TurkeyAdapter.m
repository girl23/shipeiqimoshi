//
//  TurkeyAdapter.m
//  Adapter
//
//  Created by wdwk on 2017/6/1.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "TurkeyAdapter.h"

@implementation TurkeyAdapter
-(void)turkeyAdapter:(Turkey *)turkey{
    self.turkey=turkey;
}
-(void)quack{
    [self.turkey gobble];
}
-(void)fly{
    [self.turkey fly];
}
@end
