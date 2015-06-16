//
//  TeamDetailViewController.h
//  NavigationControllers
//
//  Created by Amitai Blickstein on 6/16/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeamMember.h"

@interface TeamDetailViewController : UIViewController
@property (nonatomic, weak) TeamMember *teamMember;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthCityAndStateLabel;
@property (weak, nonatomic) IBOutlet UILabel *favoriteBandLabel;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
