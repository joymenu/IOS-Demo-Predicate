//
//  ViewController.m
//  Predicate
//
//  Created by bbu on 2/27/15.
//  Copyright (c) 2015 bbu. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *array = [NSMutableArray array];
    for (NSInteger i =0; i<20; i++) {
        
        Person *person = [[Person alloc] init];
        if (i < 10) {
            person.name = [NSString stringWithFormat:@"Tome is %ld",i];
        }
        else
        {
            person.name = [NSString stringWithFormat:@"Steven is %ld",i];
        }
        person.age = [NSNumber numberWithInteger:i];
        [array addObject:person];
    }
    
    
    //运算符
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age > 10"];
//    NSArray *new = [array filteredArrayUsingPredicate:predicate];
    
    
    //IN
//    NSArray *inarray = @[@"Steven is 16"];
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name in %@",inarray];
//    NSArray *new = [array filteredArrayUsingPredicate:predicate];

    
    //BEGINSWITH ,ENDSWITH ,CONTAINS,LIKE 区分大小写
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name BEGINSWITH 's'"];
//    NSArray *new = [array filteredArrayUsingPredicate:predicate];
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name ENDSWITH '6'"];
//    NSArray *new = [array filteredArrayUsingPredicate:predicate];
    
//    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name CONTAINS '6'"];
//    NSArray *new = [array filteredArrayUsingPredicate:predicate];
    
    //
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name LIKE '*6*'"];
    NSArray *new = [array filteredArrayUsingPredicate:predicate];
    
    //
    NSLog(@"%@",new);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
