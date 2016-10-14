#import "HelpViewController.h"

@interface HelpViewController ()

@end

@implementation HelpViewController

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
    CGSize size= self.view.bounds.size;
    
    UIView * topbar= [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, 30)];
    [self.view addSubview:topbar];
    
    UILabel * title= [[UILabel alloc] initWithFrame:CGRectMake(30, 5, size.width-60, 20)];
    title.text= @"Help";
    [topbar addSubview:title];
}

@end
