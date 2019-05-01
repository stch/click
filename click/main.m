//
//  main.m
//  clicka
//
//  Created by Satoshi H on 2019/04/26.
//  Copyright © 2019 stch. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
	[[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
	return NSApplicationMain(argc, argv);
}
