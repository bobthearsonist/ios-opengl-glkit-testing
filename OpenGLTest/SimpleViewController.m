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
    self.view = [[SimpleView alloc] init];
}

-(void)update
{
    [(SimpleView*)self.view updateRedLevel:self];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    //draw red
    glClearColor(1.0f , 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

@end
