//
//  ViewController.m
//  OpenGLTest
//
//  Created by admin on 9/18/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong,nonatomic) UIViewController* simpleViewController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //create a simpleView and give it control
    self.simpleViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Simple View Controller"];
    [self addChildViewController:self.simpleViewController];
    self.simpleViewController.view.frame = self.view.frame;

    [self addChildViewController:self.simpleViewController];
    [self.simpleViewController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
