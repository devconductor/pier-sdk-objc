#import "PierSocioAprovadoResponse.h"

@implementation PierSocioAprovadoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"nome": @"nome", @"cpf": @"cpf", @"dataNascimento": @"dataNascimento", @"sexo": @"sexo", @"numeroIdentidade": @"numeroIdentidade", @"orgaoExpedidorIdentidade": @"orgaoExpedidorIdentidade", @"unidadeFederativaIdentidade": @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade", @"estadoCivil": @"estadoCivil", @"profissao": @"profissao", @"nacionalidade": @"nacionalidade", @"email": @"email", @"telefones": @"telefones" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"nome", @"cpf", @"dataNascimento", @"sexo", @"numeroIdentidade", @"orgaoExpedidorIdentidade", @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade", @"estadoCivil", @"profissao", @"nacionalidade", @"email", @"telefones"];

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
