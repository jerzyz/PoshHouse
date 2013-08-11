//
//  AppDelegate.m
//  ScrollViewTest
//
//  Created by zouyingchao on 8/11/13.
//  Copyright (c) 2013 edu.self. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
{
    UIScrollView *view3;
    UIScrollView *view2;
    UIScrollView *view1;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(94, 368, 100, 100);
    [button1 setTitle:@"灯光" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(button1Clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button1];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(294, 368, 100, 100);
    [button2 setTitle:@"窗帘" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(button2Clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(494, 368, 100, 100);
    [button3 setTitle:@"音乐" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(button3Clicked) forControlEvents:UIControlEventTouchUpInside];
    [self.window addSubview:button3];
    
    view3 = [[UIScrollView alloc] initWithFrame:CGRectMake(94, 538, 580, 420)];
    view3.backgroundColor = [UIColor yellowColor];
    UIButton *button3_1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3_1.frame = CGRectMake(0, 0, 80, 30);
    [button3_1 setTitle:@"打开" forState:UIControlStateNormal];
    [view3 addSubview:button3_1];
    [self.window addSubview:view3];
    
    view2 = [[UIScrollView alloc] initWithFrame:CGRectMake(94, 538, 580, 420)];
    view2.backgroundColor = [UIColor greenColor];
    [self.window addSubview:view2];
    
    view1 = [[UIScrollView alloc] initWithFrame:CGRectMake(94, 538, 580, 420)];
    view1.backgroundColor = [UIColor redColor];
    [self.window addSubview:view1];
    
    return YES;
}

- (void)button1Clicked
{
    [self.window bringSubviewToFront:view1];
}
- (void)button2Clicked
{
    [self.window bringSubviewToFront:view2];
}
- (void)button3Clicked
{
    [self.window bringSubviewToFront:view3];
}
@end
