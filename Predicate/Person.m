//
//  Person.m
//  Predicate
//
//  Created by bbu on 2/27/15.
//  Copyright (c) 2015 bbu. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"Person %p,name - %@,age - %@",self,self.name,self.age];
}
@end
