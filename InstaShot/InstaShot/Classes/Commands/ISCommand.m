//
//  ISCommand.m
//  InstaShot
//
//  Created by Liu Xiang on 10/23/14.
//  Copyright (c) 2014 Liu Xiang. All rights reserved.
//

#import "ISCommand.h"

NSString* const ISEditCommandCompletionNotification = @"ISEditCommandCompletionNotification";
NSString* const ISExportCommandCompletionNotification = @"ISExportCommandCompletionNotification";

@implementation ISCommand

- (id)initWithComposition:(AVMutableComposition *)composition videoComposition:(AVMutableVideoComposition *)videoComposition audioMix:(AVMutableAudioMix *)audioMix
{
	self = [super init];
	if(self != nil) {
		self.mutableComposition = composition;
		self.mutableVideoComposition = videoComposition;
		self.mutableAudioMix = audioMix;
	}
	return self;
}

- (void)performWithAsset:(AVAsset*)asset
{
	[self doesNotRecognizeSelector:_cmd];
}

@end
