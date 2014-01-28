//
//  FlipsideViewController.h
//  IS-prac17
//
//  Created by Chida Mitsuhiro on 14/01/28.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *messageTo1;
@property (strong, nonatomic) IBOutlet UILabel *messageFrom1;

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
