//
//  XYZPerson.m
//  ExerciseObjectiveCProject
//
//  Created by He Wu on 2022/11/20.
//

#import "XYZPerson.h"

@implementation XYZPerson

+ (id)person {
    return [[self alloc] init];
}

- (void)sayHello {
    NSLog(@"Hello, World!");
    [self saySomething:@"Say Something: Hello World!"];
}

- (void)saySomething:(NSString *)greeting {
    NSLog(@"%@", greeting);
}

@end
