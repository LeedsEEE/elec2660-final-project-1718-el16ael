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
- (IBAction)BackPressed:(id)sender;


@end

@implementation StylesExplained

- (void)viewDidLoad {
    [super viewDidLoad];
    self.data = [[DataModel alloc] init];
    stylesdata * tempstyles = [[stylesdata alloc]init];
    tempstyles = [self.data.Styles objectAtIndex: self.ButtonPressed];
    
    self.Labeldescription.text = tempstyles.BraDescription;
    
    UIImage * braimages = [UIImage imageNamed:tempstyles.BraImages];
    self.IMAGE.image = braimages;
    
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
    //https://stackoverflow.com/questions/14636891/dismissing-a-presented-view-controller
}
@end
