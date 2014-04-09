//
//  ViewController.h
//  Note
//
//  Created by Dylan Bourgeois on 23/03/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *textLabel;
@property (strong, nonatomic) IBOutlet UILabel *navBarTitle;
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) NSString* noteRef;
@end
