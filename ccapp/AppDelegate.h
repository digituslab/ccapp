//
//  AppDelegate.h
//  ccapp
//
//  Created by 渡部由久 on 2018/02/03.
//  Copyright © 2018年 Yoshihisa Watabe. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MainWndCtrl.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
    @property (weak) IBOutlet MainWndCtrl *wndctrl;


@end

