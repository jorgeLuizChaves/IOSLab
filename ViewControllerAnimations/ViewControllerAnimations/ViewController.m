//
//  ViewController.m
//  ViewControllerAnimations
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/1/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "ViewController.h"
#import "OpcoesControllerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dissolver:(id)sender {
    //first parameter don't need to put parameter name
    [self applyTransaction: UIModalTransitionStyleCrossDissolve];
}

- (IBAction)virarPagina:(id)sender {
    [self applyTransaction:UIModalTransitionStyleFlipHorizontal];
}

- (IBAction)subirVertical:(id)sender {
    [self applyTransaction:UIModalTransitionStylePartialCurl];
}

- (IBAction)girarHorizontal:(id)sender {
    [self applyTransaction:UIModalTransitionStyleFlipHorizontal];
    
}

- (void)applyTransaction:(UIModalTransitionStyle) type{
    OpcoesControllerViewController *c = [[OpcoesControllerViewController alloc] init];
    
    c.modalTransitionStyle = type;
    [self presentModalViewController:c animated:true];
    //it's not necessary to free memory ARC is working.
    //[c release];
}
@end
