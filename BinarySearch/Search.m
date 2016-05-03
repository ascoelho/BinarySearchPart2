//
//  Search.m
//  BinarySearch
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import "Search.h"

@implementation Search


//-(int)binarySearch:(NSMutableArray *)array andTargetNumber:(NSNumber *)target;
//{
//    
//
//}

- (NSNumber *)binarySearch:(NSMutableArray *)array withTarget:(NSNumber *)target minIndex:(NSNumber *)minIndex maxIndex:(NSNumber *)maxIndex {
    
    int midIndex = (minIndex.intValue + maxIndex.intValue) / 2;
    
    int itemAtMidIndex = [[array objectAtIndex:midIndex] intValue];
    
    NSNumber *evaluation;
    
    //NSLog(@"%d",itemAtMidIndex);
    
//    if (maxIndex.intValue > minIndex.intValue) {
//        return @(-1);
//    }
    if (maxIndex.intValue < minIndex.intValue){
        
        evaluation = @(-1);
    }
    else if (itemAtMidIndex < target.intValue) {
        evaluation = [self binarySearch:array withTarget:target minIndex:[NSNumber numberWithInt:(midIndex + 1)] maxIndex:maxIndex];
    }
    else if (itemAtMidIndex > target.intValue){
        evaluation = [self binarySearch:array withTarget:target minIndex:minIndex maxIndex:[NSNumber numberWithInt:(midIndex - 1)]];
    }
    else{
        evaluation = [NSNumber numberWithInt: itemAtMidIndex];
    }
    
    return evaluation;
    
    
    
}

@end
