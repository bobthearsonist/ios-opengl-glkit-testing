//
//  SimpleViewController.h
//  OpenGLTest
//
//  Created by admin on 9/20/16.
//  Copyright © 2016 me. All rights reserved.
//

#import <GLKit/GLKit.h>//gives us the abstracted OpenGL Buffer
#import <QuartzCore/QuartzCore.h>//allows us to update when the screen is refreshed!

GLfloat rateOfIncrease = 1.0;

@interface SimpleViewController : GLKViewController <GLKViewDelegate>
-(void)updateRedLevel;
@end
