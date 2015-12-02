//
//  OpcoesControllerViewController.m
//  ViewControllerAnimations
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/1/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "OpcoesControllerViewController.h"

@interface OpcoesControllerViewController ()

@end

@implementation OpcoesControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

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

- (IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:true completion:nil];
}
@end
