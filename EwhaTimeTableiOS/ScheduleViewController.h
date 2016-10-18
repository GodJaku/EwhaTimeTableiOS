#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView * collectionView;
@property (nonatomic, strong) UIButton * saveButton;

@end

