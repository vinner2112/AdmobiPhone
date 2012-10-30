//
//  AdmobiPhoneAppDelegate.h
//  AdmobiPhone
//
//  Created by Chakra on 13/05/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AdmobiPhoneViewController;

@interface AdmobiPhoneAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AdmobiPhoneViewController *viewController;

@end
