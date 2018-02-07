//
//  MainWndCtrl.m
//  ccapp
//
//  Created by 渡部由久 on 2018/02/05.
//  Copyright © 2018年 Yoshihisa Watabe. All rights reserved.
//

#import "MainWndCtrl.h"

@interface MainWndCtrl ()

@end

@implementation MainWndCtrl

@synthesize expression;

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)initMainWnd:(id)appdel{
    // Sets initial value of editbox to prevent nil at the time of marging new chars into string already stored in editbox.
    self.expression = @"";
    return;
}

- (IBAction)delPressed:(id)sender {
    // Get editbox value as mutable string.
    NSUInteger j;
    NSRange r;
    NSMutableString *ms = [[NSMutableString alloc] init];
    [ms setString:self.expression];
    
    // If length of current stored string is zero, abort this handler.
    j = [ms length];
    if (j <= 0){
        return;
    }
    
    // Make NSRange object to points an end character in string.
    r = NSMakeRange(j - 1,1);
    
    // Delete last one character from string and set it again to editbox.
    [ms deleteCharactersInRange:r];
    [self setValue:ms forKey:@"expression"];
    
}

- (IBAction)goCalcPressed:(id)sender {
    // Starts calculation but currently the code for calculation has not be implemented.
    
    // Get expression from editbox.
    NSString *str = self.expression;
    if([str isEqual:@""] == true){
        // If editbox is empty, shows "No expression" on editbox.
        self.expression = @"No expression";
        return;
    }
    NSLog(@"%@",str);
    return;
}

- (IBAction)allClearPressed:(id)sender {
    self.expression = @"";
}

- (IBAction)tenkeyPressed:(id)sender {
    NSMatrix *m = (NSMatrix *)sender;                       // Get the matrix which is grouping the buttons from the sender object.
    NSString *s = [[m selectedCell] title];                 // Get the title of button selected.
    NSMutableString *ms = [[NSMutableString alloc ] init];  // Make mutable array to modify the string.
    
    // Initializes mutable string with editbox value and append new character.
    [ms setString:self.expression];
    [ms appendString:s];
    
    // Set data appended to editbox again
    [self setValue:ms forKey:@"expression"];
    return;
}
@end
