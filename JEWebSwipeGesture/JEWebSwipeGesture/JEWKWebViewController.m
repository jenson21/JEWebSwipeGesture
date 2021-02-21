//
//  JEWKWebViewController.m
//  JEWebSwipeGesture
//
//  Created by Jenson on 2021/2/21.
//  Copyright © 2021 Jenson. All rights reserved.
//

#import "JEWKWebViewController.h"
#import <WebKit/WebKit.h>
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface JEWKWebViewController ()
@property (nonatomic) WKWebView *webView;
@end

@implementation JEWKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self customLeftButton];
    [self.view addSubview:self.webView];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
    });
}

- (void)customLeftButton{
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(backBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.frame = CGRectMake(0, 0, 60, 40);
    [backBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backBtn];
}

- (void)backBtnClicked:(UIButton *)sender{
    
    if ([self.webView canGoBack]) {
        [self.webView goBack];
        return;
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (WKWebView *)webView{
    if (!_webView) {
        _webView = [[WKWebView alloc] initWithFrame:self.view.bounds configuration:[WKWebViewConfiguration new]];
        _webView.allowsBackForwardNavigationGestures = YES;
    }
    return _webView;
}

@end
