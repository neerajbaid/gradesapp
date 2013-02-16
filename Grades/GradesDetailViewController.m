//
//  GradesDetailViewController.m
//  Grades
//
//  Created by Neeraj Baid on 2/15/13.
//  Copyright (c) 2013 Neeraj Baid. All rights reserved.
//

#import "GradesDetailViewController.h"

@interface GradesDetailViewController ()
- (void)configureView;
@end

@implementation GradesDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
