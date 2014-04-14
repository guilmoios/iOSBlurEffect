//
//  ViewController.m
//  BlurEffect
//
//  Created by Bruno Guidolim on 4/10/14.
//  Copyright (c) 2014 Bruno Guidolim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Adding an image as background
    UIImageView *myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MyImage"]];
    [self.view addSubview:myImageView];
    
    //Adding an scrollview to see the blur effect
    CGRect myRect = [UIScreen mainScreen].bounds;
    UIScrollView *myScrollView = [[UIScrollView alloc] initWithFrame:myRect];
    myScrollView.contentSize = CGSizeMake(CGRectGetWidth(myRect), 2*CGRectGetHeight(myRect));
    [self.view addSubview:myScrollView];
    
    //Adding a view with blur effect
    UIToolbar *blurView = [[UIToolbar alloc] initWithFrame:CGRectMake(0, myRect.size.height, myRect.size.width, myRect.size.height)];
    blurView.barStyle = UIBarStyleBlackTranslucent; //The Secret
    [myScrollView addSubview:blurView];
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, 320, 44)];
    myLabel.text            = @"Scroll to up";
    myLabel.textAlignment   = NSTextAlignmentCenter;
    myLabel.font            = [UIFont systemFontOfSize:30.0f];
    myLabel.textColor       = [UIColor whiteColor];
    [myScrollView addSubview:myLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
