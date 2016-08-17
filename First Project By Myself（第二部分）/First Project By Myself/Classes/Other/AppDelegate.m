//
//  AppDelegate.m
//  First Project By Myself
//
//  Created by ray威LL on 16/8/10.
//  Copyright © 2016年 ray威LL. All rights reserved.
//

#import "AppDelegate.h"

#import "RayTabBarController.h"
/*
 
 优先级:  LaunchScreen > LaunchImage
 在Xcode配置了，不起作用，1.清空xcode缓存 2.直接删除程序 重新运行
 如果是通过LaunchImage设置启动界面，那么屏幕的可视范围 由 那张图片决定
 注意：如果使用LaunchImage，必须让你的美工提供各种尺寸的启动图片
 
 LaunchScreen：Xcode6开始才有
 LaunchScreen好处：1. 自动识别当前真机或者模拟器的尺寸 2.只要让美工提供一个可拉伸图片就可以了 3.展示更多东西
 
 LaunchScreen底层实现：把LaunchScreen截屏，生成一张图片，作为启动图片
 
 
 */


/*
 
             上：   UI层（UI界面）
 开发中分为 :  中：   数据层
             下：   请求层
 
 
 做项目之前： 做项目架构（结构）搭建   ->分组   主流结构（UITabBarController + 导航控制器）
 
 项目的开发方式：1，storyboard  2.纯代码
 
 
 */

@interface AppDelegate ()

@end

@implementation AppDelegate


// 自定义类： 可以管理自己的业务
// 封装 ：谁的事情谁管理  =。 方便以后去维护代码

// 程序启动的时候就会调用
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 1.创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.设置窗口根控制器(下方的控制器 UITabBarController) , 根控制器 rootViewController 赋值
    RayTabBarController *tabBarVc = [[RayTabBarController alloc] init];
    
    self.window.rootViewController = tabBarVc;
    
    
   
    
    // 3.显示窗口   1.成为UIApplication主窗口 2.
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}

@end
