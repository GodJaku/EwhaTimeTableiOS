#import "SearchSettingViewController.h"
#import "Constants.h"

@interface SearchSettingViewController (){
    CGSize selfsize;
}

@end

@implementation SearchSettingViewController

- (UIStatusBarStyle)preferredStatusBarStyle { return UIStatusBarStyleLightContent; }

- (void)viewDidLoad {
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    [self makeView];
    [self getData];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) makeView{
    selfsize= self.view.bounds.size;
    
    UIView * topbar= [[UIView alloc] initWithFrame:CGRectMake(0, 0, selfsize.width, 50)];
    topbar.backgroundColor= [Constants getMainGreenColor];
    [self.view addSubview:topbar];
    
    UILabel * titleLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 20, selfsize.width, 20)];
    titleLabel.text= @"Search Setting";
    titleLabel.textColor= [Constants getMainIvoryColor];
    titleLabel.textAlignment= NSTextAlignmentCenter;
    [topbar addSubview:titleLabel];
    
    self.backButton= [[UIButton alloc] initWithFrame:CGRectMake(10, 15, 30, 30)];
    [self.backButton setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [self.backButton addTarget:self action:@selector(moveBack) forControlEvents:UIControlEventTouchUpInside];
    [topbar addSubview:self.backButton];
    
    self.searchButton= [[UIButton alloc] initWithFrame:CGRectMake(selfsize.width-40, 15, 30, 30)];
    [self.searchButton setImage:[UIImage imageNamed:@"search_btn"] forState:UIControlStateNormal];
    [self.searchButton addTarget:self action:@selector(saveResult) forControlEvents:UIControlEventTouchUpInside];
    [topbar addSubview:self.searchButton];
    
    UIScrollView * scroll= [[UIScrollView alloc] initWithFrame:CGRectMake(0, 40, selfsize.width, selfsize.height-40)];
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
