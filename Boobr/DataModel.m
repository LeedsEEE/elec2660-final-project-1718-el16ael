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
        
        
        
        
        
        
        
        stylesdata * adhesive = [[stylesdata alloc] init];
        adhesive.BraDescription = @"The adhesive bra is often made of silicon but there are other fabrics on the market. It consists of two cups with a join in the centre and a sticky material on the inside to allow it to be stuck directly on the breast. This style of bra is most commonly worn to keep the shape of the breasts whilst wearing a low back or backless piece of clothing.";
        adhesive.BraImages = @"adhesive bra.png";
        
        stylesdata * corset = [[stylesdata alloc] init];
        corset.BraDescription = @"A corset bra, also known as a bustier, operates by tightening the midriff to force the breasts upwards whilst is shaping the waist.";
        corset.BraImages= @"corset bra.png";
        
        
        stylesdata * plunge = [[stylesdata alloc]init];
        plunge.BraDescription = @"This is one of the most provocative styles available on the market as it is designed so you can wear low cut clothing without your bra being on show. With having wide shoulder straps it also increases the number of different necklines you can wear without the straps showing.  They may have padding to increase the appearance of the size of the breasts. Plunge bras can also come in a U-plunge which is designed for even lower necklines.";
        plunge.BraImages = @"plunge bra.png";
        
        stylesdata * shelf = [[stylesdata alloc]init];
        shelf.BraDescription = @"A shelf bra has many different names you may have heard including platform bra, quarter cup bra or cupless bra. It has underwire underneath the breasts for support but with very little or no cup which leaves the breasts exposed. Shelf bras are the perfect way to show your playful side as you can pair it with some pasties.";
        shelf.BraImages = @"shelf bra.png";
        
        stylesdata * tshirt = [[stylesdata alloc] init];
        tshirt.BraDescription = @"A T-shirt bra has seamless contour cups that are designed to give a smooth look under tight or lightweight fabric. The cups are lightly padded to stop the shape of your nipples showing through.";
        tshirt.BraImages = @"tshirt bra.png";
        
        
        stylesdata * triangle = [[stylesdata alloc] init];
        triangle.BraDescription = @"The triangle bra consists of two triangle shapes which cover the breasts . The style is often wireless for improved comfort whilst giving the appearance of a more natural shape.";
        triangle.BraImages = @"triangle bra.png";
        
        
        stylesdata * underwire = [[stylesdata alloc] init];
        underwire.BraDescription = @"Any bra which has underwiring is when it is essential you have your correct bra size to ensure correct support and so the underwire does not dig into the breast tissue.";
        underwire.BraImages = @"underwire bra.png";
        
        
        stylesdata * push = [[stylesdata alloc] init];
        push.BraDescription = @"Push up bras push your breasts up and together to give maximum cleavage. The placement of how high or low the join between the two cups determines whether it is classed as a push up or plunge bra. A low join between the cup means it is a plunge bra and a higher join is a push up bra. Push up bras are padded so breasts an appear a couple of cup sizes larger than they actually are.";
        push.BraImages = @"push up bra.png";
        
        
        stylesdata * strapless = [[stylesdata alloc] init];
        strapless.BraDescription = @"Strapless bras enable you to wear wider neck styles of clothing or bardot without showing off your straps. They are available with both underwire or wireless depending on the degree of support that is required.";
        strapless.BraImages = @"strapless bra.png";
        
        stylesdata * sport = [[stylesdata alloc] init];
        sport.BraDescription = @"Sports bras give you support while partaking in physical activity. There are multiple types of sports bra depending on the activity as some sports require a larger range in movement than others. They also often are made from a lightweight fabric to help draw sweat from the body to you cool.";
        sport.BraImages  = @"sport bra.png";
        
        self.Styles = [[NSMutableArray alloc]init];
        [self.Styles addObject:adhesive];
        [self.Styles addObject:corset];
        [self.Styles addObject:plunge];
        [self.Styles addObject:shelf];
        [self.Styles addObject:tshirt];
        [self.Styles addObject:triangle];
        [self.Styles addObject:push];
        [self.Styles addObject:underwire];
        [self.Styles addObject:strapless];
        [self.Styles addObject:sport];
    }
    return self;
}

@end
