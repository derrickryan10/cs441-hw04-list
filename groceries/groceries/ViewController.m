//
//  ViewController.m
//  groceries
//
//  Created by Derrick Ryan on 3/9/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableView, items, textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    [tableView setDataSource: self];
    [tableView setDelegate: self];
    items = [[NSMutableArray alloc] init];
    [items addObject:@"Grocery List"];
    [tableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    [[cell textLabel] setText:[items objectAtIndex:[indexPath row]]];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [items count];
}

- (IBAction)addItem: (id)sender{
    NSString *s = [textField text];
    [items addObject:s];
    [textField setText:@""];
    [tableView reloadData];
}

@end
