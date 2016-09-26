//
//  SimpleViewController.m
//  OpenGLTest
//
//  Created by admin on 9/20/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "SimpleViewController.h"

static GLfloat rateOfIncrease = 1.0;

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

-(void)didMoveToParentViewController:(UIViewController *)parent
{
    [super didMoveToParentViewController:parent];
}

#pragma mark GLKit overides
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

- (void)updateRedLevel
{
    if(isRedIncreasing)
    {
        currentRedLevel += (rateOfRedIncrease * self.timeSinceLastUpdate);
    }
    else
    {
        currentRedLevel -= (rateOfRedIncrease * self.timeSinceLastUpdate);
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
