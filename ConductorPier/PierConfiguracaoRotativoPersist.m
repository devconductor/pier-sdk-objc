#import "PierConfiguracaoRotativoPersist.h"

@implementation PierConfiguracaoRotativoPersist

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idProduto": @"idProduto", @"compoeOfertaValorRotativo": @"compoeOfertaValorRotativo", @"compoeOfertaValorNaoFinanciavel": @"compoeOfertaValorNaoFinanciavel", @"compoeOfertaValorNovosLancamentos": @"compoeOfertaValorNovosLancamentos", @"recalculaParcelamentoParaEntradaMaior": @"recalculaParcelamentoParaEntradaMaior", @"minimoParcelasRecalculoParcelamento": @"minimoParcelasRecalculoParcelamento", @"recalculaParcelamento": @"recalculaParcelamento", @"numeroMinimoOfertas": @"numeroMinimoOfertas", @"aceitaPagamentoMaiorQueEntrada": @"aceitaPagamentoMaiorQueEntrada", @"antecipaParcelamentosAbertos": @"antecipaParcelamentosAbertos", @"valorMinimoParcela": @"valorMinimoParcela", @"percentualLimitarValorMinimoParcela": @"percentualLimitarValorMinimoParcela", @"idRegraCampanha": @"idRegraCampanha", @"parcelarApenasMinimo": @"parcelarApenasMinimo", @"usuario": @"usuario" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idProduto", @"compoeOfertaValorRotativo", @"compoeOfertaValorNaoFinanciavel", @"compoeOfertaValorNovosLancamentos", @"recalculaParcelamentoParaEntradaMaior", @"minimoParcelasRecalculoParcelamento", @"recalculaParcelamento", @"numeroMinimoOfertas", @"aceitaPagamentoMaiorQueEntrada", @"antecipaParcelamentosAbertos", @"valorMinimoParcela", @"percentualLimitarValorMinimoParcela", @"idRegraCampanha", @"parcelarApenasMinimo", @"usuario"];

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
