//
//  AppDelegate.m
//  ccapp
//
//  Created by 渡部由久 on 2018/02/03.
//  Copyright © 2018年 Yoshihisa Watabe. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [_wndctrl initMainWnd:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
