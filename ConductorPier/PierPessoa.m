#import "PierPessoa.h"

@implementation PierPessoa

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"nome": @"nome", @"tipo": @"tipo", @"cpf": @"cpf", @"cnpj": @"cnpj", @"dataNascimento": @"dataNascimento", @"numeroIdentidade": @"numeroIdentidade", @"orgaoExpedidorIdentidade": @"orgaoExpedidorIdentidade", @"sexo": @"sexo", @"unidadeFederativaIdentidade": @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cpf", @"cnpj", @"dataNascimento", @"numeroIdentidade", @"orgaoExpedidorIdentidade", @"sexo", @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade"];

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
