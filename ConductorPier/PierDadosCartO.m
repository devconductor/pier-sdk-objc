#import "PierDadosCartO.h"

@implementation PierDadosCartO

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"flagVirtual": @"flagVirtual", @"numeroCartao": @"numeroCartao", @"dataValidade": @"dataValidade", @"cvv2": @"cvv2", @"nomePlastico": @"nomePlastico", @"idConta": @"idConta", @"idCartao": @"idCartao", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorente": @"numeroContaCorente", @"idStatusConta": @"idStatusConta", @"statusConta": @"statusConta", @"idStatusCartao": @"idStatusCartao", @"statusCartao": @"statusCartao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"flagVirtual", @"numeroCartao", @"dataValidade", @"cvv2", @"nomePlastico", @"idConta", @"idCartao", @"numeroAgencia", @"numeroContaCorente", @"idStatusConta", @"statusConta", @"idStatusCartao", @"statusCartao"];

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
