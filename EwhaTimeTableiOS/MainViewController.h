#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic, weak) UICollectionView * collectionView;

@end

