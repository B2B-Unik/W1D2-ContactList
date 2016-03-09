//
//  ContactList.h
//  Contact List
//
//  Created by Sergio Martinez on 2016-03-08.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

//-(void)listPrint;

@end
