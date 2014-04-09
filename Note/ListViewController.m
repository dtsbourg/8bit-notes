//
//  ListViewController.m
//  Note
//
//  Created by Dylan Bourgeois on 23/03/14.
//  Copyright (c) 2014 Dylan Bourgeois. All rights reserved.
//

#import "ListViewController.h"
#import "ViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController
{
    NSMutableArray *list;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     list = [NSMutableArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", nil];
    self.titleLabel.font = [UIFont fontWithName:@"FreePixel-Regular" size:20];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [list count]+1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Cell";
    
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    if (indexPath.row==0)
    {
        cell.textLabel.text = @"Add a note !";
    }
    
    else {
        cell.textLabel.text = [list objectAtIndex:indexPath.row-1];
    }
    cell.textLabel.font = [UIFont fontWithName:@"FreePixel-Regular" size:16];
    cell.detailTextLabel.font = [UIFont fontWithName:@"FreePixel-Regular" size:16];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        [self performSegueWithIdentifier:@"New" sender:self];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"New"])
    {
        ViewController* destvc = segue.destinationViewController;
        destvc.noteRef = @"New";
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
