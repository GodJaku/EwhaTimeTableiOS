#import "MainViewController.h"
#import "Constants.h"

@interface MainViewController (){
    CGSize selfsize;
}
@end

@implementation MainViewController

- (UIStatusBarStyle)preferredStatusBarStyle { return UIStatusBarStyleLightContent; }

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
    selfsize= self.view.bounds.size;
    
    UIView * topbar= [[UIView alloc] initWithFrame:CGRectMake(0, 0, selfsize.width, 50)];
    topbar.backgroundColor= [Constants getMainGreenColor];
    [self.view addSubview:topbar];
    
    UILabel * titleLabel= [[UILabel alloc] initWithFrame:CGRectMake(0, 20, selfsize.width, 20)];
    titleLabel.text= @"Main";
    titleLabel.textColor= [Constants getMainIvoryColor];
    titleLabel.textAlignment= NSTextAlignmentCenter;
    [topbar addSubview:titleLabel];
    
    UICollectionViewFlowLayout * fl= [[UICollectionViewFlowLayout alloc] init];
//    fl.itemSize= CGSizeMake((selfsize.width-20)/6, (selfsize.height-40-self.tabBarController.tabBar.frame.size.height)/8);
    fl.scrollDirection= UICollectionViewScrollDirectionVertical;
    self.collectionView= [[UICollectionView alloc] initWithFrame:CGRectMake(10, 55, selfsize.width-20, selfsize.height-60-self.tabBarController.tabBar.frame.size.height) collectionViewLayout:fl];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"collectionViewCellIdentifier"];
    self.collectionView.backgroundColor= [UIColor clearColor];
    self.collectionView.scrollEnabled= YES;
    self.collectionView.delegate= self;
    self.collectionView.dataSource= self;
    [self.view addSubview:self.collectionView];
    
    [self.tabBarController.tabBar setBarTintColor:[Constants getMainGreenColor]];
    [[UITabBar appearance] setTintColor:[Constants getMainIvoryColor]];
}
- (void) getData{
    
}

#pragma collection view
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}
- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    return 7;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionView *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
//    return collectionView.frame.size.width/24;
    return 1;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"collectionViewCellIdentifier" forIndexPath:indexPath];
    cell.backgroundColor=[UIColor greenColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGSize size= self.collectionView.bounds.size;
    return CGSizeMake(size.width/6, size.height/8);
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(2, 2, 2, 2);
}

@end
