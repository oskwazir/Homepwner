//
//  BNRItemsViewController.m
//  Homepwner
//
//  Created by Omer Wazir on 8/26/14.
//  Copyright (c) 2014 Omer Wazir. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItem.h"
#import "BNRItemStore.h"

@interface BNRItemsViewController()

@property (nonatomic, strong) IBOutlet UIView *headerView;

@end

@implementation BNRItemsViewController

-(UIView *)headerView{
    // If the header view has not been loaded yet
    if (!_headerView){
        
        //Load HeaderView.xib
        //This didn’t based on the code from the book but StackOverflow had an answer
        //http://stackoverflow.com/questions/10375043/uitableview-wont-display-headerview-xib
        
       _headerView = [[[NSBundle mainBundle] loadNibNamed:@"HeaderView"
                                                    owner:self
                                                  options:nil] lastObject];
    
    }
    
    return _headerView;
}

-(IBAction)addNewItem:(id)sender{

}

-(IBAction)toggleEditingMode:(id)sender{

}

-(instancetype)init{
    //Call the superclass designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        for(int i = 0;i < 5; i++){
            [[BNRItemStore sharedStore] createItem];
        }
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"UITableViewCell"];
    
    UIView *header = self.headerView;
    [self.tableView setTableHeaderView:header];

}

-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section{
    
    return [[[BNRItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //Get a new or recycled cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                                            forIndexPath:indexPath];
    
    //Set the text on the cell with the description of the item
    //that is at the nth index of items, where n = row of this cell where it will appear
    //in the table view
    
    NSArray *items = [[BNRItemStore sharedStore] allItems];
    BNRItem *item = items[indexPath.row];
    
    cell.textLabel.text = [item description];
    
    return cell;

}

-(instancetype) initWithStyle:(UITableViewStyle)style{
    return [self init];
}

@end
