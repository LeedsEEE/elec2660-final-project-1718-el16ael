//
//  BraConversion.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import "BraConversion.h"
#import "DataModel.h"

@interface BraConversion ()
@property (strong, nonatomic) DataModel *data;

@end

@implementation BraConversion

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

    
    NSInteger bandconversion = [self.pickerView selectedRowInComponent:0]; // column one is band size to be converted
   NSInteger cupconversion = [self.pickerView selectedRowInComponent:1]; //column two is the cup size to be converted
  NSInteger countryconverion = [self.pickerView selectedRowInComponent:2];//column three is the country to convert the UK size to
    
    
    
//IF USA IS SELECTED FROM PICKER
if (countryconverion == 0){
    NSInteger valueband = [[self.data.USAbandsize objectAtIndex:bandconversion] integerValue];
    self.BandSizeLabel.text = [NSString stringWithFormat:@"%ld", valueband];
    self.CupSizeLabel.text = [self.data.USAcupsize objectAtIndex:cupconversion];}

//IF EUROPE IS SELECTED FROM PICKER
else if (countryconverion ==1){
        NSInteger valueband = [[self.data.EURbandsize objectAtIndex:bandconversion] integerValue];
    self.BandSizeLabel.text = [NSString stringWithFormat:@"%ld", valueband];
    self.CupSizeLabel.text = [self.data.EURcupsize objectAtIndex:cupconversion];}

//IF SPAIN IS SELECTED FROM PICKER
else if (countryconverion ==2){
    NSInteger valueband = [[self.data.SPbandsize objectAtIndex:bandconversion] integerValue];
    self.BandSizeLabel.text = [NSString stringWithFormat:@"%ld", valueband];
    self.CupSizeLabel.text = [self.data.SPcupsize objectAtIndex:cupconversion];}
    
    
// IF JAPAN IS SELECTED FROM PICKER
else if (countryconverion ==3){
    NSInteger valueband = [[self.data.JAPbandsize objectAtIndex:bandconversion] integerValue];
    self.BandSizeLabel.text = [NSString stringWithFormat:@"%ld", valueband];
    self.CupSizeLabel.text = [self.data.JAPcupsize objectAtIndex:cupconversion];}
    
    
//IF AUSTRALIA IS SELECTED FROM PICKER
else if (countryconverion ==4){
    NSInteger valueband = [[self.data.AUSbandsize objectAtIndex:bandconversion] integerValue];
    self.BandSizeLabel.text = [NSString stringWithFormat:@"%ld", valueband];
    self.CupSizeLabel.text = [self.data.AUScupsize objectAtIndex:cupconversion];}
    
    
    }
    

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return  3; //setting the number of columns required
}

-(NSInteger)pickerView:(UIPickerView*)pickerView
numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger rows;
    
    if (component == 0) { //setting column one to having 6 rows for the band size data
        rows = 6;
    }else if (component==1){ //setting column two to having 6 rows for cup size data
        rows = 6;
    }else if ( component == 2){ //setting column three to having 5 rows for country to convert to data
        rows = 5;
    }
    return rows;
}



//https://codewithchris.com/uipickerview-example/
@end

