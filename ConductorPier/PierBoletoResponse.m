#import "PierBoletoResponse.h"

@implementation PierBoletoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"numeroDoDocumento": @"numeroDoDocumento", @"dataProcessamento": @"dataProcessamento", @"dataDocumento": @"dataDocumento", @"dataVencimento": @"dataVencimento", @"dataFechamento": @"dataFechamento", @"valorBoleto": @"valorBoleto", @"nomeBeneficiario": @"nomeBeneficiario", @"documentoBeneficiario": @"documentoBeneficiario", @"agencia": @"agencia", @"codigoBeneficiario": @"codigoBeneficiario", @"numeroConvenio": @"numeroConvenio", @"digitoCodigoBeneficiario": @"digitoCodigoBeneficiario", @"carteira": @"carteira", @"nossoNumero": @"nossoNumero", @"digitoNossoNumero": @"digitoNossoNumero", @"banco": @"banco", @"aceite": @"aceite", @"especieDoDocumento": @"especieDoDocumento", @"especie": @"especie", @"instrucoes": @"instrucoes", @"locaisDePagamento": @"locaisDePagamento", @"nomePagador": @"nomePagador", @"documentoPagador": @"documentoPagador", @"logradouroPagador": @"logradouroPagador", @"bairroPagador": @"bairroPagador", @"cepPagador": @"cepPagador", @"cidadePagador": @"cidadePagador", @"ufPagador": @"ufPagador", @"codigoDeBarras": @"codigoDeBarras", @"linhaDigitavel": @"linhaDigitavel", @"id": @"_id", @"idConta": @"idConta", @"enderecoCobrancaBeneficiario": @"enderecoCobrancaBeneficiario", @"status": @"status" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"numeroDoDocumento", @"dataProcessamento", @"dataDocumento", @"dataVencimento", @"dataFechamento", @"valorBoleto", @"nomeBeneficiario", @"documentoBeneficiario", @"agencia", @"codigoBeneficiario", @"numeroConvenio", @"digitoCodigoBeneficiario", @"carteira", @"nossoNumero", @"digitoNossoNumero", @"banco", @"aceite", @"especieDoDocumento", @"especie", @"instrucoes", @"locaisDePagamento", @"nomePagador", @"documentoPagador", @"logradouroPagador", @"bairroPagador", @"cepPagador", @"cidadePagador", @"ufPagador", @"codigoDeBarras", @"linhaDigitavel", @"_id", @"idConta", @"enderecoCobrancaBeneficiario", @"status"];

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
