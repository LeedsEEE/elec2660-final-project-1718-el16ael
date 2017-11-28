//
//  SisterSize.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import "SisterSize.h"
#import "DataModel.h"

@interface SisterSize ()
@property (strong, nonatomic) DataModel *data;
@end

@implementation SisterSize


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //connecting the data
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    
    self.data = [[DataModel alloc]init]; //initialising the data model
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *) pickerView : (UIPickerView *)pickerView
               titleForRow: (NSInteger)row
              forComponent: (NSInteger) component {
    NSString *label;
    
    
    if (component == 0) //for column one, setting the data to the UKband size
    {
        NSInteger number = [self.data.UKbandsize[row] integerValue];
        label = [NSString stringWithFormat:@"%ld",number];
        
    }
    else if ( component == 1) //for column two, setting the data to UKcup size
    {
        label = [self.data.UKcupsize objectAtIndex:row];
        
    }
    else if (component == 2)//for column three, setting the data to the countries in which to convert the size to
    {
        label = [self.data.Countries objectAtIndex:row];
        
    }
    return label;
    
}
-(void) pickerView : (UIPickerView *)pickerView
      didSelectRow : (NSInteger)row
        inComponent:(NSInteger)component {

    NSInteger bandconversion = [self.pickerView selectedRowInComponent:0];
    NSInteger cupconversion = [self.pickerView selectedRowInComponent:1];
    
    
    //setting sister size band conversion to display in the text label for size 1
    if (bandconversion == 0){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion+1] integerValue];
        self.SisterBandLabel.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 1){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion+1] integerValue];
        self.SisterBandLabel.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 2){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion+1] integerValue];
        self.SisterBandLabel.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 3){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion+1] integerValue];
        self.SisterBandLabel.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 4){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion+1] integerValue];
        self.SisterBandLabel.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 5){
        self.SisterBandLabel.text =[NSString stringWithFormat:@"%@", @"40"];
    }
    
    
    
    //setting sister size cup conversion to display in the text label for size 1
    if (cupconversion ==0) {
        self.SisterCupLabel.text = [NSString stringWithFormat:@"AA"];}
    
    else if (cupconversion ==1) {
        self.SisterCupLabel.text = [ self.data.UKcupsize objectAtIndex:cupconversion-1];}
    
    
    else if (cupconversion ==2) {
        self.SisterCupLabel.text = [ self.data.UKcupsize objectAtIndex:cupconversion-1];}
    
    else if (cupconversion ==3) {
        self.SisterCupLabel.text = [ self.data.UKcupsize objectAtIndex:cupconversion-1];}
    
    else if (cupconversion ==4) {
        self.SisterCupLabel.text = [ self.data.UKcupsize objectAtIndex:cupconversion-1];}
    
    else if (cupconversion ==5) {
        self.SisterCupLabel.text = [ self.data.UKcupsize objectAtIndex:cupconversion-1];}
    
    

    //setting sister size band conversion to display in the text label for size 2
    if (bandconversion == 0){
        
        self.SisterBandLabel2.text =[NSString stringWithFormat:@"%@", @"26"];

    }
    
    else if (bandconversion == 1){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion+1] integerValue];
        self.SisterBandLabel2.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 2){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion-1] integerValue];
        self.SisterBandLabel2.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 3){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion-1] integerValue];
        self.SisterBandLabel2.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 4){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion-1] integerValue];
        self.SisterBandLabel2.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    else if (bandconversion == 5){
        NSInteger valueband = [[self.data.UKbandsize objectAtIndex:bandconversion-1] integerValue];
        self.SisterBandLabel2.text =[NSString stringWithFormat:@"%ld", valueband];
    }
    
    
    //setting sister size cup conversion to display in the text label for size 1
    if (cupconversion ==0) {
        self.SisterCupLabel2.text = [ self.data.UKcupsize objectAtIndex:cupconversion+1];}
    
    else if (cupconversion ==1) {
        self.SisterCupLabel2.text = [ self.data.UKcupsize objectAtIndex:cupconversion+1];}
    
    
    else if (cupconversion ==2) {
        self.SisterCupLabel2.text = [ self.data.UKcupsize objectAtIndex:cupconversion+1];}
    
    else if (cupconversion ==3) {
        self.SisterCupLabel2.text = [ self.data.UKcupsize objectAtIndex:cupconversion+1];}

    else if (cupconversion ==4) {
        self.SisterCupLabel2.text = [ self.data.UKcupsize objectAtIndex:cupconversion+1];}
    
    else if (cupconversion ==5) {
        self.SisterCupLabel2.text = [NSString stringWithFormat:@"F"];}
        //self.SisterCupLabel.text = [ self.data.UKcupsize objectAtIndex:cupconversion-1];}
    
    
    
    
    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return  2; //setting the number of columns required
}

-(NSInteger)pickerView:(UIPickerView*)pickerView
numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) { //setting column one to having 6 rows for the band size data
        rows = 6;
    }else if (component==1){ //setting column two to having 6 rows for cup size data
        rows = 6;
    }
    return rows;
}
@end
