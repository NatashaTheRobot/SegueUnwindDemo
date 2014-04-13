//
//  NTRViewController.m
//  UnwindDemo
//
//  Created by Natasha Murashev on 4/12/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

#import "NTRMainViewController.h"
#import "NTRColorsTableViewController.h"

@interface NTRMainViewController ()

@end

@implementation NTRMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)unwindFromModalViewController:(UIStoryboardSegue *)segue
{
    if ([segue.sourceViewController isKindOfClass:[NTRColorsTableViewController class]]) {
        NTRColorsTableViewController *colorsViewConroller = segue.sourceViewController;
        if (colorsViewConroller.selectedColor) {
            self.view.backgroundColor = colorsViewConroller.selectedColor;
        }
    }
}


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
