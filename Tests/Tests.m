//
//  Tests.m
//  Tests
//
//  Created by Robert Gilliam on 6/17/13.
//  Copyright (c) 2013 Robert Gilliam. All rights reserved.
//

#import <Specta.h>
#define HC_SHORTHAND
#import <OCHamcrest.h>

SharedExampleGroupsBegin(ExampleGroup)

sharedExamples(@"a group", ^(NSDictionary *data) {
    
    __block id object;
    beforeEach(^{
        object = [data objectForKey:@"object"];
    });
    
    it(@"should succeed with OCHamcrest inside an example group", ^{
        assertThatBool(NO, equalToBool(NO));
    });
    
    it(@"should fail with OCHamcrest inside an example group", ^{
        assertThatBool(NO, equalToBool(YES));
    });
});

SharedExampleGroupsEnd


SpecBegin(Spec)

describe(@"a spec", ^{
    itShouldBehaveLike(@"a group", ^{
        return @{@"object" : [[NSObject alloc] init] };
    });
    
    it(@"should succeed with OCHamcrest", ^{
        assertThatBool(NO, equalToBool(NO));
    });
    
    it(@"should fail with OCHamcrest", ^{
        assertThatBool(NO, equalToBool(YES));
    });
});

SpecEnd