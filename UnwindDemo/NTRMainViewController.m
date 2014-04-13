//
//  NTRViewController.m
//  UnwindDemo
//
//  Created by Natasha Murashev on 4/12/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

#import "NTRMainViewController.h"
#import "NTRModalTableViewController.h"

@interface NTRMainViewController ()

@end

@implementation NTRMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)unwindFromModalViewController:(UIStoryboardSegue *)segue
{
    if ([segue.sourceViewController isKindOfClass:[NTRModalTableViewController class]]) {
        NTRModalTableViewController *modalVC = segue.sourceViewController;
        if (modalVC.selectedColor) {
            self.view.backgroundColor = modalVC.selectedColor;
        }
    }
}


- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
