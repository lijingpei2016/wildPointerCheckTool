//
//  JPZombieProxy.h
//  野指针检测
//
//  Created by LJP on 2023/7/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JPZombieProxy : NSProxy

@property (nonatomic, assign) Class originClass;

@end

NS_ASSUME_NONNULL_END
