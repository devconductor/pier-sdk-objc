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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idProduto": @"idProduto", @"idOrigemComercial": @"idOrigemComercial", @"idPessoa": @"idPessoa", @"idStatusConta": @"idStatusConta", @"diaVencimento": @"diaVencimento", @"melhorDiaCompra": @"melhorDiaCompra", @"dataStatusConta": @"dataStatusConta", @"dataCadastro": @"dataCadastro", @"dataUltimaAlteracaoVencimento": @"dataUltimaAlteracaoVencimento" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idProduto", @"idOrigemComercial", @"idPessoa", @"idStatusConta", @"diaVencimento", @"melhorDiaCompra", @"dataStatusConta", @"dataCadastro", @"dataUltimaAlteracaoVencimento"];

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
