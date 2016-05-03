//
//  main.m
//  BinarySearch
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Search.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *numbers = [[NSMutableArray alloc] init];
        int i;
        //populate array
        for (i=0; i < 1000000; i++ ){
            
            [numbers addObject:@(i)];
        }
        
    
        
        //start timer
        NSDate *methodStart = [NSDate date];
        
        NSNumber *searchNum = @(12);
        
        //search funtion here
        Search *binarySearch = [[Search alloc] init];
        NSLog(@"%@",[binarySearch binarySearch:numbers withTarget:searchNum minIndex:@(0) maxIndex:@(numbers.count -1)]);


        //end timer
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
        NSLog(@"executionTime = %f", executionTime);
    }
    return 0;
}



