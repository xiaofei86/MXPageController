//
//  ViewController.m
//  MXPageControllerDemo
//
//  Created by 徐亚非 on 16/6/12.
//  Copyright © 2015年 maxthon. All rights reserved.
//

#import "ViewController.h"
#import "TabViewController1.h"
#import "TabViewController2.h"
#import "TabViewController3.h"
#import "TabViewController4.h"

@implementation ViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.title = @"MXPageController";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = NO;
    
    TabViewController1 *tabViewController1 = [TabViewController1 new];
    TabViewController2 *tabViewController2 = [TabViewController2 new];
    TabViewController3 *tabViewController3 = [TabViewController3 new];
    TabViewController4 *tabViewController4 = [TabViewController4 new];
    
    tabViewController1.pageBarItem = [[MXPageBarItem alloc] initWithTitle:@"tabViewController1"];
    tabViewController2.pageBarItem = [[MXPageBarItem alloc] initWithTitle:@"viewController2"];
    tabViewController3.pageBarItem = [[MXPageBarItem alloc] initWithTitle:@"controller3"];
    tabViewController4.pageBarItem = [[MXPageBarItem alloc] initWithTitle:@"4"];
    
    tabViewController1.pageBarItem.showBadge = YES;
    tabViewController2.pageBarItem.showBadge = NO;
    tabViewController3.pageBarItem.showBadge = YES;
    tabViewController4.pageBarItem.showBadge = NO;
    
    self.pageBar.tintColor = [UIColor orangeColor];
    
    self.viewControllers = @[tabViewController1, tabViewController2, tabViewController3, tabViewController4];
}

@end
