//
//  MainWndCtrl.h
//  ccapp
//
//  Created by 渡部由久 on 2018/02/05.
//  Copyright © 2018年 Yoshihisa Watabe. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MainWndCtrl : NSWindowController
{
    NSString *expression;
}
    @property (weak) IBOutlet NSTextField *editBox;
    @property (weak) IBOutlet NSMatrix *btnmtx;
    @property (readwrite,copy) NSString *expression;
    - (IBAction)tenkeyPressed:(id)sender;
    - (void)initMainWnd:(id)appdel;
    - (IBAction)delPressed:(id)sender;
    - (IBAction)goCalcPressed:(id)sender;
    - (IBAction)allClearPressed:(id)sender;

@end
