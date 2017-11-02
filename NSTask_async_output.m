//
//  main.m
//  pyConsole
//
//  Created by IT-0002922 on 10/10/16.
//  Copyright © 2016 IT-0002922. All rights reserved.
//


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /// async solution for getting the task output
        NSTask *task = [[NSTask alloc] init];
        [task setLaunchPath:@"/sbin/ping"];
        NSArray *arguments = [NSArray arrayWithObjects: @"127.0.0.1", nil];
        [task setArguments:arguments];

        task.standardOutput = [NSPipe pipe];
        [task launch];
        [[task.standardOutput fileHandleForReading] setReadabilityHandler:^(NSFileHandle *file) {
            NSData *data = [file availableData]; // this will read to EOF, so call only once
            NSLog(@"%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
            
            // if you're collecting the whole output of a task, you may store it on a property
            //maybe you want to appenddata
            //[weakself.taskOutput appendData:data];
        }];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
