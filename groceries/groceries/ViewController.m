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
    [tableView reloadData];
}

//cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    [[cell textLabel] setText:[items objectAtIndex:[indexPath row]]];
    cell.imageView.image = [UIImage imageNamed:@"food.jpg"];
    return cell;
}

//number of rows
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [items count];
}

//add item
-(IBAction)addItem:(id)sender{
    NSString *s = [textField text];
    [items addObject:s];
    [textField setText:@""];
    [tableView reloadData];
}

//edit toggle
-(IBAction)toggleEdit:(id)sender{
    [tableView setEditing:![tableView isEditing]];
}

//edit remove
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    [items removeObjectAtIndex:[indexPath row]];
    [tableView reloadData];
}

@end
