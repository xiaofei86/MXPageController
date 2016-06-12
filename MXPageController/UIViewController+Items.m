//
//  UIViewController+Items.m
//  LPMultiViewControllerDemo
//
//  Created by XuYafei on 15/11/9.
//  Copyright © 2015年 loopeer. All rights reserved.
//

#import "UIViewController+Items.h"
#import <objc/runtime.h>

@implementation UIViewController (Items)

static const void *pageBarItemKey = &pageBarItemKey;
static const void *hPageControllerKey = &hPageControllerKey;
static const void *vPageControllerKey = &vPageControllerKey;

@dynamic pageBarItem;
@dynamic hPageController;

- (LPHPageBarItem *)pageBarItem {
    return objc_getAssociatedObject(self, pageBarItemKey);
}

- (void)setPageBarItem:(LPHPageBarItem *)pageBarItem {
    objc_setAssociatedObject(self, pageBarItemKey, pageBarItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (LPHPageController *)hPageController {
    return objc_getAssociatedObject(self, hPageControllerKey);
}

- (void)setHPageController:(LPHPageController *)hPageController {
    objc_setAssociatedObject(self, hPageControllerKey, hPageController, OBJC_ASSOCIATION_ASSIGN);
}

- (void)pageViewWillAppear:(BOOL)animated {
    
}

- (void)pageViewDidAppear:(BOOL)animated {
    
}

- (void)pageViewWillDisappear:(BOOL)animated {
    
}

- (void)pageViewDidDisappear:(BOOL)animated {
    
}

@end