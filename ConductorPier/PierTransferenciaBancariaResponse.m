#import "PierTransferenciaBancariaResponse.h"

@implementation PierTransferenciaBancariaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"nsuorigem": @"nsuorigem", @"idAutorizacao": @"idAutorizacao", @"idTransferencia": @"idTransferencia", @"codigoAutorizacao": @"codigoAutorizacao", @"dataAutorizacao": @"dataAutorizacao", @"origem": @"origem", @"valor": @"valor", @"idOperacao": @"idOperacao", @"terminal": @"terminal", @"idCartao": @"idCartao", @"dataCompra": @"dataCompra", @"valorCompra": @"valorCompra", @"numeroParcelas": @"numeroParcelas", @"valorParcela": @"valorParcela", @"idEstabelecimento": @"idEstabelecimento", @"dataMovimento": @"dataMovimento", @"valorContrato": @"valorContrato", @"taxaJuros": @"taxaJuros", @"valorIOF": @"valorIOF", @"valorTAC": @"valorTAC", @"idConta": @"idConta", @"valorEntrada": @"valorEntrada", @"dataVencimentoReal": @"dataVencimentoReal", @"dataVencimentoPadrao": @"dataVencimentoPadrao", @"idContaPortador": @"idContaPortador", @"numeroEstabelecimento": @"numeroEstabelecimento", @"valorTaxaSaque": @"valorTaxaSaque" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"nsuorigem", @"idAutorizacao", @"idTransferencia", @"codigoAutorizacao", @"dataAutorizacao", @"origem", @"valor", @"idOperacao", @"terminal", @"idCartao", @"dataCompra", @"valorCompra", @"numeroParcelas", @"valorParcela", @"idEstabelecimento", @"dataMovimento", @"valorContrato", @"taxaJuros", @"valorIOF", @"valorTAC", @"idConta", @"valorEntrada", @"dataVencimentoReal", @"dataVencimentoPadrao", @"idContaPortador", @"numeroEstabelecimento", @"valorTaxaSaque"];

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
