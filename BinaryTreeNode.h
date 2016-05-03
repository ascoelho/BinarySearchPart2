//
//  BinaryTreeNode.h
//  BinarySearch
//
//  Created by Anthony Coelho on 2016-05-03.
//  Copyright © 2016 Vectura. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (nonatomic, strong) NSObject *object;
@property (nonatomic, strong) BinaryTreeNode *leftChild;
@property (nonatomic, strong) BinaryTreeNode *rightChild;
@property (nonatomic, strong) BinaryTreeNode *parent;

-(BOOL)isLeftChildOfParent;

@end
