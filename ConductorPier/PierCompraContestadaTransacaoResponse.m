#import "PierCompraContestadaTransacaoResponse.h"

@implementation PierCompraContestadaTransacaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"agingCompras": @"agingCompras", @"agingContestacao": @"agingContestacao", @"bandeira": @"bandeira", @"codigoAutorizacao": @"codigoAutorizacao", @"codigoContestacao": @"codigoContestacao", @"codigoEventoCompra": @"codigoEventoCompra", @"codigoMoedaDestino": @"codigoMoedaDestino", @"data2Reapresentacao": @"data2Reapresentacao", @"dataAlteracao": @"dataAlteracao", @"dataContestacao": @"dataContestacao", @"dataEnvioCB": @"dataEnvioCB", @"dataTransacao": @"dataTransacao", @"historico": @"historico", @"idCompraContestada": @"idCompraContestada", @"internacional": @"internacional", @"mcc": @"mcc", @"modoDeEntradaDescricao": @"modoDeEntradaDescricao", @"modoEntrada": @"modoEntrada", @"motivo2Reapresentacao": @"motivo2Reapresentacao", @"nomeEstabelecimento": @"nomeEstabelecimento", @"numeroControle": @"numeroControle", @"razaoCB": @"razaoCB", @"referenceNumber": @"referenceNumber", @"reporteBandeira": @"reporteBandeira", @"responsavelAbertuda": @"responsavelAbertuda", @"responsavelAlteracao": @"responsavelAlteracao", @"statusContestacao": @"statusContestacao", @"texto2Reapresentacao": @"texto2Reapresentacao", @"tipoTransacao": @"tipoTransacao", @"transacaoSegura": @"transacaoSegura", @"valorCompra": @"valorCompra", @"valorContrato": @"valorContrato", @"valorDestino": @"valorDestino" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"agingCompras", @"agingContestacao", @"bandeira", @"codigoAutorizacao", @"codigoContestacao", @"codigoEventoCompra", @"codigoMoedaDestino", @"data2Reapresentacao", @"dataAlteracao", @"dataContestacao", @"dataEnvioCB", @"dataTransacao", @"historico", @"idCompraContestada", @"internacional", @"mcc", @"modoDeEntradaDescricao", @"modoEntrada", @"motivo2Reapresentacao", @"nomeEstabelecimento", @"numeroControle", @"razaoCB", @"referenceNumber", @"reporteBandeira", @"responsavelAbertuda", @"responsavelAlteracao", @"statusContestacao", @"texto2Reapresentacao", @"tipoTransacao", @"transacaoSegura", @"valorCompra", @"valorContrato", @"valorDestino"];

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
