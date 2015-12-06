//
//  Contact.m
//  TableViewSimpleContactList
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/6/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "Contact.h"

@implementation Contact

@synthesize nome, telefone;

-(id) initWithNome:(NSString *) nomeInicial
       andTelefone:(NSString *) telInicial{
    if ((self = [super init])) {
        self.nome = nomeInicial;
        self.telefone = telInicial;
    }
    return self;
}


-(void) dealloc {
//    ARC WILL DO THE WORK
//    [nome release];
//    [telefone release];
//    [super dealloc];
}



@end
