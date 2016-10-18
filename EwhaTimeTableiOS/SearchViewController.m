#import "SearchViewController.h"
#import "SearchSettingViewController.h"
#import "Constants.h"

@interface SearchViewController (){
    CGSize selfsize;
}

@end

@implementation SearchViewController

- (UIStatusBarStyle)preferredStatusBarStyle { return UIStatusBarStyleLightContent; }

- (void)viewDidLoad {
    [self makeView];
    [self getData];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) makeView{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    selfsize= self.view.bounds.size;
    
    UIView * topbar= [[UIView alloc] initWithFrame:CGRectMake(0, 0, selfsize.width, 50)];
    topbar.backgroundColor= [Constants getMainGreenColor];
    [self.view addSubview:topbar];
    
    UILabel * titleLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 20, selfsize.width, 20)];
    titleLabel.text= @"Search";
    titleLabel.textColor= [Constants getMainIvoryColor];
    titleLabel.textAlignment= NSTextAlignmentCenter;
    [topbar addSubview:titleLabel];
    
    self.searchButton= [[UIButton alloc] initWithFrame:CGRectMake(selfsize.width-40, 15, 30, 30)];
    [self.searchButton setImage:[UIImage imageNamed:@"setting"] forState:UIControlStateNormal];
    [self.searchButton addTarget:self action:@selector(moveToSetting) forControlEvents:UIControlEventTouchUpInside];
    [topbar addSubview:self.searchButton];
    
    self.tableView= [[UITableView alloc] initWithFrame:CGRectMake(0, 60, selfsize.width, selfsize.height-60-self.tabBarController.tabBar.frame.size.height)];
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
- (void) moveToSetting{
    SearchSettingViewController * destinationVC= (SearchSettingViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"searchsettingviewcontroller"];
    destinationVC.hidesBottomBarWhenPushed= YES;
    [self.navigationController pushViewController:destinationVC animated:YES];
}

#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{ return 1; }

#pragma mark - TableView delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end
