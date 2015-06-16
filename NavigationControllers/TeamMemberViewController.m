//
//  TeamMemberViewController.m
//  NavigationControllers
//
//  Created by Amitai Blickstein on 6/16/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamMemberViewController.h"
#import "TeamDetailViewController.h"
#import "TeamMember.h"

@interface TeamMemberViewController ()

@end

@implementation TeamMemberViewController

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

-(TeamMember *)teamMemberForSegueIdentifier
{
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TeamDetailViewController *destination = segue.destinationViewController;

    
    NSLog(@"Prepare for segue.");
}


@end
