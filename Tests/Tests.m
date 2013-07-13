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
    
    __block id object;
    
//    beforeEach(^{
//        object = [data objectForKey:@"object"];
//    });
    
    
    it(@"should not crash", ^{
        NSLog(@"you won't get here!");
//        NSLog(@"object is %@", object);
    });
    
    it(@"should be a different object", ^{
//         NSLog(@"object is %@", [data objectForKey:@"object"]);
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