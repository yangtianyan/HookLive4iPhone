#import "iOSLive4iPhone.h"
%hook KKMediaRootViewController
- (void)viewDidLoad
{
   %orig;
   [self performSelector:@selector(closeAd) withObject:nil afterDelay:0];
}

%new
- (void)closeAd{
     if (self.adsViewController == nil)
     {
        [self performSelector:@selector(closeAd) withObject:nil afterDelay:0];
        return;
     }
     [self.adsViewController closeAdMediaPlayer];
     [self.adsViewController cleanAd];
     [self.adsViewController stopWaitingTimer];
}
%end