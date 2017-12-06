//
//  StylesExplained.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 05/12/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import "StylesExplained.h"
@interface StylesExplained ()

@property (nonatomic, strong) DataModel * data;
- (IBAction)BackPressed:(id)sender; //back button icon : http://www.clker.com/cliparts/P/F/4/j/V/q/transparent-arrow-left-hi.png


@end

@implementation StylesExplained

- (void)viewDidLoad {
    [super viewDidLoad];
    //these methods are implemented in view did load so that the image and description appear as soon as the view controller loads
    self.data = [[DataModel alloc] init]; //initialising
    stylesdata * tempstyles = [[stylesdata alloc]init]; //setting the data array to a temporary array
    tempstyles = [self.data.Styles objectAtIndex: self.ButtonPressed]; // depending what number tag the button is, determines what description is selected
    
    self.Labeldescription.text = tempstyles.BraDescription; //setting the description of the bra style to the label so it is displayed
    
    UIImage * braimages = [UIImage imageNamed:tempstyles.BraImages];//depending what button is pressed and therefore what BraImage name is displayed, determined which image is assigned to braimages in order for it then to be displayed in view controller
    self.IMAGE.image = braimages;//assigns the image to the uiimage in storyboard
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)BackPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
   
    // method on how to dismiss the view controller e.g back button was found here https://stackoverflow.com/questions/14636891/dismissing-a-presented-view-controller
}
@end
