//
//  ContactList.m
//  Contact List
//
//  Created by Sergio Martinez on 2016-03-08.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    
    [_contacts addObject:newContact];
}

//-(void)listPrint: {
//    
//    int i = 0;
//    
//    for (Contact *contact in *ContactList) {
//        NSLog(@"%i:<%@>", i,contact.name);
//        i++;
//}

@end
