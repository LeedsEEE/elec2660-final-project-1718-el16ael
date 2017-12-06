//
//  Styles.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import "Styles.h"

//images used from:
//https://www.shutterstock.com/image-vector/icon-types-bra-kinds-bras-471110207?src=XLkkRHu5hP1RRk_H1X8M3w-1-43
//https://www.shutterstock.com/image-vector/icon-types-bra-kinds-bras-512871976

//moving betweeb the segues  : https://appsandbiscuits.com/move-between-view-controllers-with-segues-ios-9-7e231159e8f4

@interface Styles ()

- (IBAction)AdhesiveButton:(id)sender;
- (IBAction)CorsetButton:(id)sender;
- (IBAction)PlungeButton:(id)sender;
- (IBAction)ShelfButton:(id)sender;
- (IBAction)TshirtButton:(id)sender;
- (IBAction)TriangleButton:(id)sender;
- (IBAction)UnderwireButton:(id)sender;
- (IBAction)PushupButton:(id)sender;
- (IBAction)StraplessButton:(id)sender;
- (IBAction)SportButton:(id)sender;


@end

@implementation Styles

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ( [[segue identifier ] isEqualToString:@"mySegue"])//identifying which segue is being used so the correct view controller is displayed once button pressed
    {
        StylesExplained *destinationVC = [segue destinationViewController]; //
        UIButton * buttonp = sender;
        destinationVC.ButtonPressed = buttonp.tag; //depending which button has been pressed, each has a different tag (the button is numbered) so each number has the image and description attached to it.
        
    }
 
}


//when each of the 10 buttons is pressed, it loads the following view controller

- (IBAction)AdhesiveButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)CorsetButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)PlungeButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)ShelfButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)TshirtButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)TriangleButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)UnderwireButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)PushupButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)StraplessButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}

- (IBAction)SportButton:(id)sender {
    [self performSegueWithIdentifier:@"mySegue" sender:sender];
}
@end
