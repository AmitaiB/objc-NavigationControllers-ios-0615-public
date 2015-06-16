//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Amitai Blickstein on 6/16/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"


@interface TeamDetailViewController ()

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.teamMember.name;
    self.phoneNumberLabel.text = self.teamMember.phoneNumber;
    self.birthCityAndStateLabel.text = [NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.favoriteBandLabel.text = self.teamMember.favoriteBand;
    self.imageView.image = self.teamMember.image;
    
}

//-(void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
//
//    
//    
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




@end
