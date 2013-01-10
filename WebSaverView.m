//
//  WebSaverView.m
//  WebSaver
//
//  Created by Thomas Robinson on 10/13/09.
//  Copyright (c) 2009, 280 North. All rights reserved.
//

#import "WebSaverView.h"

#import <WebKit/WebKit.h>

@implementation WebSaverView

- (id)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
		webView = [[WebView alloc] initWithFrame:[self bounds] frameName:nil groupName:nil];
		[webView setMainFrameURL:[NSString stringWithFormat:@"http://www.bookbookgoose.com", [[NSBundle bundleForClass:[self class]] resourcePath]]];
		[self addSubview:webView];
    }
    return self;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

@end
