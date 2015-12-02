//
//  RootController2.m
//  NavigationControllerDemo
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/2/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "RootController2.h"
#import "AdicionarController.h"
#import "ConfguracoesController.h"

@interface RootController2 ()

@end

@implementation RootController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Root controller 2";

}

-(void) viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
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

- (IBAction)abrirAdd:(id)sender {
    AdicionarController *a = [[AdicionarController alloc] init];
    [self.navigationController pushViewController:a animated:YES];

}

- (IBAction)abrirConf:(id)sender {
    ConfguracoesController *config = [[ConfguracoesController alloc] init];
    
    [self.navigationController pushViewController:config animated:YES];
    
}
@end
