//
//  ViewController.m
//  CHUIKitCategories-Demo
//
//  Created by 张晨晖 on 2018/9/4.
//  Copyright © 2018年 张晨晖. All rights reserved.
//

#import "ViewController.h"
#import "CHUIKitCategories.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.view.backgroundColor = [UIColor redColor];

    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"123" message:@"345" preferredStyle:UIAlertControllerStyleAlert];
            alertController.title = @"345";
        alertController.ch_titleColor = [UIColor redColor];
        alertController.ch_titleFont = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];

        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"123" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

        }];
        [alertController addAction:alertAction];

        [self presentViewController:alertController animated:YES completion:^{

        }];
    });

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    unsigned int a;
    Ivar *ivar = class_copyIvarList([UIAlertAction class], &a);
    for (unsigned int i = 0; i < a; i++) {
        Ivar i_v = ivar[i];
        NSLog(@"name:%@",[NSString stringWithFormat:@"%s", ivar_getName(i_v)]);
        NSLog(@"type:%@",[NSString stringWithFormat:@"%s",ivar_getTypeEncoding(i_v)]);
        printf("\n");
//        printf("name:%s--type%s\n",ivar_getName(i_v),ivar_getTypeEncoding(i_v));
    }
    free(ivar);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
