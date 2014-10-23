//
//  ViewController.m
//  ImageHop
//
//  Created by McGuire, Philip on 2/24/14.
//  Copyright (c) 2014 McGuire, Philip. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *BunnyView1;
@property (weak, nonatomic) IBOutlet UIImageView *BunnyView2;
@property (weak, nonatomic) IBOutlet UIImageView *BunnyView3;
@property (weak, nonatomic) IBOutlet UIImageView *BunnyView4;
@property (weak, nonatomic) IBOutlet UIImageView *BunnyView5;
@property (weak, nonatomic) IBOutlet UISlider *speedSlider;
@property (weak, nonatomic) IBOutlet UIStepper *speedStepper;
@property (weak, nonatomic) IBOutlet UILabel *hopsPerSecond;
@property (weak, nonatomic) IBOutlet UIButton *toggleButton;

- (IBAction)toggleAnimation:(id)sender;
- (IBAction)setSpeed:(id)sender;
- (IBAction)setIncrement:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *hopAnimation;
    hopAnimation=@[
                   
                   [UIImage imageNamed: @"frame-1.png"],
                   [UIImage imageNamed: @"frame-2.png"],
                   [UIImage imageNamed: @"frame-3.png"],
                   [UIImage imageNamed: @"frame-4.png"],
                   [UIImage imageNamed: @"frame-5.png"],
                   [UIImage imageNamed: @"frame-6.png"],
                   [UIImage imageNamed: @"frame-7.png"],
                   [UIImage imageNamed: @"frame-8.png"],
                   [UIImage imageNamed: @"frame-9.png"],
                   [UIImage imageNamed: @"frame-10.png"],
                   [UIImage imageNamed: @"frame-11.png"],
                   [UIImage imageNamed: @"frame-12.png"],
                   [UIImage imageNamed: @"frame-13.png"],
                   [UIImage imageNamed: @"frame-14.png"],
                   [UIImage imageNamed: @"frame-15.png"],
                   [UIImage imageNamed: @"frame-16.png"],
                   [UIImage imageNamed: @"frame-17.png"],
                   [UIImage imageNamed: @"frame-18.png"],
                   [UIImage imageNamed: @"frame-19.png"],
                   [UIImage imageNamed: @"frame-20.png"],
                   ];
    
    self.BunnyView1.animationImages=hopAnimation;
    self.BunnyView2.animationImages=hopAnimation;
    self.BunnyView3.animationImages=hopAnimation;
    self.BunnyView4.animationImages=hopAnimation;
    self.BunnyView5.animationImages=hopAnimation;
    self.BunnyView1.animationDuration=1;
    self.BunnyView2.animationDuration=1;
    self.BunnyView3.animationDuration=1;
    self.BunnyView4.animationDuration=1;
    self.BunnyView5.animationDuration=1;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toggleAnimation:(id)sender {
    if (self.BunnyView1.isAnimating) {
        [self.BunnyView1 stopAnimating];
         [self.BunnyView2 stopAnimating];
         [self.BunnyView3 stopAnimating];
         [self.BunnyView4 stopAnimating];
         [self.BunnyView5 stopAnimating];
        [self.toggleButton setTitle: @"Hop!" forState: UIControlStateNormal];
        
    } else {
        [self.BunnyView1 startAnimating];
        [self.BunnyView2 startAnimating];
        [self.BunnyView3 startAnimating];
        [self.BunnyView4 startAnimating];
        [self.BunnyView5 startAnimating];
          [self.toggleButton setTitle: @"Sit Still!" forState: UIControlStateNormal];
        
    }
    
    
}

- (IBAction)setSpeed:(id)sender {
    
    NSString *hopRateString;
    
    self.BunnyView1.animationDuration=2- self.speedSlider.value;
    self.BunnyView2.animationDuration= self.BunnyView1.animationDuration=((float)(rand()%11+1)/10);
    self.BunnyView3.animationDuration= self.BunnyView1.animationDuration=((float)(rand()%11+1)/10);
    self.BunnyView4.animationDuration= self.BunnyView1.animationDuration=((float)(rand()%11+1)/10);
    self.BunnyView5.animationDuration= self.BunnyView1.animationDuration=((float)(rand()%11+1)/10);
    
    [self.BunnyView1 startAnimating];
    [self.BunnyView2 startAnimating];
    [self.BunnyView3 startAnimating];
    [self.BunnyView4 startAnimating];
    [self.BunnyView5 startAnimating];
    
    [self.toggleButton setTitle: @"Sit Still!" forState: UIControlStateNormal];
    
    hopRateString=[NSString stringWithFormat: @"%1.2f hps", 1/(2- self.speedSlider.value)];
    self.hopsPerSecond.text=hopRateString;
    
    
    
    
}

- (IBAction)setIncrement:(id)sender {
    
    self.speedSlider.value=self.speedStepper.value;
    [self setSpeed:nil];
    
    
}

-(UIStatusBarStyle) preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
