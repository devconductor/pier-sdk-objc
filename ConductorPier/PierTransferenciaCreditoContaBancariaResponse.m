#import "PierTransferenciaCreditoContaBancariaResponse.h"

@implementation PierTransferenciaCreditoContaBancariaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idTransferencia": @"idTransferencia", @"valorCET": @"valorCET", @"idAutorizacao": @"idAutorizacao", @"codigoAutorizacao": @"codigoAutorizacao", @"nsuOrigem": @"nsuOrigem", @"idConta": @"idConta", @"idCartao": @"idCartao", @"idOperacao": @"idOperacao", @"valorCompra": @"valorCompra", @"valorParcela": @"valorParcela", @"valorContrato": @"valorContrato", @"numeroParcelas": @"numeroParcelas", @"valorIOF": @"valorIOF", @"valorTAC": @"valorTAC", @"valorTaxaSaque": @"valorTaxaSaque", @"taxaJuros": @"taxaJuros", @"dataCompra": @"dataCompra", @"dataMovimento": @"dataMovimento", @"dataVencimentoReal": @"dataVencimentoReal", @"dataVencimentoPadrao": @"dataVencimentoPadrao", @"dataAutorizacao": @"dataAutorizacao", @"banco": @"banco", @"numeroAgencia": @"numeroAgencia", @"digitoAgencia": @"digitoAgencia", @"numeroConta": @"numeroConta", @"digitoConta": @"digitoConta", @"flagContaPoupanca": @"flagContaPoupanca", @"documentoFavorecido": @"documentoFavorecido", @"nomeFavorecido": @"nomeFavorecido", @"status": @"status", @"statusProcessamento": @"statusProcessamento" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idTransferencia", @"valorCET", @"idAutorizacao", @"codigoAutorizacao", @"nsuOrigem", @"idConta", @"idCartao", @"idOperacao", @"valorCompra", @"valorParcela", @"valorContrato", @"numeroParcelas", @"valorIOF", @"valorTAC", @"valorTaxaSaque", @"taxaJuros", @"dataCompra", @"dataMovimento", @"dataVencimentoReal", @"dataVencimentoPadrao", @"dataAutorizacao", @"banco", @"numeroAgencia", @"digitoAgencia", @"numeroConta", @"digitoConta", @"flagContaPoupanca", @"documentoFavorecido", @"nomeFavorecido", @"status", @"statusProcessamento"];

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
