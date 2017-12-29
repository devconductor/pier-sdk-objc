#import "PierTaxasRefinanciamentoResponse.h"

@implementation PierTaxasRefinanciamentoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idConta": @"idConta", @"idProduto": @"idProduto", @"idPlanoConta": @"idPlanoConta", @"idPlanoPct": @"idPlanoPct", @"idPlanoCreditoTaxa": @"idPlanoCreditoTaxa", @"dataEntrada": @"dataEntrada", @"vencimento": @"vencimento", @"recuperacaoEncargosFinanceiros": @"recuperacaoEncargosFinanceiros", @"comissaoGarantia": @"comissaoGarantia", @"agenciamento": @"agenciamento", @"taxaMaximaProximoPeriodo": @"taxaMaximaProximoPeriodo", @"taxaEncargosFinanciamento": @"taxaEncargosFinanciamento", @"taxaMaximaSaque": @"taxaMaximaSaque", @"taxaSaque": @"taxaSaque", @"taxaMaximaCompraJuros": @"taxaMaximaCompraJuros", @"taxaCompraJuros": @"taxaCompraJuros", @"taxaPermanencia": @"taxaPermanencia", @"taxaRefinanciamento": @"taxaRefinanciamento", @"taxaRecuperacaoRefinanciamento": @"taxaRecuperacaoRefinanciamento", @"taxaPercCalcPagamentoMinimo": @"taxaPercCalcPagamentoMinimo", @"planoTaxaDefault": @"planoTaxaDefault" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idConta", @"idProduto", @"idPlanoConta", @"idPlanoPct", @"idPlanoCreditoTaxa", @"dataEntrada", @"vencimento", @"recuperacaoEncargosFinanceiros", @"comissaoGarantia", @"agenciamento", @"taxaMaximaProximoPeriodo", @"taxaEncargosFinanciamento", @"taxaMaximaSaque", @"taxaSaque", @"taxaMaximaCompraJuros", @"taxaCompraJuros", @"taxaPermanencia", @"taxaRefinanciamento", @"taxaRecuperacaoRefinanciamento", @"taxaPercCalcPagamentoMinimo", @"planoTaxaDefault"];

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
