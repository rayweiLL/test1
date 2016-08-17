//
//  RayTabBarController.m
//  First Project By Myself
//
//  Created by ray威LL on 16/8/11.
//  Copyright © 2016年 ray威LL. All rights reserved.
//

#import "RayTabBarController.h"
#import "RayMeViewController.h"
#import "RayNewViewController.h"
#import "RayEssenceViewController.h"
#import "RayPublishViewController.h"
#import "RayFriendTrendViewController.h"
#import "UIImage+Image.h"
@implementation RayTabBarController


/*
 
 1.选中的图片被渲染  -> ios7 之后默认tabBar上的按钮图片都会被渲染   1.修改图片  2.通过代码
 2.选中标题颜色：黑色 标题字体大
 3.发布按钮显示不出来
 
 */



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 2.1 添加子控制器 （要划分文件结构） -> 自定义控制器 （监听）     (根据下面按钮添加子控制器，多少个按钮就添加多少个控制器)
    // 导入完之后，要创建  2.1.1
    
    [self setupAllChildViewController];
    
    
    // 2.2 设置tabBar上按钮内容 ->  由对应的子控制器的tabBarItem属性
    [self setupAllTitleButton];
    
}



#pragma mark - 添加所有子控制器
- (void)setupAllChildViewController{
    
    // 精华
    RayEssenceViewController *essenceVc = [[RayEssenceViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:essenceVc];
    
    [self addChildViewController:nav];
    
    // 新帖
    RayNewViewController *newVc = [[RayNewViewController alloc] init];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:newVc];
    
    [self addChildViewController:nav1];
    
    // 发布
    RayPublishViewController *publishVc = [[RayPublishViewController alloc] init];
    
    [self addChildViewController:publishVc];
    
    // 关注
    RayFriendTrendViewController *friendTrendVc = [[RayFriendTrendViewController alloc] init];
    
    UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:friendTrendVc];
    
    [self addChildViewController:nav3];
    
    // 我
    RayMeViewController *meVc = [[RayMeViewController alloc] init];
    
    UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:meVc];
    
    [self addChildViewController:nav4];

}



- (void)setupAllTitleButton{
    
    // 第0个: nav
    UINavigationController *nav =  self.childViewControllers[0];
    nav.tabBarItem.title = @"精华";
    nav.tabBarItem.image = [UIImage imageNamed:@"cymbal"];
    // 选中的图片 设置 selectedImage
    // 快速生成一个没有渲染图片
    nav.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@""];
    
    // 第一个：  关注 nav1
    UINavigationController *nav1 =  self.childViewControllers[1];
    nav1.tabBarItem.title = @"关注";
    nav1.tabBarItem.image = [UIImage imageNamed:@"drink"];
    nav1.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@""];
    
    // 第二个 ： 发布 publish
    RayPublishViewController *publishVc =  self.childViewControllers[2];
    publishVc.tabBarItem.image = [UIImage imageNamed:@"eat"];
    publishVc.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@""];
    
    // 第三个 ：  关注 nav3
    UINavigationController *nav3 =  self.childViewControllers[3];
    nav3.tabBarItem.title = @"新帖";
    nav3.tabBarItem.image = [UIImage imageNamed:@"pie"];
    nav3.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@""];
    
    // 第四个 ： 我 nav4
    UINavigationController *nav4 =  self.childViewControllers[4];
    nav4.tabBarItem.title = @"我";
    nav4.tabBarItem.image = [UIImage imageNamed:@"fart"];
    nav4.tabBarItem.selectedImage = [UIImage imageOriginalWithName:@""];
}



    


@end
