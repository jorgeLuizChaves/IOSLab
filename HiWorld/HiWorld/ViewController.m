//
//  ViewController.m
//  HiWorld
//
//  Created by Jorge Luiz Chaves de Oliveira on 11/21/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

static int const SHOW_VIEW = 1;
static int const HIDE_VIEW = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnShow:(UIButton *)sender {
    [self hideView: SHOW_VIEW];
}

- (IBAction)btnHide:(id)sender {
    [self hideView: HIDE_VIEW];
}

- (void) hideView:(int) opt{
    [UIView beginAnimations:nil context:nil];
    self.workingView.alpha = opt;
    [UIView commitAnimations];
}
@end
