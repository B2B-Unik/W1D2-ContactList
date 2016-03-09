//
//  main.m
//  Contact List
//
//  Created by Sergio Martinez on 2016-03-08.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *newInputCollector = [[InputCollector alloc] init];
        
        ContactList *newContactList = [[ContactList alloc] init];
        
        
        while (true) {
            NSString *input = [newInputCollector inputForPrompt:@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application > _"];
            if ([input isEqualToString:@"quit"]) {
                NSLog(@"Adieu my friend!");
                break;
            }
            
            if ([input isEqualToString:@"new"]) {
                NSString *newContactFullName = [newInputCollector inputForPrompt:@"Please enter contact full name <first last>"];
                NSString *newContactEmail = [newInputCollector inputForPrompt:@"Please enter contact email"];
             
                Contact *firstContact = [[Contact alloc] init];
                
                firstContact.name = newContactFullName;
                firstContact.email = newContactEmail;
                
                [newContactList addContact:firstContact];
            }
        
            if ([input isEqualToString:@"list"]) {
                
                int i = 0;
                
                for (Contact *contact in newContactList.contacts) {
                    NSLog(@"%i:<%@>", i,contact.name);
                    i++;
                }
            }
        }
       
        
        
        
    }
    return 0;
}
