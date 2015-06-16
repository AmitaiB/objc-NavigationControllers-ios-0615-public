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
    TeamMember *joe = [[TeamMember alloc] initWithName:@"Joe" phoneNumber:@"8675309" birthCity:@"Nashville" birthState:@"TN" favoriteBand:@"Arrested Development" image:[UIImage imageNamed:@"joe.jpg"]];
    TeamMember *chris = [[TeamMember alloc] initWithName:@"Chris" phoneNumber:@"2121234567" birthCity:@"New York" birthState:@"NY" favoriteBand:@"Red Hot Chili Peppers" image:[UIImage imageNamed:@"chris.jpg"]];
    TeamMember *avi = [[TeamMember alloc] initWithName:@"Avi" phoneNumber:@"7185550000" birthCity:@"Riverdale" birthState:@"NY" favoriteBand:@"The Offspring" image:[UIImage imageNamed:@"avi.jpg"]];
    TeamMember *al = [[TeamMember alloc] initWithName:@"Al" phoneNumber:@"5551212" birthCity:@"Detroit" birthState:@"MI" favoriteBand:@"The Beatles" image:[UIImage imageNamed:@"al.jpg"]];
    
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
