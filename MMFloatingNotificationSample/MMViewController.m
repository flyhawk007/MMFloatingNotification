//
//  MMViewController.m
//  MMFloatingNotificationSample
//
//  Created by Yichao Peak ji on 12-2-23.
//  Copyright (c) 2012 PeakJi. All rights reserved.
//

#import "MMViewController.h"

@implementation MMViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MMFloatingNotification * floatingNotification=[[MMFloatingNotification alloc] initWithTitle:@"Hello World!"];
    
    [floatingNotification render];
    
    floatingNotification.image=[[UIImage alloc] init];
    
    [self.view addSubview:floatingNotification];
    
    int max_width=320;
    int max_height=480;
    
    [floatingNotification startAnimationCycleFromFrame:CGRectMake(max_width/2-[floatingNotification getDefaultSizeInScale:0.7].width/2,-10,[floatingNotification getDefaultSizeInScale:0.7].width, [floatingNotification getDefaultSizeInScale:0.7].height) throughKeyFrame:CGRectMake((max_width-[floatingNotification getDefaultSizeInScale:1.0].width)/2, max_height/2-60, [floatingNotification getDefaultSizeInScale:1.0].width, [floatingNotification getDefaultSizeInScale:1.0].height) toDestinationFrame:CGRectMake((max_width-[floatingNotification getDefaultSizeInScale:0.2].width)/2, max_height-20,[floatingNotification getDefaultSizeInScale:0.2].width, [floatingNotification getDefaultSizeInScale:0.2].height)];
    floatingNotification=nil;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
