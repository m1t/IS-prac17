//
//  MainViewController.h
//  IS-prac17
//
//  Created by Chida Mitsuhiro on 14/01/28.
//  Copyright (c) 2014年 Chida Mitsuhiro. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *messageTo2;
@property (strong, nonatomic) IBOutlet UILabel *messageFrom2;

@end
