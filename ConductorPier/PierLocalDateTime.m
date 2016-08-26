#import "PierLocalDateTime.h"

@implementation PierLocalDateTime

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"chronology": @"chronology", @"dayOfMonth": @"dayOfMonth", @"dayOfWeek": @"dayOfWeek", @"dayOfYear": @"dayOfYear", @"hour": @"hour", @"minute": @"minute", @"month": @"month", @"monthValue": @"monthValue", @"nano": @"nano", @"second": @"second", @"year": @"year" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"chronology", @"dayOfMonth", @"dayOfWeek", @"dayOfYear", @"hour", @"minute", @"month", @"monthValue", @"nano", @"second", @"year"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
