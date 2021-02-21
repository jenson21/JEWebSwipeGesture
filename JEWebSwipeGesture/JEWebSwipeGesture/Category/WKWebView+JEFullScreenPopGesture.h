//
//  WKWebView+JEFullScreenPopGesture.h
//  JEWebSwipeGesture
//
//  Created by Jenson on 2021/2/21.
//  Copyright © 2021 Jenson. All rights reserved.
//

#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WKWebView (JEFullScreenPopGesture)
@property (nonatomic, strong, readonly) UIPanGestureRecognizer *je_fullscreenPopGestureRecognizer;
@property (nonatomic, strong, readonly) UIPanGestureRecognizer *je_fullscreenRightPopGestureRecognizer;
@end

NS_ASSUME_NONNULL_END
