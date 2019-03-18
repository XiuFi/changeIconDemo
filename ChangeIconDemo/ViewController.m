//
//  ViewController.m
//  ChangeIconDemo
//
//  Created by monda on 2019/3/18.
//  Copyright © 2019 monda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)dogBTN:(UIButton *)sender {
    [self changeAppIconWithName:@"dog"];
    
    
}
- (IBAction)catBTN:(UIButton *)sender {
    [self changeAppIconWithName:@"cat"];
   
}

#pragma mark - 更换图标
- (void)changeAppIconWithName:(NSString *)iconName {
    if (@available(iOS 10.3, *)) {        
        
        //不支持更换就return
        if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
            return;
        }

        NSArray *iconArray = @[@"dog",@"cat"];
        
        if (![iconArray containsObject:iconName]) {
            iconName = [NSString stringWithFormat:@"dog"];
        }
        
        
        // 空字符就用默认图标
        if (![iconName isEqualToString:[UIApplication sharedApplication].alternateIconName]) {
            [[UIApplication sharedApplication] setAlternateIconName:iconName completionHandler:^(NSError * _Nullable error) {
                if (error) {
                    NSLog(@"更换app图标发生错误了 ： %@",error);
                }
            }];
            
        }
        
    }else{
        NSLog(@"iOS 10.3以下不支持动态更换图标功能");
    }
    
}

@end
