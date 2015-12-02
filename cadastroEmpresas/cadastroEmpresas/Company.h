//
//  Company.h
//  cadastroEmpresas
//
//  Created by Jorge Luiz Chaves de Oliveira on 11/23/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject{
    //PRIVATE VARIABLES
    NSString *companyName;
    int quantityOfEmployees;
}

//MAKE VARIABLES PUBLIC TO BE ACCESSED THROUGHT THE PROJECT.
@property (nonatomic, retain) NSString *companyName;
@property (nonatomic, assign) int quantityOfEmployess;

@end
