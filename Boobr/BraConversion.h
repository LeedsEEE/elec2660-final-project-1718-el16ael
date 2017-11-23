//
//  BraConversion.h
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BraConversion : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) NSString *NEWband;


@property (weak, nonatomic) IBOutlet UILabel *BandSizeLabel;
@property (weak, nonatomic) IBOutlet UILabel *CupSizeLabel;


@end

