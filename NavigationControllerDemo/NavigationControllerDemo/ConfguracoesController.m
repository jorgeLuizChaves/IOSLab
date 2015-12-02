//
//  ConfguracoesController.m
//  NavigationControllerDemo
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/2/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "ConfguracoesController.h"
#import "DadosAcessoController.h"

@interface ConfguracoesController ()

@end

@implementation ConfguracoesController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void) viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
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

- (IBAction)openAccessData:(id)sender {
    DadosAcessoController *d = [[DadosAcessoController alloc] init];
    [self.navigationController pushViewController:d animated:YES];
}
@end
