#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [self makeView];
    [self getData];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) makeView{
    CGSize size= self.view.bounds.size;
    
    UIView * topbar= [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, 30)];
    [self.view addSubview:topbar];
    
    UILabel * titleLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 5, size.width, 30)];
    titleLabel.text= @"Search";
    [topbar addSubview:titleLabel];
    
    self.tableView= [[UITableView alloc] initWithFrame:CGRectMake(0, 40, size.width, size.height-40-self.tabBarController.view.bounds.size.height)];
    self.tableView.delegate= self;
    self.tableView.dataSource= self;
    self.tableView.scrollEnabled= YES;
    [self.view addSubview:self.tableView];
}
- (void) getData{
    // sync data
    if(self.tableView) [self.tableView reloadData];
}

- (void) searchData{
    // search data
}


@end
