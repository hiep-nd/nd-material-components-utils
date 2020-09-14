//
//  MDCFlexibleHeaderViewController+NDMaterialComponentsUtils.m
//  NDMaterialComponentsUtils
//
//  Created by Nguyen Duc Hiep on 7/8/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDMaterialComponentsUtils/MDCFlexibleHeaderViewController+NDMaterialComponentsUtils.h>

#import <NDMaterialComponentsUtils/MDCFlexibleHeaderViewControllerLayoutDelegateHandlers.h>

#import <NDUtils/NDUtils.h>

using namespace nd::objc;

@implementation MDCFlexibleHeaderViewController (NDMaterialComponentsUtils)

- (MDCFlexibleHeaderViewControllerLayoutDelegateHandlers*)
    nd_layoutDelegateHandlers {
  auto obj = PeekAssociatedObject<
      MDCFlexibleHeaderViewControllerLayoutDelegateHandlers*>(
      self, @selector(nd_layoutDelegateHandlers));
  if (!obj) {
    obj = [[MDCFlexibleHeaderViewControllerLayoutDelegateHandlers alloc]
        initWithOwner:self];
    SetAssociatedObject<OBJC_ASSOCIATION_RETAIN_NONATOMIC>(
        self, @selector(nd_layoutDelegateHandlers), obj);
  }
  return obj;
}

@end
