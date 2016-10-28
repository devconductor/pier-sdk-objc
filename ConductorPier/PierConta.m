#import "PierConta.h"

@implementation PierConta

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"dataCadastro": @"dataCadastro", @"dataStatusConta": @"dataStatusConta", @"diaVencimento": @"diaVencimento", @"id": @"_id", @"idOrigemComercial": @"idOrigemComercial", @"idPessoa": @"idPessoa", @"idProduto": @"idProduto", @"idStatusConta": @"idStatusConta", @"melhorDiaCompra": @"melhorDiaCompra" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"dataCadastro", @"dataStatusConta", @"diaVencimento", @"_id", @"idOrigemComercial", @"idPessoa", @"idProduto", @"idStatusConta", @"melhorDiaCompra"];

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
