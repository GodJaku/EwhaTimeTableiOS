#import "HelpViewController.h"
#import "Constants.h"

@interface HelpViewController (){
    CGSize selfsize;
}

@end

@implementation HelpViewController

- (UIStatusBarStyle)preferredStatusBarStyle { return UIStatusBarStyleLightContent; }

- (void)viewDidLoad {
    [self makeView];
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
    titleLabel.text= @"Help";
    titleLabel.textColor= [Constants getMainIvoryColor];
    titleLabel.textAlignment= NSTextAlignmentCenter;
    [topbar addSubview:titleLabel];}

@end
