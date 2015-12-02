//
//  ViewController.h
//  cadastroEmpresas
//
//  Created by Jorge Luiz Chaves de Oliveira on 11/23/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    //PRIVATE FIELD
    NSMutableArray *catalogo;
}
@property (weak, nonatomic) IBOutlet UITextField *fieldCompanyName;
@property (weak, nonatomic) IBOutlet UITextField *fiedQuantiyEmployees;
- (IBAction)addRemoveEmployess:(id)sender;
- (IBAction)saveCompany:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *msgRegister;


@end

