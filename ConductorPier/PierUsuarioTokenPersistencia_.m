#import "PierUsuarioTokenPersistencia_.h"

@implementation PierUsuarioTokenPersistencia_

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"cpf": @"cpf", @"email": @"email", @"ddd": @"ddd", @"telefone": @"telefone", @"dataNascimento": @"dataNascimento", @"enviaSMS": @"enviaSMS", @"idTemplateEmail": @"idTemplateEmail", @"idTemplateSMS": @"idTemplateSMS", @"nsu": @"nsu" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cpf", @"email", @"ddd", @"telefone", @"dataNascimento", @"enviaSMS", @"idTemplateEmail", @"idTemplateSMS", @"nsu"];

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
