//
//  GradesMasterViewController.h
//  Grades
//
//  Created by Neeraj Baid on 2/15/13.
//  Copyright (c) 2013 Neeraj Baid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryInputViewController.h"

@interface GradesMasterViewController : UITableViewController <CategoryInformationDestination>

-(void)saveInfoWithName:(NSString *)categoryName withWeight:(double)weight withGrade:(double)grade;

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@end
