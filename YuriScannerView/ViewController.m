//
//  ViewController.m
//  YuriScannerView
//
//  Created by 张晓飞 on 16/3/12.
//  Copyright © 2016年 张晓飞. All rights reserved.
//

#import "ViewController.h"
#import "YuriCodeScanView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    YuriCodeScanView *scanView = [YuriCodeScanView scanView];
    [self.view addSubview:scanView];
    scanView.autoRemoveScanView = YES;
    [scanView beginScanning];
    [scanView outputResultString:^(NSString *result) {
        NSLog(@"%@",result);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
