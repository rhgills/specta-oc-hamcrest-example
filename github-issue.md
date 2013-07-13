# itShouldBehaveLike, when passed a block, assumes that the sharedExample contains a block capturing NSDictionary *data

The attached code, reproduced below for your convenience, crashes unless you uncomment the beforeEach block to capture the data dictionary. By the time itShouldBehaveLike attempts to access the autoreleased data dictionary it creates it has already been released.


    SharedExampleGroupsBegin(ExampleGroup)
    
    sharedExamples(@"a group", ^(NSDictionary *data) {
        
        __block id object;
        
    //    beforeEach(^{
    //        object = [data objectForKey:@"object"];
    //    });
    
        
        it(@"should not crash", ^{
          NSLog(@"you won't get here!");
        });
    });
    
    SharedExampleGroupsEnd
    
    
    
    SpecBegin(Spec)
    
    describe(@"a spec", ^{
        itShouldBehaveLike(@"a group", ^{
            return @{};
        });
    });
    
    SpecEnd



In my case, I encountered this bug because I was unsure if, inside a sharedExample, initialization of instance variables belonged in a beforeEach block or in the sharedExamples block itself. Perhaps the documentation should be improved to make this more obvious (although in hindsight, of course, it makes perfect sense).
