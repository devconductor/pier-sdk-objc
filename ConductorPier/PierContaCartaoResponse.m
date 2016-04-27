#import "PierContaCartaoResponse.h"

@implementation PierContaCartaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"cnpjLoja": @"cnpjLoja", @"cpf": @"cpf", @"dataCadastroConta": @"dataCadastroConta", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade", @"dataNascimento": @"dataNascimento", @"dddCelular": @"dddCelular", @"idConta": @"idConta", @"nome": @"nome", @"numeroCelular": @"numeroCelular", @"numeroIdentidade": @"numeroIdentidade", @"orgaoIdentidade": @"orgaoIdentidade", @"possuiCompraAprovada": @"possuiCompraAprovada", @"statusConta": @"statusConta", @"ufIdentidade": @"ufIdentidade" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cnpjLoja", @"cpf", @"dataCadastroConta", @"dataEmissaoIdentidade", @"dataNascimento", @"dddCelular", @"idConta", @"nome", @"numeroCelular", @"numeroIdentidade", @"orgaoIdentidade", @"possuiCompraAprovada", @"statusConta", @"ufIdentidade"];

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
