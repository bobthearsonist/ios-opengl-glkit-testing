//
//  SimpleViewController.m
//  OpenGLTest
//
//  Created by admin on 9/20/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "SimpleViewController.h"

@implementation SimpleViewController

-(void)viewDidLoad
{
    self.preferredFramesPerSecond = 60;
}

-(void)update
{
    [(SimpleView*)self.view updateRedLevel:self];
}

@end
