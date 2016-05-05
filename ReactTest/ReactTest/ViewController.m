//
//  ViewController.m
//  ReactTest
//
//  Created by lichuanjun on 16/4/26.
//  Copyright © 2016年 lichuanjun. All rights reserved.
//

#import "ViewController.h"
#import "RCTRootView.h"
#import "Base/RCTLog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *jsCodeLocation;
//    jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
    jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/testjs/04/4.2/index.ios.bundle?platform=ios&dev=true"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                        moduleName:@"ReactTest"
                                                 initialProperties:nil
                                                     launchOptions:nil];
    rootView.frame = [[UIScreen mainScreen]bounds];
    [self.view addSubview:rootView];
    
//    UIButton *searchBtn = [[UIButton alloc]init];
//    searchBtn.frame = CGRectMake(20, 50, 100, 20);
//    searchBtn.backgroundColor = [UIColor colorWithRed:0.000 green:0.569 blue:1.000 alpha:1];
//    [searchBtn setTitle:@"搜索" forState:UIControlStateNormal];
//    //    [searchBtn setTitle:@"搜索" forState:UIControlStateHighlighted];
//    [searchBtn addTarget:self action:@selector(searchTap) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:searchBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - events
-(void) searchTap {
//    NSLog(@"searchTap");
    RCTLog(@"searchTap");
}
@end
