//
//  MDCFlexibleHeaderViewControllerLayoutDelegateHandlers.mm
//  NDMaterialComponentsUtils
//
//  Created by Nguyen Duc Hiep on 7/8/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <NDMaterialComponentsUtils/MDCFlexibleHeaderViewControllerLayoutDelegateHandlers.h>

#import <NDLog/NDLog.h>
#import <NDUtils/NDUtils.h>

@interface MDCFlexibleHeaderViewControllerLayoutDelegateHandlers () <
    MDCFlexibleHeaderViewLayoutDelegate>
@end

@implementation MDCFlexibleHeaderViewControllerLayoutDelegateHandlers

- (instancetype)initWithOwner:(MDCFlexibleHeaderViewController*)owner {
  self = [super initWithOwner:owner];
  if (self) {
    owner.layoutDelegate = self;
  }
  return self;
}

- (void)flexibleHeaderViewController:(nonnull MDCFlexibleHeaderViewController*)
                                         flexibleHeaderViewController
    flexibleHeaderViewFrameDidChange:
        (nonnull MDCFlexibleHeaderView*)flexibleHeaderView {
  if (ROwner(self) != flexibleHeaderViewController ||
      ROwner(self).headerView != flexibleHeaderView) {
    NDAssertionFailure(@"Misused of '%@' as '%@' layoutDelegate.", self,
                       flexibleHeaderViewController);
  } else {
    NDCallIfCan(self.headerViewFrameDidChange, ROwner(self));
  }
}

NDPossession_ROwner_Default_Impl(MDCFlexibleHeaderViewController*);

@end
