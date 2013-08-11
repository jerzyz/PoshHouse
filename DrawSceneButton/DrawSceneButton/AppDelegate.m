//
//  AppDelegate.m
//  DrawSceneButton
//
//  Created by zouyingchao on 8/11/13.
//  Copyright (c) 2013 edu.self. All rights reserved.
//

#import "AppDelegate.h"

#define SCENE_BUTTON_COUNT 10
// 这个假设从配置文件中读取到场景按钮的数量是10

@implementation AppDelegate
{
    int sceneButtonNum;
    // 用于标记当前画到了第几个场景按钮
    
    BOOL isSceneButtonEnough;
    // 判断场景按钮画够了没有
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor grayColor];
    [self.window makeKeyAndVisible];
    
    sceneButtonNum = 0;
    isSceneButtonEnough = NO;
    
    // 循环着画按钮，到数量了Break出来
    for (int y = 100; y < 500; y = y + 50) {
        for (int x = 64; x<= 64 + (100+80)*3; x = x + 180) {
            if (!isSceneButtonEnough) {
                UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
                [btn setFrame:CGRectMake(x, y, 100, 30)];
                sceneButtonNum = sceneButtonNum + 1;
                [btn setTitle:[NSString stringWithFormat:@"按钮%d", sceneButtonNum] forState:UIControlStateNormal];
                [btn setTag:(1000 + sceneButtonNum)];
                [btn addTarget:self action:@selector(sceneButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
                [self.window addSubview:btn];
                
                if (sceneButtonNum == SCENE_BUTTON_COUNT) {
                    isSceneButtonEnough = YES;
                }
            }else {
                break;
            }
        }
    }
    
    
    return YES;
}


// 全部按钮一次只能选择一个，被选择的按钮高亮，其他恢复原来的颜色
- (void)sceneButtonClicked:(id)sender
{
    for (int i = 1; i <= SCENE_BUTTON_COUNT; i++) {
        [[self.window viewWithTag:(1000 + i)] setBackgroundColor:[UIColor clearColor]];
    }
    [(UIButton *)sender setBackgroundColor:[UIColor redColor]];
}

@end
