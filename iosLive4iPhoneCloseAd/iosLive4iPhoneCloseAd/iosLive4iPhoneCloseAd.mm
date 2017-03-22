//
//  iosLive4iPhoneCloseAd.m
//  iosLive4iPhoneCloseAd
//
//  Created by iMac on 2017/3/21.
//  Copyright (c) 2017年 __MyCompanyName__. All rights reserved.
//
#import "CaptainHook.h"
#import <objc/runtime.h>


CHDeclareClass(KKAdsViewController);
CHMethod(0, void, KKAdsViewController, viewDidLoad){
	CHSuper(0,KKAdsViewController,viewDidLoad);
	objc_msgSend(self, @selector(closeAdMediaPlayer));
	objc_msgSend(self, @selector(cleanAd));
	objc_msgSend(self, @selector(stopWaitingTimer));
}

__attribute__((constructor)) static void entry()
{
	CHLoadLateClass(KKAdsViewController);
	CHClassHook(0,KKAdsViewController, viewDidLoad);
}
