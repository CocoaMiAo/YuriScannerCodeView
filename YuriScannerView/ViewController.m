//
//  ViewController.m
//  YuriScannerView
//
//  Created by 张晓飞 on 16/3/12.
//  Copyright © 2016年 张晓飞. All rights reserved.
//

#import "ViewController.h"
#import "YuriCodeScanView.h"
#import "YuriCreateCodeImage.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *codeImage;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
   
    [self createCodeImage];
}

- (void)scanView {
    YuriCodeScanView *scanView = [YuriCodeScanView scanView];
    [self.view addSubview:scanView];
    scanView.autoRemoveScanView = YES;
    [scanView beginScanning];
    [scanView outputResultString:^(NSString *result) {
        NSLog(@"%@",result);
    }];
}

- (void)createCodeImage {
    //用于生成二维码的字符串source
    NSString *source = @"https://github.com/KenmuHuang";
    CIImage *image= [YuriCreateCodeImage createCodeImage:source];

    UIImage *fitImage = [YuriCreateCodeImage reSizeCodeImage:image                                                    withSize:200.f];

    fitImage = [YuriCreateCodeImage resetColorImage:fitImage withRed:33.0 green:114.0 blue:237.0]; //0~255
    
    self.codeImage.image = fitImage;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
