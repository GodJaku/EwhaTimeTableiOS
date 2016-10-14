#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [self makeView];
    [self getData];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makeView{
    CGSize size= self.view.bounds.size;
    
    UIView * topbar= [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, 30)];
    [self.view addSubview:topbar];
    
    UILabel * titleLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 5, size.width, 30)];
    titleLabel.text= @"My Schedule";
    [topbar addSubview:titleLabel];
    
    self.collectionView= [[UICollectionView alloc] initWithFrame:CGRectMake(0, 40, size.width, size.height-40-self.tabBarController.view.bounds.size.height)];
    self.collectionView.delegate= self;
    self.collectionView.dataSource= self;
    [self.view addSubview:self.collectionView];
}
- (void) getData{
    
}

@end
