//
//  NHArrowViewTests.m
//  NHArrowViewTests
//
//  Created by Nathaniel Hamming on 02/02/2015.
//  Copyright (c) 2014 Nathaniel Hamming. All rights reserved.
//

#import <NHArrowView/NHArrowView.h>

SpecBegin(ArrowSpecs)

describe(@"Arrow rotation", ^{
    it(@"presents arrow view default angle", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        expect(view).to.haveValidSnapshot();
    });
    
    it(@"rotates arrow to 45 degrees", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        [view animatedRotateToRadian:DEGREES_TO_RADIANS(45.)];
        expect([NSString stringWithFormat:@"%0.6f", view.transform.a]).to.equal(@"0.707107");
        expect([NSString stringWithFormat:@"%0.6f", view.transform.b]).to.equal(@"0.707107");
        expect([NSString stringWithFormat:@"%0.6f", view.transform.c]).to.equal(@"-0.707107");
        expect([NSString stringWithFormat:@"%0.6f", view.transform.d]).to.equal(@"0.707107");
        waitUntil(^(DoneCallback done) {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, (unsigned long) NULL), ^(void) {
                [NSThread sleepForTimeInterval:1.0];
                expect(view).to.to.haveValidSnapshotNamed(@"ArrowViewColourRedDegree45");
                done();
            });
        });
    });
    
    it(@"rotates arrow to 90 degrees", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        [view animatedRotateToDegree:90.];
        // rounding a and d here, since they return a near-zero value
        expect(round(view.transform.a)).to.equal(0);
        expect(view.transform.b).to.equal(1);
        expect(view.transform.c).to.equal(-1);
        expect(round(view.transform.d)).to.equal(0);
    });
});

describe(@"Arrow style", ^{
    it(@"arrow green colour", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        view.strokeColor = [UIColor greenColor];
        view.fillColor = [UIColor greenColor];
        expect(view).to.haveValidSnapshot();
    });
    
    it(@"arrow with long head", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        view.headLength = 50.;
        expect(view).to.haveValidSnapshot();
    });
    
    it(@"arrow with wide head", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        view.headWidth = 50.;
        expect(view).to.haveValidSnapshot();
    });
    
    it(@"arrow with wide tail", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        view.tailWidth = 50.;
        expect(view).to.haveValidSnapshot();
    });
    
    it(@"arrow with thick stroke", ^{
        NHArrowView *view = [[NHArrowView alloc] initWithFrame:CGRectMake(0, 0, 150, 150)];
        view.strokeWidth = 10.;
        expect(view).to.haveValidSnapshot();
    });
});

SpecEnd
