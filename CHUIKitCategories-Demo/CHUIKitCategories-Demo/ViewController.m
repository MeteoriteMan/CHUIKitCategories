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

@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.view.backgroundColor = [UIColor redColor];

//    dispatch_async(dispatch_get_main_queue(), ^{
//        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"123" message:@"345" preferredStyle:UIAlertControllerStyleAlert];
//            alertController.title = @"345";
//        alertController.ch_titleColor = [UIColor redColor];
//        alertController.ch_titleFont = [UIFont systemFontOfSize:20 weight:UIFontWeightMedium];
//
//        NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"呵呵哒" attributes:@{}];
//        [alertController setValue:string forKey:@"attributedDetailMessage"];
//
//        UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"123" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//
//        }];
//        alertAction.ch_titleColor = [UIColor greenColor];
//        alertAction.ch_titleTextAlignment = NSTextAlignmentLeft;
//        alertAction.ch_image = [[UIImage imageNamed:@"电脑"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];;
//        [alertController addAction:alertAction];
//
//        [self presentViewController:alertController animated:YES completion:^{
//
//        }];
//    });

    self.textView.ch_placeholderText = @"这是占位文字";
//    if (@available(iOS 11.0, *)) {
//        [UICollectionView appearance].contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    } else {
//        // Fallback on earlier versions
//    }

    UISearchBar *searchBar = [[UISearchBar alloc] init];
    searchBar.showsCancelButton = YES;
    searchBar.ch_searchField.placeholder = @"12313132";
    [searchBar.ch_cancelButton setTitle:@"我要取消" forState:UIControlStateNormal];
//    UIView *ch_background = searchBar.ch_background;
    searchBar.showsScopeBar = YES;
    self.navigationItem.titleView = searchBar;

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    Class class = [UIProgressView class];

    unsigned int a;
    Ivar *ivar = class_copyIvarList(class, &a);
    for (unsigned int i = 0; i < a; i++) {
        Ivar i_v = ivar[i];
        NSLog(@"name:%@",[NSString stringWithFormat:@"%s", ivar_getName(i_v)]);
        NSLog(@"type:%@",[NSString stringWithFormat:@"%s", ivar_getTypeEncoding(i_v)]);
        printf("\n");
//        printf("name:%s--type%s\n",ivar_getName(i_v),ivar_getTypeEncoding(i_v));
    }
    free(ivar);

    printf("~~~~~~~~~~\n");

    unsigned int m;
    Method *method = class_copyMethodList(class, &m);
    for (unsigned int i = 0; i < m; i++) {
        Method m_e = method[i];
        NSLog(@"methodName:%@",[NSString stringWithFormat:@"%s", sel_getName(method_getName(m_e))]);
        printf("\n");
    }
    free(method);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
