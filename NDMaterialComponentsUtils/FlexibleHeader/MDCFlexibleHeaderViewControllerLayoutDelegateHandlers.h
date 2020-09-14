//
//  MDCFlexibleHeaderViewControllerLayoutDelegateHandlers.h
//  NDMaterialComponentsUtils
//
//  Created by Nguyen Duc Hiep on 7/8/20.
//  Copyright © 2020 Nguyen Duc Hiep. All rights reserved.
//

#import <MaterialComponents/MaterialFlexibleHeader.h>
#import <NDUtils/NDUtils.h>

NS_ASSUME_NONNULL_BEGIN

@interface MDCFlexibleHeaderViewControllerLayoutDelegateHandlers
    : NDPossession <MDCFlexibleHeaderViewController*>

@property(nonatomic, copy) void (^_Nullable headerViewFrameDidChange)
    (__kindof MDCFlexibleHeaderViewController*);

@end

NS_ASSUME_NONNULL_END
