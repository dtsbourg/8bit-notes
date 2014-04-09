//
//  ListViewController.h
//  Note
//
//  Created by Dylan Bourgeois on 23/03/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end
