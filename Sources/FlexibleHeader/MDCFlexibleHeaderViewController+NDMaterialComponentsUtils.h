//
//  MDCFlexibleHeaderViewController+NDMaterialComponentsUtils.h
//  NDMaterialComponentsUtils
//
//  Created by Nguyen Duc Hiep on 7/8/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <MaterialComponents/MaterialFlexibleHeader.h>

NS_ASSUME_NONNULL_BEGIN

@class MDCFlexibleHeaderViewControllerLayoutDelegateHandlers;

@interface MDCFlexibleHeaderViewController (NDMaterialComponentsUtils)

/// A call to getter can make layoutDelegate change to this property.
@property(nonatomic, strong, readonly)
    MDCFlexibleHeaderViewControllerLayoutDelegateHandlers*
        nd_layoutDelegateHandlers;

@end

NS_ASSUME_NONNULL_END
