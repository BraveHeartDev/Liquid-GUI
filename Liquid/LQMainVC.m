//
//  LQMainVC.m
//  Liquid
//
//  Created by Brave Heart on 7/21/14.
//  Copyright (c) 2014 iOSCheaters. All rights reserved.
//

#import "LQMainVC.h"

@interface LQMainVC ()

@end

@implementation LQMainVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self disableSlidePanGestureForLeftMenu];
    [self disableSlidePanGestureForRightMenu];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSString *)segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
            return @"homeLeftSegue";
            
        case 1:
            return @"firstLeftSegue";
            
        case 2:
            return @"secondLeftSegue";
            
        case 3:
            return @"thirdLeftSegue";
            
        case 4:
            return @"fourthLeftSegue";
            
        default:
            return nil;
    }
}

-(NSString *)segueIdentifierForIndexPathInRightMenu:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
            return @"firstRightSegue";
            
        case 1:
            return @"secondRightSegue";
            
        default:
            return nil;
    }
}

- (CGFloat)leftMenuWidth
{
    return 90;
}

- (CGFloat)rightMenuWidth
{
    return 90;
}

-(void)configureLeftMenuButton:(UIButton *)button
{
    CGRect frame = button.frame;
    frame.origin = CGPointMake(0.0f, 0.0f);
    frame.size = CGSizeMake(40.0f, 40.0f);
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"leftButton"] forState:UIControlStateNormal];
}

-(void)configureRightMenuButton:(UIButton *)button
{
    CGRect frame = button.frame;
    frame.origin = CGPointMake(0.0f, 0.0f);
    frame.size = CGSizeMake(40.0f, 40.0f);
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"rightButton"] forState:UIControlStateNormal];
}

@end
