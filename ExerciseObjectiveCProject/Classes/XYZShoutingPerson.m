//
//  XYZShoutingPerson.m
//  ExerciseObjectiveCProject
//
//  Created by He Wu on 2022/11/20.
//

#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)greeting {
    NSString *uppercaseGreeting = [greeting uppercaseString];
    NSLog(@"%@", uppercaseGreeting);
    [super saySomething:uppercaseGreeting];
}

@end
