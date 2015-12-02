//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/2/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "RootController.h"
#import "AdicionarController.h"

@interface RootController ()

@end

@implementation RootController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)abrirAdicionar:(id)sender {

    AdicionarController *a = [[AdicionarController alloc] init];
    [self.navigationController pushViewController:a animated:YES];
    
}

- (IBAction)abrirConf:(id)sender {
}
@end
