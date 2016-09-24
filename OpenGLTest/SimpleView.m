//
//  SimpleView.m
//  OpenGLTest
//
//  Created by admin on 9/20/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "SimpleView.h"

GLfloat rateOfIncrease = 1.0;

@implementation SimpleView

GLfloat rateOfRedIncrease;
GLfloat currentRedLevel;
Boolean isRedIncreasing;

-(id)init
{
    self = [super init];
    
    if(self == nil) @throw NSGenericException;

    rateOfRedIncrease = rateOfIncrease;
    currentRedLevel = 0.0;
    isRedIncreasing = YES;
    
    self.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    return self;
}

- (void)updateRedLevel: (GLKViewController*)controller
{
    if(isRedIncreasing)
    {
        currentRedLevel += (rateOfRedIncrease * controller.timeSinceLastUpdate);
    }
    else
    {
        currentRedLevel -= (rateOfRedIncrease * controller.timeSinceLastUpdate);
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

-(void)display
{
    //draw red
    glClearColor(currentRedLevel , 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    //draw red
    glClearColor(currentRedLevel , 0.0f, 0.0f, 0.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

@end
