//
//  ViewController.m
//  TableViewSimpleContactList
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/6/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import "ViewController.h"
#import "Contact.h"

@interface ViewController ()

    -(void) loadContacts;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self loadContacts];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadContacts{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"contacts" ofType: @"plist"];
    
    NSDictionary *pl = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSArray *arrayData = [pl objectForKey:@"contacts"];
    
    contacts = [[NSMutableArray alloc] init];
    
    for (NSDictionary *contact in arrayData) {
        NSString *nome = [contact objectForKey:@"nome"];
        NSString *tel = [contact objectForKey:@"telefone"];
        
        Contact *c = [[Contact alloc] initWithNome:nome andTelefone:tel];
        [contacts addObject:c];
        
//        [c release];
        
    }
}


    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCellStyleDefault, UITableViewCellStyleSubtitle, UITableViewCellStyleValue1, UITableViewCellStyleValue2
    UITableViewCellStyle cellStyle = UITableViewCellStyleValue2;
    
    static NSString *CelulaContatoCacheID = @"CelulaContatoCacheID";
    UITableViewCell *cell = [self.tableContacts dequeueReusableCellWithIdentifier:CelulaContatoCacheID];
    if (!cell) {
        //DON'T DO NOTHING ARC MODE AUTORELEASE
        cell = [[UITableViewCell alloc]
                 initWithStyle:cellStyle
                 reuseIdentifier:CelulaContatoCacheID];
    }
    Contact *contato = [contacts objectAtIndex:indexPath.row];
    //cell.textLabel.text = contato.nome;
    [self formatCellStyle:cell andStyle: cellStyle andContact: contato];
    return cell;
}

-(void) formatCellStyle:(UITableViewCell *) cell andStyle:(UITableViewCellStyle) style andContact:(Contact *) c {
    
    if (style ==  UITableViewCellStyleDefault) {
        cell.textLabel.text = c.nome;
    }else if(style == UITableViewCellStyleSubtitle){
        cell.textLabel.text = c.nome;
        cell.detailTextLabel.text = c.telefone;
    }else if(style == UITableViewCellStyleValue1){
        cell.textLabel.text = c.nome;
        cell.detailTextLabel.text = c.telefone;
    }else if(style == UITableViewCellStyleValue2){
        cell.textLabel.text = c.nome;
        cell.detailTextLabel.text = c.telefone;
    }
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Contact *contato = [contacts objectAtIndex:indexPath.row];
    NSString *msg =
    [NSString stringWithFormat:@"Nome: %@\nTelefone: %@",
     contato.nome, contato.telefone];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Contato"
    message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [self.tableContacts deselectRowAtIndexPath:indexPath animated:YES];
}

-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [contacts removeObjectAtIndex:indexPath.row];
    
    //atualiza a tabela
    [self.tableContacts reloadData];
}

//this method is used to rename delete button
-(NSString *) tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:
(NSIndexPath *)indexPath {
    return @"Remover";
}


- (IBAction)buttonEditTouch:(id)sender {
    UIButton *btn = ((UIButton *)sender);
    if ([btn.titleLabel.text isEqualToString:@"Editar"]) {
        [self.tableContacts setEditing:YES animated:YES];
        btn.titleLabel.text = @"Pronto";
        [self.btnEdit setTitle: @"Pronto" forState:UIControlStateNormal];

    }else {
        [self.tableContacts setEditing:NO animated:YES];
        [self.btnEdit setTitle: @"Editar" forState:UIControlStateNormal];
    }
}

// to enable only remove
-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView
           editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleDelete;
}

@end
