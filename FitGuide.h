//
//  FitGuide.h
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface FitGuide : UIViewController

- (IBAction)BraFitButton:(id)sender;
@property (nonatomic)AVPlayer * player;
@property (nonatomic)AVPlayerViewController * controller;

@end
