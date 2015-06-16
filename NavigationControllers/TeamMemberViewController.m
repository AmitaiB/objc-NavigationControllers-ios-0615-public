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

-(TeamMember *)teamMemberForSegueIdentifier:(NSString *)identifier
{
    TeamMember *joe     = [[TeamMember alloc] initWithName:@"Joe" image:[UIImage imageNamed:@"joe.jpg"]];
    TeamMember *chris   = [[TeamMember alloc] initWithName:@"Chris" image:[UIImage imageNamed:@"chris.jpg"]];
    TeamMember *avi     = [[TeamMember alloc] initWithName:@"Avi" image:[UIImage imageNamed:@"avi.jpg"]];
    TeamMember *al      = [[TeamMember alloc] initWithName:@"Al" image:[UIImage imageNamed:@"al.jpg"]];
    
    NSDictionary *teamMembers = @{  @"joe":joe,
                                    @"chris":chris,
                                    @"avi":avi,
                                    @"al":al    };
    
    return teamMembers[identifier];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TeamDetailViewController *destination = segue.destinationViewController;
    TeamMember *tappedTeamMember = [self teamMemberForSegueIdentifier:segue.identifier];
    
    NSLog(@"prepareForSegue from %@", segue.identifier);
    
    destination.teamMember = tappedTeamMember;
}


@end
