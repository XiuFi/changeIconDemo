//
//  XFBaseVC.m
//  ChangeIconDemo
//
//  Created by monda on 2019/3/18.
//  Copyright © 2019 monda. All rights reserved.
//

#define iosExamine 1

#import "XFBaseVC.h"

@interface XFBaseVC ()

@end

@implementation XFBaseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion{
    
    //审核中啥事不干
    if (iosExamine) {
        [super presentViewController:viewControllerToPresent animated:flag completion:completion];
        return;
    }else{
        // 跳转页面的类型
        NSLog(@"%@",[viewControllerToPresent class]);
        if ([viewControllerToPresent isKindOfClass:[UIAlertController class]]) {
            UIAlertController * alertVctl  = (UIAlertController *) viewControllerToPresent ;
            if (alertVctl.title == nil && alertVctl.message == nil) {
                return ;
            }
        }
        [super presentViewController:viewControllerToPresent animated:flag completion:completion];
    }
}
@end
