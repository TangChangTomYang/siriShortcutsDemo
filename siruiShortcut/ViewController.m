//
//  ViewController.m
//  siruiShortcut
//
//  Created by yangrui on 2019/9/3.
//  Copyright © 2019 yangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupIntents];
}
-(void)setupIntents{
    //1. 创建了 NSUserActivity 实例并将我们在 Info.plist 文件中定义的标识符赋值给 activityType
    NSUserActivity *activity = [[NSUserActivity alloc] initWithActivityType:@"initWithActivityType"];
    //2. 定义了 Activity 的标题
    activity.title = @"say Hi";
    // 3. 添加了一个 userInfo 字典。根据 Apple 的说法， userInfo 字典包含了在另一台设备上继续活动所需的与应用程序相关的状态信息。
    activity.userInfo = @{@"speech":@"hi"};
    // 我们设置 .isEligibleForSearch 参数为 true 然后在下一行启用 isEligibleForPrediction。这两个属性允许 iOS 在设备上为我们的 NSUserActivity 提供搜索和建议
    // iOS 9
    activity.eligibleForSearch = YES;
    // iOS 12
    activity.eligibleForPrediction = YES;

    // 此实例用与第一行相同的标识符进行构造。
    activity.persistentIdentifier = @"com.360gobuylight.LETTIN123.SiriShortcuts.sayHi";
    
    // 最后，我们将上面创建的 activity 实例赋值给视图的 userActivity 属性，并调用 becomeCurrent() 方法来激活我们的 Activity
    self.view.userActivity = activity;
    [activity becomeCurrent];
}

-(void)sayHi{
    UIAlertController *alert =  [UIAlertController alertControllerWithTitle:@"Hi There!"
                                        message:@"Hey there! Glad to see you got this working!" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action =  [UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"------------");
    }];
    
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:^{
        
    }];
    
    
    
}


@end
