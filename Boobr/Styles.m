//
//  Styles.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import "Styles.h"


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
    //StylesExplained *destinationviewcontroller = [segue destinationViewController];
    if ( [[segue identifier ] isEqualToString:@"mySegue"]) {
        StylesExplained *destinationVC = [segue destinationViewController];
        UIButton * buttonp = sender;
        destinationVC.ButtonPressed = buttonp.tag;
        
    }
 
}




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
