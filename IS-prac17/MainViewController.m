//
//  MainViewController.m
//  IS-prac17
//
//  Created by Chida Mitsuhiro on 14/01/28.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    _messageFrom2.text = controller.messageTo1.text;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        NSLog(@"%@",((FlipsideViewController *)[segue destinationViewController]).messageFrom1);
        ((FlipsideViewController *)[segue destinationViewController]).messageFrom1.text = _messageTo2.text;
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
