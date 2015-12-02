//
//  ViewController.m
//  cadastroEmpresas
//
//  Created by Jorge Luiz Chaves de Oliveira on 11/23/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "ViewController.h"
#import "Company.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    catalogo = [[NSMutableArray alloc] init];
    self.msgRegister.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addRemoveEmployess:(id)sender {
    
    UIStepper *addRmvEmployess = (UIStepper *) sender;
    NSString *msg = [NSString stringWithFormat:@"%d", (int) addRmvEmployess.value];
    self.fiedQuantiyEmployees.text = msg;
}

- (IBAction)saveCompany:(id)sender {
    NSLog(@"save a new company");
    Company *newCompany = [[Company alloc] init];
    newCompany.companyName = self.fieldCompanyName.text;
    newCompany.quantityOfEmployess = [self.fiedQuantiyEmployees.text intValue];
    NSLog(@"company created with name=%@ and with %d employees",newCompany.companyName, newCompany.quantityOfEmployess);

    [self saveCompanyInAList:newCompany];
    [self listAllCompanies];
    //not availabe at ARC - Automatic Reference Count.
    //[newCompany release];
    [self animateLabel];
    
}

- (void) animateLabel{
    self.msgRegister.alpha = 0;
    
    [UIView animateWithDuration:1 animations:^{
        self.msgRegister.hidden = NO;
        self.msgRegister.alpha = 1;
    } completion:^(BOOL finalizado) {
        [UIView animateWithDuration:1 delay:2 options:0 animations:^{
            self.msgRegister.alpha = 0;
        } completion:^(BOOL finalizado) {
            self.msgRegister.hidden = YES;
        }];
    }];
}

- (void) saveCompanyInAList:(Company*) newCompany{
    [catalogo addObject: newCompany];
}

- (void) listAllCompanies{
    
    for (Company *company in catalogo) {
        NSLog(@"company %@", company.companyName);
    }
}
@end
