//
//  CDBViewController.m
//  CDBCheckboxView
//
//  Created by yocaminobien on 01/23/2016.
//  Copyright (c) 2016 yocaminobien. All rights reserved.
//

#import "CDBViewController.h"
@import CDBCheckboxView;


@interface CDBViewController ()

@end

@implementation CDBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CDBCheckboxView * view = [CDBCheckboxView checkboxViewWithText:@"check me"
                                                           checked:YES
                                                      onUserChange:^(BOOL checked) {
        NSLog(@"Checkbox changed state to %@", checked ? @"checked" : @"unchecked");
    }];
    view.textLabel.font = [UIFont systemFontOfSize:20];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    NSArray * constraints =
        [NSLayoutConstraint constraintsWithVisualFormat:@"|-(16.0)-[view(260.0)]-(>=16.0)-|"
                                                options:0
                                                metrics:nil
                                                  views:NSDictionaryOfVariableBindings(view)];
    
    [self.view addConstraints:constraints];
    NSArray * verticalConstraints =
        [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-(40.0)-[view(50.0)]-(>=16.0)-|"
                                                options:0
                                                metrics:nil
                                                  views:NSDictionaryOfVariableBindings(view)];
    
    [self.view addConstraints:verticalConstraints];

    [self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
