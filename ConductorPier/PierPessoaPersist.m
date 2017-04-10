#import "PierPessoaPersist.h"

@implementation PierPessoaPersist

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"cpf": @"cpf", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade", @"dataNascimento": @"dataNascimento", @"email": @"email", @"estadoCivil": @"estadoCivil", @"nacionalidade": @"nacionalidade", @"nome": @"nome", @"numeroIdentidade": @"numeroIdentidade", @"orgaoExpedidorIdentidade": @"orgaoExpedidorIdentidade", @"profissao": @"profissao", @"sexo": @"sexo", @"telefones": @"telefones", @"unidadeFederativaIdentidade": @"unidadeFederativaIdentidade" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cpf", @"dataEmissaoIdentidade", @"dataNascimento", @"email", @"estadoCivil", @"nacionalidade", @"numeroIdentidade", @"orgaoExpedidorIdentidade", @"profissao", @"sexo", @"telefones", @"unidadeFederativaIdentidade"];

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
