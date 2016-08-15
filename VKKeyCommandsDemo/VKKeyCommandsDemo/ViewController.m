//
//  ViewController.m
//  VKKeyCommandsDemo
//
//  Created by Awhisper on 16/8/12.
//  Copyright © 2016年 baidu. All rights reserved.
//

#import "ViewController.h"
#import "VKKeyCommands.h"
#import "VKShakeCommand.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[VKKeyCommands sharedInstance] registerKeyCommandWithInput:@"x" modifierFlags:UIKeyModifierCommand action:^(UIKeyCommand *command) {
        NSLog(@"11");
    }];
    
    
    
    [[VKShakeCommand sharedInstance]registerShakeCommandWithAction:^{
        
        NSLog(@"11");
    }];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [[VKKeyCommands sharedInstance] unregisterKeyCommandWithInput:@"x" modifierFlags:UIKeyModifierCommand];
        
        [[VKShakeCommand sharedInstance] unregisterKeyShakeCommand];
        
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
