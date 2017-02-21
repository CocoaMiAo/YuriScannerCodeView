YuriScannerView介绍
=====
YuriScannerView 使用的是iOS原生系统的二维码扫描功能，使用方便。

#### 使用方法
1.不设置frame初始化
```Objective-c
    YuriCodeScanView *scanView = [YuriCodeScanView scanView];
    [self.view addSubview:scanView];
```
2.自定义frame
```Objective-c
     YuriCodeScanView *scanView = [YuriCodeScanView scanViewWithFrame:self.view.frame];
    [self.view addSubview:scanView];
```
3.开始扫描
```Objective-c
    [scanView beginScanning];
```
4.回调方法Block
```Objective-c
    [scanView outputResultString:^(NSString *result) {
        NSLog(@"%@",result);
    }];
```
5.扫描完成后是否需要自动移除YuriCodeScanView
```Objective-c
    scanView.autoRemoveScanView = YES;
```
>* **autoRemoveScanView** 设置为**YES** 扫描完成后会自动移除**YuriCodeScanView** 
>* **autoRemoveScanView** 设置为**No** 或者 默认不设置，扫描完成后续手动调用**-(void) hidScanView;** 方法
```Objective-c
    [scanView hidScanView];
```
  
