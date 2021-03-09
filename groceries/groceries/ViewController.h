//
//  ViewController.h
//  groceries
//
//  Created by Derrick Ryan on 3/9/21.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) IBOutlet UITextField *textField;

@end

