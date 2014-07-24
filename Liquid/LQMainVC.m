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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self disableSlidePanGestureForLeftMenu];
    [self disableSlidePanGestureForRightMenu];
}

-(NSString *)segueIdentifierForIndexPathInLeftMenu:(NSIndexPath *)indexPath
{
    NSString *identifier;
    switch (indexPath.row)
    {
        case 0:
            identifier = @"homeLeftSegue";
            break;
            
        case 1:
            identifier = @"firstLeftSegue";
            break;
            
        case 2:
            identifier = @"secondLeftSegue";
            break;
            
        case 3:
            identifier = @"thirdLeftSegue";
            break;
            
        case 4:
        {
            BOOL isVIP = true;
            if(isVIP)
                identifier = @"fourthLeftSegue";
            break;
        }
    }
    return identifier;
}

-(NSString *)segueIdentifierForIndexPathInRightMenu:(NSIndexPath *)indexPath
{
    NSString *identifier;
    switch (indexPath.row)
    {
        case 0:
            identifier = @"firstRightSegue";
            break;
            
        case 1:
            identifier = @"secondRightSegue";
            break;
    }
    return identifier;
}

-(void)configureLeftMenuButton:(UIButton *)button
{
    CGRect frame = button.frame;
    frame.origin = (CGPoint){0.0f, 0.0f};
    frame.size = (CGSize){30.0f, 30.0f};
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"leftButton"] forState:UIControlStateNormal];
}

-(void)configureRightMenuButton:(UIButton *)button
{
    CGRect frame = button.frame;
    frame.origin = CGPointMake(0.0f, 0.0f);
    frame.size = CGSizeMake(30.0f, 30.0f);
    button.frame = frame;
    
    [button setImage:[UIImage imageNamed:@"rightButton"] forState:UIControlStateNormal];
}

-(AMPrimaryMenu)primaryMenu
{
    return AMPrimaryMenuLeft;
}

@end
