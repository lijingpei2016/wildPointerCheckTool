//
//  JPZombieProxy.m
//  野指针检测
//
//  Created by LJP on 2023/7/8.
//

#import "JPZombieProxy.h"

#define JPSentException() [self _throwMessageSentExceptionWithSelector:_cmd]

@implementation JPZombieProxy

- (BOOL)respondsToSelector:(SEL)aSelector {
    return [self.originClass instancesRespondToSelector:aSelector];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    return [self.originClass instanceMethodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    [self _throwMessageSentExceptionWithSelector:invocation.selector];
}

- (Class)class {
    JPSentException();
    return nil;
}

- (BOOL)isEqual:(id)object {
    JPSentException();
    return NO;
}

- (NSUInteger)hash {
    JPSentException();
    return 0;
}

- (id)self
{
    JPSentException();
    return nil;
}
- (BOOL)isKindOfClass:(Class)aClass {
    JPSentException();
    return NO;
}

- (BOOL)isMemberOfClass:(Class)aClass {
    JPSentException();
    return NO;
}

- (BOOL)conformsToProtocol:(Protocol *)aProtocol {
    JPSentException();
    return NO;
}

- (BOOL)isProxy {
    JPSentException();
    return NO;
}

- (NSString *)description {
    JPSentException();
    return nil;
}

#pragma mark - MRC
- (instancetype)retain {
    JPSentException();
    return nil;
}

- (oneway void)release {
    JPSentException();
}

- (void)dealloc
{
    JPSentException();
    [super dealloc];
}

- (NSUInteger)retainCount {
    JPSentException();
    return 0;
}

- (struct _NSZone *)zone {
    JPSentException();
    return nil;
}

- (void)_throwMessageSentExceptionWithSelector:(SEL)selector {
    [[NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"(-[%@ %@]) was sent to a zombie object at address: %p", NSStringFromClass(self.originClass), NSStringFromSelector(selector), self] userInfo:nil] raise];
}

@end
