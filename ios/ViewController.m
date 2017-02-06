//
//  ViewController.m
//  ios
//
//  Created by dukwonnam on 2017. 2. 6..
//  Copyright © 2017년 dukwonnam. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)helloWorldBtn:(id)sender {
//    [helloworldText setText:@"Hell world~~"];
    
    /*******************************************
     * UIAlertView usage    | meaning
     * ---------------------|-------------------
     * initWithTitle        | Popup Title
     * message              | Popup Message
     * delegate             | ??
     * cancelButtonTitle    | Cancel button
     * otherButtonTitles    | additional buttons
     *******************************************/
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello world"
                                                    message:@"Hello message~"
                                                   delegate:nil
                                          cancelButtonTitle:@"cancel Btn"
                                          otherButtonTitles:@"Good", @"No~", nil
                          ];
    alert.show;
}

@end
