//
//  InputCollector.m
//  Contact List
//
//  Created by Sergio Martinez on 2016-03-08.
//  Copyright © 2016 Sergio Martinez. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    
    
    NSLog (@"%@", promptString);
    
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    // Create an array by separating by string \n
    NSArray *myArray = [inputString componentsSeparatedByString:@"\n"];
    NSString *myString = [myArray firstObject];
    
    //NSLog(@"Selection was %@", inputString);
    
    return myString;

}

@end
