//
//  XYZPerson.h
//  ExerciseObjectiveCProject
//
//  Created by He Wu on 2022/11/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYZPerson : NSObject

@property (readonly) NSString *firstName;
@property (readonly) NSString *lastName;
@property (readonly) NSDate *dateOfBirth;

+ (id)person;
- (void)sayHello;
- (void)saySomething: (NSString *)greeting;

@end

NS_ASSUME_NONNULL_END
