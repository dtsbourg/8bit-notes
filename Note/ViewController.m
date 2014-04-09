//
//  ViewController.m
//  Note
//
//  Created by Dylan Bourgeois on 23/03/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Positioning.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.textLabel setDelegate:self];
    self.textLabel.font = [UIFont fontWithName:@"FreePixel-Regular" size:16];
    self.navBarTitle.font = [UIFont fontWithName:@"FreePixel-Regular" size:20];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
