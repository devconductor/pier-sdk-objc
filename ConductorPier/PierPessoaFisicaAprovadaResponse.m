#import "PierPessoaFisicaAprovadaResponse.h"

@implementation PierPessoaFisicaAprovadaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"nome": @"nome", @"nomeMae": @"nomeMae", @"dataNascimento": @"dataNascimento", @"sexo": @"sexo", @"cpf": @"cpf", @"numeroIdentidade": @"numeroIdentidade", @"orgaoExpedidorIdentidade": @"orgaoExpedidorIdentidade", @"unidadeFederativaIdentidade": @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade": @"dataEmissaoIdentidade", @"idEstadoCivil": @"idEstadoCivil", @"idProfissao": @"idProfissao", @"idNaturezaOcupacao": @"idNaturezaOcupacao", @"idNacionalidade": @"idNacionalidade", @"idOrigemComercial": @"idOrigemComercial", @"idProduto": @"idProduto", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorrente": @"numeroContaCorrente", @"email": @"email", @"diaVencimento": @"diaVencimento", @"nomeImpresso": @"nomeImpresso", @"nomeEmpresa": @"nomeEmpresa", @"idConta": @"idConta", @"idProposta": @"idProposta", @"canalEntrada": @"canalEntrada", @"valorPontuacao": @"valorPontuacao", @"telefones": @"telefones", @"enderecos": @"enderecos", @"limiteGlobal": @"limiteGlobal", @"limiteMaximo": @"limiteMaximo", @"limiteParcelas": @"limiteParcelas", @"limiteConsignado": @"limiteConsignado" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"nomeMae", @"dataNascimento", @"sexo", @"numeroIdentidade", @"orgaoExpedidorIdentidade", @"unidadeFederativaIdentidade", @"dataEmissaoIdentidade", @"idEstadoCivil", @"idProfissao", @"idNaturezaOcupacao", @"idNacionalidade", @"numeroAgencia", @"numeroContaCorrente", @"email", @"nomeImpresso", @"nomeEmpresa", @"idConta", @"idProposta", @"canalEntrada", @"valorPontuacao", @"telefones", ];

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
