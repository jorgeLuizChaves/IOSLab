//
//  ViewController.h
//  HiWorld
//
//  Created by Jorge Luiz Chaves de Oliveira on 11/21/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)btnShow:(UIButton *)sender;
- (IBAction)btnHide:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *workingView;

@end

