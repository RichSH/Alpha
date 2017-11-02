//clang -fobjc-arc -framework Foundation loop_timeout.m -o loop_timeout
#import <Foundation/Foundation.h>
int main(int argc, const char * argv[])
{ 
  @autoreleasepool 
  { 
	NSDate *timeout = [NSDate dateWithTimeIntervalSinceNow:8];
	while ([[NSDate date] timeIntervalSinceDate:timeout] < 0) {
		NSLog(@"%f",[[NSDate date] timeIntervalSinceDate:timeout]);
		[NSThread sleepForTimeInterval:0.1];
	}

  }
  return 0;
}