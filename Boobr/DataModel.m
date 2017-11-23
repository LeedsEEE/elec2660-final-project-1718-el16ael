//
//  DataModel.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //filling arrays for UK cup and band sizes
        self.UKbandsize = [NSArray array];
        self.UKbandsize = @[@28,@30,@32,@34,@36,@38];
        self.UKcupsize = [NSArray arrayWithObjects: @"A", @"B", @"C", @"D", @"DD", @"E", nil];
        
        //filling arrays for USA cup and band sizes
        self.USAbandsize = [NSArray array];
        self.USAbandsize = @[@28,@30,@32,@34,@36,@38];
        self.USAcupsize = [NSArray arrayWithObjects: @"AA", @"A", @"B", @"C", @"D", @"DD", nil];
        
        //filling arrays for Europe cup and band sizes
        self.EURbandsize = [NSArray array];
        self.EURbandsize = @[@60,@65,@70,@75,@80,@85];
        self.EURcupsize = [NSArray arrayWithObjects: @"A", @"B", @"C", @"D", @"E", @"F", nil];
        
        //filling arrays for Spain cup and band sizes
        self.SPbandsize = [NSArray array];
        self.SPbandsize = @[@75,@80,@85,@90,@95,@100];
        self.SPcupsize = [NSArray arrayWithObjects: @"A", @"B", @"C", @"D", @"E", @"F", nil];
        
        //filling arrays for Japan cup and band sizes
        self.JAPbandsize = [NSArray array];
        self.JAPbandsize = @[@60,@65,@70,@75,@80,@85];
        self.JAPcupsize = [NSArray arrayWithObjects: @"A", @"B", @"C", @"D", @"E", @"F", nil];
        
        //filling arrays for Australia cup and band sizes
        self.AUSbandsize = [NSArray array];
        self.AUSbandsize = @[@6,@8,@10,@12,@14,@16];
        self.AUScupsize = [NSArray arrayWithObjects: @"AA", @"A", @"B", @"C", @"D", @"DD", nil];
        
        //Filling an array with all countries
        self.Countries = [NSArray arrayWithObjects:@"USA", @"Europe", @"Spain", @"Japan", @"Australia", nil];
        
        
    }
    return self;
}

@end
