//
//  NTRModalTableViewController.m
//  UnwindDemo
//
//  Created by Natasha Murashev on 4/12/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

#import "NTRModalTableViewController.h"

@interface NTRModalTableViewController ()

@property (strong, nonatomic) NSArray *colors;

@end

@implementation NTRModalTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.colors count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"colorCell" forIndexPath:indexPath];

    cell.contentView.backgroundColor = self.colors[indexPath.row];
    
    return cell;
}

#pragma mark - Table View Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedColor = self.colors[indexPath.row];
    [self performSegueWithIdentifier:@"colorSelected" sender:self];
}

#pragma mark - Setter / Getter Overrides

- (NSArray *)colors
{
    if (!_colors) {
        self.colors = @[[UIColor blueColor],
                        [UIColor lightGrayColor],
                        [UIColor cyanColor],
                        [UIColor yellowColor],
                        [UIColor magentaColor],
                        [UIColor purpleColor],
                        [UIColor brownColor],
                        [UIColor redColor],
                        [UIColor grayColor],
                        [UIColor whiteColor],
                        [UIColor orangeColor]];
    }
    return _colors;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

@end
