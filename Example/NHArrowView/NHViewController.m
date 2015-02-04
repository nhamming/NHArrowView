//
//  NHViewController.m
//  NHArrowView
//
//  Created by Nathaniel Hamming on 02/02/2015.
//  Copyright (c) 2014 Nathaniel Hamming. All rights reserved.
//

#import "NHViewController.h"
#import <NHArrowView/NHArrowView.h>

@interface NHViewController ()
@property(nonatomic,strong) IBOutlet NHArrowView *arrowView;
@property(nonatomic,strong) IBOutlet UISlider *headLengthSlider;
@property(nonatomic,strong) IBOutlet UISlider *headWidthSlider;
@property(nonatomic,strong) IBOutlet UISlider *tailWidthSlider;
@property(nonatomic,strong) IBOutlet UISlider *strokeWidthSlider;
- (IBAction)handleRotationGesture:(UIRotationGestureRecognizer *)gestureRecognizer;
- (IBAction)sliderDidChange:(id)sender;
- (IBAction)resetButtonPressed:(id)sender;
@end

@implementation NHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.arrowView.strokeColor = [UIColor blueColor];
    self.arrowView.fillColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - User Interface

- (IBAction)handleRotationGesture:(UIRotationGestureRecognizer *)gestureRecognizer;
{
    CGFloat dampedRads = gestureRecognizer.rotation;
    [self.arrowView animatedRotateToRadians: dampedRads];
}

- (IBAction)sliderDidChange:(id)sender;
{
    if ([sender isKindOfClass: [UISlider class]]) {
        UISlider *slider = sender;
    
        if (slider == self.headLengthSlider) {
            self.arrowView.headLength = slider.value;
        } else if (slider == self.headWidthSlider) {
            self.arrowView.headWidth = slider.value;
        } else if (slider == self.tailWidthSlider) {
            self.arrowView.tailWidth = slider.value;
        } else if (slider == self.strokeWidthSlider) {
            self.arrowView.strokeWidth = slider.value;
        }
    }
}

- (IBAction)resetButtonPressed:(id)sender;
{
    [self.arrowView reset];
    [self.headLengthSlider setValue: self.arrowView.headLength animated: YES];
    [self.headWidthSlider setValue: self.arrowView.headWidth animated: YES];
    [self.tailWidthSlider setValue: self.arrowView.tailWidth animated: YES];
    [self.strokeWidthSlider setValue: self.arrowView.strokeWidth animated: YES];
}

@end
