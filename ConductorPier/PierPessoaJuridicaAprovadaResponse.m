#import "PierPessoaJuridicaAprovadaResponse.h"

@implementation PierPessoaJuridicaAprovadaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"razaoSocial": @"razaoSocial", @"nomeFantasia": @"nomeFantasia", @"cnpj": @"cnpj", @"inscricaoEstadual": @"inscricaoEstadual", @"dataAberturaEmpresa": @"dataAberturaEmpresa", @"idOrigemComercial": @"idOrigemComercial", @"idProduto": @"idProduto", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorrente": @"numeroContaCorrente", @"email": @"email", @"diaVencimento": @"diaVencimento", @"nomeImpresso": @"nomeImpresso", @"idConta": @"idConta", @"idProposta": @"idProposta", @"canalEntrada": @"canalEntrada", @"valorPontuacao": @"valorPontuacao", @"telefones": @"telefones", @"enderecos": @"enderecos", @"socios": @"socios", @"referencias": @"referencias", @"limiteGlobal": @"limiteGlobal", @"limiteMaximo": @"limiteMaximo", @"limiteParcelas": @"limiteParcelas" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"razaoSocial", @"nomeFantasia", @"cnpj", @"inscricaoEstadual", @"dataAberturaEmpresa", @"idOrigemComercial", @"idProduto", @"numeroAgencia", @"numeroContaCorrente", @"email", @"diaVencimento", @"nomeImpresso", @"idConta", @"idProposta", @"canalEntrada", @"valorPontuacao", @"telefones", @"enderecos", @"socios", @"referencias", ];

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
