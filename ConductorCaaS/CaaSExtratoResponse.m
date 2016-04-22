#import "CaaSExtratoResponse.h"

@implementation CaaSExtratoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"cartao": @"cartao", @"chip": @"chip", @"cidadeUFPais": @"cidadeUFPais", @"codigoAutorizacao": @"codigoAutorizacao", @"codigoMoeda": @"codigoMoeda", @"codigoMoedaDestino": @"codigoMoedaDestino", @"cotacaoDolar": @"cotacaoDolar", @"credito": @"credito", @"dataCompra": @"dataCompra", @"dataCotacaoDolar": @"dataCotacaoDolar", @"dataEntradaCompra": @"dataEntradaCompra", @"dataTransacaoUTC": @"dataTransacaoUTC", @"debito": @"debito", @"descricaoModoEntrada": @"descricaoModoEntrada", @"descricaoTransacao": @"descricaoTransacao", @"encargosFinanceiros": @"encargosFinanceiros", @"historico": @"historico", @"idEventoExterno": @"idEventoExterno", @"idTipoTransacao": @"idTipoTransacao", @"idTransacao": @"idTransacao", @"mcc": @"mcc", @"nomeEstabVisa": @"nomeEstabVisa", @"nomePlastico": @"nomePlastico", @"numeroEstabelecimento": @"numeroEstabelecimento", @"origem": @"origem", @"taxaEmbarque": @"taxaEmbarque", @"tipoEvento": @"tipoEvento", @"valorDolar": @"valorDolar" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cartao", @"chip", @"cidadeUFPais", @"codigoAutorizacao", @"codigoMoeda", @"codigoMoedaDestino", @"cotacaoDolar", @"credito", @"dataCompra", @"dataCotacaoDolar", @"dataEntradaCompra", @"dataTransacaoUTC", @"debito", @"descricaoModoEntrada", @"descricaoTransacao", @"encargosFinanceiros", @"historico", @"idEventoExterno", @"idTipoTransacao", @"idTransacao", @"mcc", @"nomeEstabVisa", @"nomePlastico", @"numeroEstabelecimento", @"origem", @"taxaEmbarque", @"tipoEvento", @"valorDolar"];

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
