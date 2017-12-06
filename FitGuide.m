//
//  FitGuide.m
//  Boobr
//
//  Created by Antonia Lamballe [el16ael] on 21/11/2017.
//  Copyright © 2017 University Of Leeds. All rights reserved.
//

//https://www.shutterstock.com/g/neshcheret%20mariia?searchterm=bra

#import "FitGuide.h"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>


@interface FitGuide ()

@end

@implementation FitGuide

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidDisappear:(BOOL)animated { //when the tab is changed, the video disappears and stops playing

    [self.player pause]; //pauses the video
    self.player = nil;
    //https://stackoverflow.com/questions/17831764/how-to-stop-a-video-in-avplayer
    [self.controller.view removeFromSuperview]; //removes the video from subview when tab is changed
//https://stackoverflow.com/questions/41950286/how-to-remove-avplayerviewcontroller-from-our-view
    }
    



- (IBAction)BraFitButton:(id)sender {
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Your Perfect Bra Fitting Guide-2" ofType:@"mp4"]; //creating the path to the video
    NSURL * url = [NSURL fileURLWithPath:path];
    self.player = [AVPlayer playerWithURL:url];
    self.controller = [[AVPlayerViewController alloc]init];
    self.controller.player = self.player; //playing the video
    
    self.controller.view.frame = self.view.bounds; //setting the video to play full screen in app
    [[self view] addSubview:self.controller.view];
    [self.player play];
    // how to input the video into app : https://www.youtube.com/watch?v=gPBX6lGzCCE
    
}
@end
