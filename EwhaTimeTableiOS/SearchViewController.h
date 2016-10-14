#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UIButton * searchButton;
@property (nonatomic, strong) UITableView * tableView;

@end

