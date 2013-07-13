//
//  Tests.m
//  Tests
//
//  Created by Robert Gilliam on 6/17/13.
//  Copyright (c) 2013 Robert Gilliam. All rights reserved.
//

#import <Specta.h>

SharedExampleGroupsBegin(ExampleGroup)

sharedExamples(@"a group", ^(NSDictionary *data) {
    
//    __block id object;
//    beforeEach(^{
//        object = [data objectForKey:@"object"];
//    });
    
    // if the above block is uncommented, there is no crash.
    
    it(@"should not crash", ^{
        NSLog(@"you won't get here!");
    });
});

SharedExampleGroupsEnd


SpecBegin(Spec)

describe(@"a spec", ^{
    itShouldBehaveLike(@"a group", ^{
        return @{@"object" : [[NSObject alloc] init] };
    });
});

SpecEnd