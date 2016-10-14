#import "SearchSettingViewController.h"

@interface SearchSettingViewController ()

@end

@implementation SearchSettingViewController

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
    
    UILabel * titleLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 5, size.width, 20)];
    titleLabel.text= @"Search Settings";
    [topbar addSubview:titleLabel];
    
    self.backButton= [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 20, 20)];
    [self.backButton addTarget:self action:@selector(moveBack) forControlEvents:UIControlEventTouchUpInside];
    [self.backButton setTitle:@"Back" forState:UIControlStateNormal];
    [topbar addSubview:self.backButton];
    
    self.searchButton= [[UIButton alloc] initWithFrame:CGRectMake(size.width-25, 5, 20, 20)];
    [self.searchButton addTarget:self action:@selector(saveResult) forControlEvents:UIControlEventTouchUpInside];
    [self.searchButton setTitle:@"Search" forState:UIControlStateNormal];
    [topbar addSubview:self.backButton];
    
    UIScrollView * scroll= [[UIScrollView alloc] initWithFrame:CGRectMake(0, 40, size.width, size.height-40)];
    scroll.scrollEnabled= YES;
    scroll.showsVerticalScrollIndicator= YES;
    scroll.showsHorizontalScrollIndicator= NO;
    [self.view addSubview:scroll];
}
- (void) getData{
    
}
- (void) moveBack{ [self.navigationController popViewControllerAnimated:YES]; }
- (void) saveResult{
    // searching
    [self moveBack];
}

@end
