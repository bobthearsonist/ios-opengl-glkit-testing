//
//  ViewController.m
//  OpenGLTest
//
//  Created by admin on 9/24/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()
@end

@implementation CameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    SimpleViewController* childViewController;
    childViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Simple View Controller"];
    //[childViewController.view setFrame:CGRectMake(0.0f, 0.0f, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self addChildViewController:childViewController];
    [childViewController didMoveToParentViewController:self];
    [self.view addSubview:childViewController.view];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [self loadCameraView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadCameraView{
    UIImagePickerController* cameraView = [[UIImagePickerController alloc] init];
    cameraView.sourceType = UIImagePickerControllerSourceTypeCamera;
    cameraView.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    cameraView.showsCameraControls = NO;
    cameraView.toolbarHidden = YES;
    cameraView.navigationBarHidden = YES;
    
    //cameraView.cameraOverlayView = [[UIViewController alloc] initWithNibName:@"CompassOverlay" bundle:nil];
    //OR this for auto layout
    //[cameraView.cameraOverlayView addSubview:_compassOverlayViewController.view];
    
    [self presentViewController:cameraView animated:NO completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
