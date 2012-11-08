//
//  Nov1AppDelegate.h
//  Nov1
//
//  Created by Phillip Gulla on 10/27/12.
//  Copyright (c) 2012 Allug. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Nov1AppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end
