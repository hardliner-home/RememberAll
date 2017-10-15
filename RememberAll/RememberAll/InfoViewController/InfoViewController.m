//
//  InfoViewController.m
//  RememberAll
//
//  Created by Vladimir Shabanov on 07.10.17.
//  Copyright © 2017 Vladimir Shabanov. All rights reserved.
//

#import "InfoViewController.h"

@implementation UIViewController (InfoViewController)

@end

@implementation InfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
    [webView loadRequest:[NSURLRequest requestWithURL: [NSURL URLWithString:@"www.google.com"]]];
    [self.view addSubview:webView];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
