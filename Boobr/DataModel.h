//
//  DataModel.h
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

//UK
@property (strong, nonatomic) NSArray * UKbandsize;
@property (strong, nonatomic) NSArray * UKcupsize;


//USA
@property (strong, nonatomic) NSArray * USAbandsize;
@property (strong, nonatomic) NSArray * USAcupsize;

//Europe
@property (strong, nonatomic) NSArray * EURbandsize;
@property (strong, nonatomic) NSArray * EURcupsize;


//Spain
@property (strong, nonatomic) NSArray * SPbandsize;
@property (strong, nonatomic) NSArray * SPcupsize;

//Japan
@property (strong, nonatomic) NSArray * JAPbandsize;
@property (strong, nonatomic) NSArray * JAPcupsize;



//Australia
@property (strong, nonatomic) NSArray * AUSbandsize;
@property (strong, nonatomic) NSArray * AUScupsize;


@end
