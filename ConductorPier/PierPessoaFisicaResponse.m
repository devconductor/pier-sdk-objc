#import "PierPessoaFisicaResponse.h"

@implementation PierPessoaFisicaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"bairro": @"bairro", @"cep": @"cep", @"cidade": @"cidade", @"complementoLogradouro": @"complementoLogradouro", @"cpf": @"cpf", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade", @"dataNascimento": @"dataNascimento", @"dddcelular": @"dddcelular", @"dddtelefone": @"dddtelefone", @"endereco": @"endereco", @"idPessoaFisica": @"idPessoaFisica", @"identidade": @"identidade", @"nome": @"nome", @"numeroCelular": @"numeroCelular", @"numeroLogradouro": @"numeroLogradouro", @"numeroTelefone": @"numeroTelefone", @"orgaoEmissor": @"orgaoEmissor", @"sexo": @"sexo", @"uf": @"uf" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"bairro", @"cep", @"cidade", @"complementoLogradouro", @"cpf", @"dataEmissaoIdentidade", @"dataNascimento", @"dddcelular", @"dddtelefone", @"endereco", @"idPessoaFisica", @"identidade", @"nome", @"numeroCelular", @"numeroLogradouro", @"numeroTelefone", @"orgaoEmissor", @"sexo", @"uf"];

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
