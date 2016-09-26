//
//  ViewController.m
//  OpenGLTest
//
//  Created by admin on 9/24/16.
//  Copyright © 2016 me. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()
@property UIImagePickerController* cameraView ;
@end

@implementation CameraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self loadCameraView];
}

-(void)viewDidAppear:(BOOL)animated
{
    //this takes the whole view...
    //[self showViewController: cameraView sender:self];
    //I think that this method is frowned upon. Who is the parent Controller? The trees diverge.
    [self.view addSubview: self.cameraView.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadCameraView{
    self.cameraView = [[UIImagePickerController alloc] init];
    self.cameraView.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.cameraView.cameraDevice = UIImagePickerControllerCameraDeviceRear;
    self.cameraView.showsCameraControls = NO;
    self.cameraView.toolbarHidden = YES;
    self.cameraView.navigationBarHidden = YES;
    
    //cameraView.cameraOverlayView = [[UIViewController alloc] initWithNibName:@"CompassOverlay" bundle:nil];
    //OR this for auto layout
    //[cameraView.cameraOverlayView addSubview:_compassOverlayViewController.view];
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
