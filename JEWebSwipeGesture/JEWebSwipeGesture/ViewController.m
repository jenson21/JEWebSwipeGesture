//
//  ViewController.m
//  JEWebSwipeGesture
//
//  Created by Jenson on 2021/2/21.
//  Copyright © 2021 Jenson. All rights reserved.
//

#import "ViewController.h"
#import "JEWKWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)push:(id)sender {
    [self.navigationController pushViewController:[JEWKWebViewController new] animated:YES];
}

@end
