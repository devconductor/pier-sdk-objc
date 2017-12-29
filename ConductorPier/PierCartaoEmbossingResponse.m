#import "PierCartaoEmbossingResponse.h"

@implementation PierCartaoEmbossingResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"flagVirtual": @"flagVirtual", @"idConta": @"idConta", @"idPessoa": @"idPessoa", @"idCartao": @"idCartao", @"idBandeira": @"idBandeira", @"idTipoCartao": @"idTipoCartao", @"dataGeracao": @"dataGeracao", @"dataValidade": @"dataValidade", @"nomeOrigemComercial": @"nomeOrigemComercial", @"cpf": @"cpf" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"flagVirtual", @"idConta", @"idPessoa", @"idCartao", @"idBandeira", @"idTipoCartao", @"dataGeracao", @"dataValidade", @"nomeOrigemComercial", @"cpf"];

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
