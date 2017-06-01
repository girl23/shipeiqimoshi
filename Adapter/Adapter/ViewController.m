//
//  ViewController.m
//  Adapter
//
//  Created by wdwk on 2017/6/1.
//  Copyright © 2017年 wksc. All rights reserved.
//

#import "ViewController.h"
#import "Duck.h"
#import "TurkeyAdapter.h"

#import "Turkey.h"
#import "WildTurkey.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
//    包装某些对象让它们的接口看起来不像自己而像别的东西；
//    适配器实现了目标接口，并持有被适配者的实例
//    适配器模式的定义：将一个类的接口，转换成客户期望的另一个接口，适配器让原本接口不兼容的类可以合作无间（作用：让客户从实现的接口解耦）
    
//    适配器：对象适配器和类适配器（基于多继承的，但是IOS中是没有多继承的，暂时不讨论类适配器）；
//    对象适配器使用的是组合，不仅可以适配某个类，也可以适配该类的任何子类；
    
//    装饰者模式和适配器模式的差异：
//    装饰者：当事情一涉及到装饰者，就表示有一些新的行为或责任要加入到你的设计中，而无需改变现有的代码；
    
//    模式：装饰者模式 ————————————》意图：不改变接口，加入新的责任；
//    模式：适配器模式 ————————————》意图：将一个接口转换成另一个接口
//    模式：外 观模式  ————————————》意图：让接口更简单；
    
//    外观模式没有“封装”子系统的类，只是提供了简化的接口，所以客户觉得有必要，依然可以直接使用子系统的类，
//    外观模式的作用：不仅简化了接口，也将客户实现从组件子系统中解耦，
//    外观模式的定义：提供了一个统一的接口，用来访问子系统中的一群接口。外观定义了一个高层接口，让子系统更容易使用；
    [super viewDidLoad];
   
    //被适配者
    Turkey * turkey=[WildTurkey new];
    //适配器（适配器继承至最终转换到的接口）
    TurkeyAdapter * adapter=[TurkeyAdapter new];
    [adapter turkeyAdapter:turkey];
    
    Duck *duck=adapter;
    [duck quack];
    [duck fly];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
