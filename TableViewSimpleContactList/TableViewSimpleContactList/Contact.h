//
//  Contact.h
//  TableViewSimpleContactList
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/6/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject{
    
    NSString *nome;
    NSString *telefone;
}

-(id)initWithNome:(NSString *) nome andTelefone:(NSString *) telefone;


@property (nonatomic, retain) NSString *nome;
@property (nonatomic, retain) NSString *telefone;

@end
