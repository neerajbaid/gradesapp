//
//  CategoryInputViewController.h
//  Grades
//
//  Created by Neeraj Baid on 2/15/13.
//  Copyright (c) 2013 Neeraj Baid. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CategoryInformationDestination <NSObject>

-(void)saveInfoWithName:(NSString *)categoryName
             withWeight:(double)weight
              withGrade:(double)grade;

@end

@interface CategoryInputViewController : UIViewController

@property (nonatomic, weak) id <CategoryInformationDestination> categoryInformationDestination;

- (id)initWithDelegate:(id <CategoryInformationDestination>)delegate;

@end
