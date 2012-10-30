//
//  AdmobiPhoneViewController.m
//  AdmobiPhone
//
//  Created by Chakra on 13/05/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import "AdmobiPhoneViewController.h"

#define AdMob_ID @"a14dccd0fb24d45" // You can get this id from www.admob.com. This is Publisher ID



@implementation AdmobiPhoneViewController

- (void)dealloc
{
    AbMob.delegate = nil;
    [AbMob release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
      AbMob = [[GADBannerView alloc]
                   initWithFrame:CGRectMake(0.0,
                                            self.view.frame.size.height -
                                            GAD_SIZE_320x50.height,
                                            GAD_SIZE_320x50.width,
                                            GAD_SIZE_320x50.height)];
    
     AbMob.adUnitID = AdMob_ID;
     AbMob.rootViewController = self;
    [self.view addSubview:AbMob];
   
     
       GADRequest *r = [[GADRequest alloc] init];
    r.testing = YES;
    [AbMob loadRequest:r];
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
