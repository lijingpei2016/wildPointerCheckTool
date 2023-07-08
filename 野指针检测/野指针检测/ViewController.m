//
//  ViewController.m
//  野指针检测
//
//  Created by LJP on 2023/7/8.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"开始");

    UIView *testObj = [[UIView alloc] init];
    [testObj release];
    for (int i = 0; i < 10; i++) {
        UIView *testView = [[UIView alloc] init];
        [self.view addSubview:testView];
    }
    [testObj setNeedsLayout];

    NSLog(@"结束");
}

@end
