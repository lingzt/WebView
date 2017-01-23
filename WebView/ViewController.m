//
//  ViewController.m
//  WebView
//
//  Created by ling toby on 1/22/17.
//  Copyright (c) 2017 ling toby. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //set up url  创建WKWebView
    NSURL *url = [NSURL URLWithString:@"https://google.com"];
    //set request 根据URL创建请求
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    self.title = @"customized title here";
    //init webview 创建WKWebView
    self.webView = [[WKWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    //load request  WKWebView加载请求
    [self.webView loadRequest:request];
    //add webview to view 将WKWebView添加到视图
    [self.view addSubview:self.webView];

    [self.webView evaluateJavaScript:@"showAlert('奏是一个弹框')" completionHandler:^(id item, NSError * _Nullable error) {
        // Block中处理是否通过了或者执行JS错误的代码
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - WKUIDelegate
// create a new WebView
- (WKWebView *)webView:(WKWebView *)webView createWebViewWithConfiguration:(WKWebViewConfiguration *)configuration forNavigationAction:(WKNavigationAction *)navigationAction windowFeatures:(WKWindowFeatures *)windowFeatures{
    return webView;
}




@end