//
//  CategoryInputViewController.m
//  Grades
//
//  Created by Neeraj Baid on 2/15/13.
//  Copyright (c) 2013 Neeraj Baid. All rights reserved.
//

#import "CategoryInputViewController.h"
#import "GradesMasterViewController.h"

@interface CategoryInputViewController ()

@end

@implementation CategoryInputViewController

//@synthesize categoryInformationDestination = _categoryInformationDestination;

- (id)initWithDelegate:(id <CategoryInformationDestination>)delegate
{
    self = [super initWithNibName:@"CategoryInputViewController" bundle:nil];
    if (self)
    {
        _categoryInformationDestination = delegate;
    }
    return self;
}

- (IBAction)done:(id)sender
{
//    if (!_categoryInformationDestination)
//        _categoryInformationDestination = [[GradesMasterViewController alloc] init];
    
    if ([_categoryInformationDestination respondsToSelector:@selector(saveInfoWithName:withWeight:withGrade:)])
        [_categoryInformationDestination saveInfoWithName:@"Neeraj" withWeight:100 withGrade:100];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
