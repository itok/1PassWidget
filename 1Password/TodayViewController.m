//
//  TodayViewController.m
//  1Password
//
//  Created by itok on 2014/10/08.
//  Copyright (c) 2014年 itok. All rights reserved.
//

#import "TodayViewController.h"
#import <NotificationCenter/NotificationCenter.h>

@interface TodayViewController () <NCWidgetProviding>

@end

@implementation TodayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.preferredContentSize = CGSizeMake(0, 40);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)widgetPerformUpdateWithCompletionHandler:(void (^)(NCUpdateResult))completionHandler {
    completionHandler(NCUpdateResultNoData);
}

- (IBAction)launch:(id)sender
{
	[self.extensionContext openURL:[NSURL URLWithString:@"onepassword4://"] completionHandler:nil];
}

@end
