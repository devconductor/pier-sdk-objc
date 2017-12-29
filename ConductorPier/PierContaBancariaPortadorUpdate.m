#import "PierContaBancariaPortadorUpdate.h"

@implementation PierContaBancariaPortadorUpdate

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"nomeAgencia": @"nomeAgencia", @"banco": @"banco", @"numeroAgencia": @"numeroAgencia", @"digitoAgencia": @"digitoAgencia", @"numeroConta": @"numeroConta", @"digitoConta": @"digitoConta", @"flagAtivo": @"flagAtivo", @"flagContaOrigemDoc": @"flagContaOrigemDoc", @"flagContaPoupanca": @"flagContaPoupanca", @"favorecido": @"favorecido", @"numeroReceiraFederal": @"numeroReceiraFederal", @"titularidade": @"titularidade" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"nomeAgencia", @"digitoAgencia", @"digitoConta", @"titularidade"];

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
