//
//  ViewController.m
//  lblDemo
//
//  Created by convoytechlabs-mac1 on 13/03/15.
//  Copyright (c) 2015 convoytechlabs-mac1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.lblnname.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tapGesture =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap)];
    [self.lblnname addGestureRecognizer:tapGesture];
    
    self.txtLabel.hidden = YES;
}


-(void)labelTap
{
    self.txtLabel.hidden = NO;
    self.txtLabel.text = self.lblnname.text;
    self.lblnname.hidden = YES;
    [self.txtLabel setKeyboardType:UIKeyboardTypePhonePad];
}


- (IBAction)Ok:(id)sender
{
    self.lblnname.text = self.txtLabel.text;
    
    self.lblnname.hidden = NO;
    self.txtLabel.hidden = YES;
}

//Cpoy,past,select disable code
//            |
//            |
//            |
//- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
//    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//        [[UIMenuController sharedMenuController] setMenuVisible:NO animated:NO];
//    }];
//    return [super canPerformAction:action withSender:sender];
//}
@end



