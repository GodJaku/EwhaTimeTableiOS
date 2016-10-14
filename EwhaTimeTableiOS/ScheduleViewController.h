#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) UICollectionView * collectionView;
@property (nonatomic, weak) UIButton * saveButton;

@end

