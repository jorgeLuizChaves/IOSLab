//
//  ViewController.h
//  TableViewSimpleContactList
//
//  Created by Jorge Luiz Chaves de Oliveira on 12/6/15.
//  Copyright (c) 2015 99ballons. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>{
    NSMutableArray *contacts;
}

@property (retain, nonatomic) IBOutlet UITableView *tableContacts;


@property (strong, nonatomic) IBOutlet UIButton *btnEdit;

- (IBAction)buttonEditTouch:(id)sender;


@end

