#import "PierAdicionalDetalheResponse.h"

@implementation PierAdicionalDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idConta": @"idConta", @"idPessoa": @"idPessoa", @"nome": @"nome", @"nomeImpresso": @"nomeImpresso", @"numeroReceitaFederal": @"numeroReceitaFederal", @"dataNascimento": @"dataNascimento", @"sexo": @"sexo", @"numeroIdentidade": @"numeroIdentidade", @"orgaoExpedidorIdentidade": @"orgaoExpedidorIdentidade", @"unidadeFederativaIdentidade": @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade", @"idEstadoCivil": @"idEstadoCivil", @"idProfissao": @"idProfissao", @"idNacionalidade": @"idNacionalidade", @"idParentesco": @"idParentesco", @"email": @"email", @"flagAtivo": @"flagAtivo", @"dataCadastroPortador": @"dataCadastroPortador", @"dataCancelamentoPortador": @"dataCancelamentoPortador", @"telefones": @"telefones" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idConta", @"idPessoa", @"nome", @"nomeImpresso", @"numeroReceitaFederal", @"dataNascimento", @"sexo", @"numeroIdentidade", @"orgaoExpedidorIdentidade", @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade", @"idEstadoCivil", @"idProfissao", @"idNacionalidade", @"idParentesco", @"email", @"flagAtivo", @"dataCadastroPortador", @"dataCancelamentoPortador", @"telefones"];

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
