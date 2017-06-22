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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"dataProcessamento": @"dataProcessamento", @"dataDocumento": @"dataDocumento", @"dataVencimento": @"dataVencimento", @"valorBoleto": @"valorBoleto", @"numeroDoDocumento": @"numeroDoDocumento", @"nomeBeneficiario": @"nomeBeneficiario", @"agencia": @"agencia", @"codigoBeneficiario": @"codigoBeneficiario", @"digitoCodigoBeneficiario": @"digitoCodigoBeneficiario", @"numeroConvenio": @"numeroConvenio", @"carteira": @"carteira", @"nossoNumero": @"nossoNumero", @"banco": @"banco", @"digitoNossoNumero": @"digitoNossoNumero", @"aceite": @"aceite", @"especieDoDocumento": @"especieDoDocumento", @"especie": @"especie", @"instrucoes": @"instrucoes", @"locaisDePagamento": @"locaisDePagamento", @"nomePagador": @"nomePagador", @"documentoBeneficiario": @"documentoBeneficiario", @"documentoPagador": @"documentoPagador", @"logradouroPagador": @"logradouroPagador", @"bairroPagador": @"bairroPagador", @"cepPagador": @"cepPagador", @"cidadePagador": @"cidadePagador", @"ufPagador": @"ufPagador", @"codigoDeBarras": @"codigoDeBarras", @"linhaDigitavel": @"linhaDigitavel" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"dataProcessamento", @"dataDocumento", @"dataVencimento", @"valorBoleto", @"numeroDoDocumento", @"nomeBeneficiario", @"agencia", @"codigoBeneficiario", @"digitoCodigoBeneficiario", @"numeroConvenio", @"carteira", @"nossoNumero", @"banco", @"digitoNossoNumero", @"aceite", @"especieDoDocumento", @"especie", @"instrucoes", @"locaisDePagamento", @"nomePagador", @"documentoBeneficiario", @"documentoPagador", @"logradouroPagador", @"bairroPagador", @"cepPagador", @"cidadePagador", @"ufPagador", @"codigoDeBarras", @"linhaDigitavel"];

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
