

@interface KKAdsViewController : UIViewController
- (void)closeAdMediaPlayer;
- (void)cleanAd;
- (void)stopWaitingTimer;
@end
@interface KKMediaRootViewController : UIViewController

- (void)viewDidLoad;
@property(retain, nonatomic) KKAdsViewController *adsViewController;
@end