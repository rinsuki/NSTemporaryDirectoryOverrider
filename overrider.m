#import <objc/runtime.h>
#import <Foundation/Foundation.h>

static NSString* (*original_NSTemporaryDirectory)();

NSString* NSTemporaryDirectory() {
	return [[[NSProcessInfo processInfo] environment] objectForKey:@"TMPDIR"];
}
