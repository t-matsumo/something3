//
//  main.m
//  TestAppObjC
//
//  Created by tatsuki_matsumoto on 2019/11/14.
//  Copyright © 2019 com.gmail.tatsukimatsumo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
