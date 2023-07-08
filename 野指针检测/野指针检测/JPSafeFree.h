//
//  JPSafeFree.h
//  野指针检测
//
//  Created by LJP on 2023/7/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JPSafeFree : NSObject

//系统警告时，用函数释放一些内存
void free_safe_mem(size_t freeNum);

@end

NS_ASSUME_NONNULL_END
