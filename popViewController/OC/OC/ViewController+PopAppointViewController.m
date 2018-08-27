//
//  ViewController+PopAppointViewController.m
//  OC
//
//  Created by helios on 2018/8/27.
//  Copyright © 2018年 helios. All rights reserved.
//

#import "ViewController+PopAppointViewController.h"

@implementation ViewController (PopAppointViewController)
- (void)backToController:(NSString *)controllerClassName animated:(BOOL)animated {
    if (self.navigationController) {
        NSArray *controllers = self.navigationController.viewControllers;
        /*
         * filteredArrayUsingPredicate 使用evaluatedObject过滤数组
         **/
        NSArray *res = [controllers filteredArrayUsingPredicate:[NSPredicate predicateWithBlock:^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings) {
            return [evaluatedObject isKindOfClass:NSClassFromString(controllerClassName)];
        }]];
        if (res.count > 0) {
            [self.navigationController popToViewController:res[0] animated:animated];
        }
    }
}
@end
