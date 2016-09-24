//
//  SimpleViewController.m
//  OpenGLTest
//
//  Created by admin on 9/20/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "SimpleViewController.h"

@implementation SimpleViewController

GLfloat rateOfRedIncrease;
GLfloat currentRedLevel;
Boolean isRedIncreasing;

-(void)viewDidLoad
{
    rateOfRedIncrease = rateOfIncrease;
    currentRedLevel = 0.0;
    isRedIncreasing = YES;
    
    GLKView* view = ((GLKView*)self.view);
    view.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    self.preferredFramesPerSecond = 60;
}

-(void)update
{
    [self updateRedLevel];
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    //draw red
    glClearColor(currentRedLevel , 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

-(void)display
{
    //draw red
    glClearColor(1.0 , 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

- (void)updateRedLevel
{
    if(isRedIncreasing)
    {
        //currentRedLevel += (rateOfRedIncrease * controller.timeSinceLastUpdate);
        currentRedLevel += 0.1;
    }
    else
    {
        //currentRedLevel -= (rateOfRedIncrease * controller.timeSinceLastUpdate);
        currentRedLevel -= 0.1;
    }
    
    if(currentRedLevel >= 1.0)
    {
        currentRedLevel = 1.0;
        isRedIncreasing = NO;
    }
    if(currentRedLevel <= 0.0)
    {
        currentRedLevel = 0.0;
        isRedIncreasing = YES;
    }
}

@end
