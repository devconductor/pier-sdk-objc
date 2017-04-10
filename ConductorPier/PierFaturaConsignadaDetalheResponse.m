#import "PierFaturaConsignadaDetalheResponse.h"

@implementation PierFaturaConsignadaDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idConta": @"idConta", @"limiteGlobal": @"limiteGlobal", @"flagEmiteFatura": @"flagEmiteFatura", @"limiteCompra": @"limiteCompra", @"dataVencimentoFatura": @"dataVencimentoFatura", @"limiteParcelado": @"limiteParcelado", @"limiteParcelas": @"limiteParcelas", @"valorTotalFatura": @"valorTotalFatura", @"valorFaturaAnterior": @"valorFaturaAnterior", @"valorPagamentoMinimo": @"valorPagamentoMinimo", @"valorPagamentoConsignado": @"valorPagamentoConsignado", @"limiteSaqueGlobal": @"limiteSaqueGlobal", @"valorPagamentoComplementar": @"valorPagamentoComplementar", @"limiteSaquePeriodo": @"limiteSaquePeriodo", @"totalComprasNacionais": @"totalComprasNacionais", @"limiteConsignado": @"limiteConsignado", @"totalComprasInternacionas": @"totalComprasInternacionas", @"limiteInternacionalCompra": @"limiteInternacionalCompra", @"totalSaquesNacionais": @"totalSaquesNacionais", @"limiteInternacionalParcelado": @"limiteInternacionalParcelado", @"totalSaquesInternacionais": @"totalSaquesInternacionais", @"limiteInternacionalParcelas": @"limiteInternacionalParcelas", @"totalDebitosNacionais": @"totalDebitosNacionais", @"limiteInternacionalSaqueGlobal": @"limiteInternacionalSaqueGlobal", @"totalDebitosRecorrentes": @"totalDebitosRecorrentes", @"limiteInternacionalSaquePeriodo": @"limiteInternacionalSaquePeriodo", @"totalDebitosInternacionais": @"totalDebitosInternacionais", @"saldoDisponivelGlobal": @"saldoDisponivelGlobal", @"totalDebitosDiversosNacionais": @"totalDebitosDiversosNacionais", @"saldoDisponivelCompra": @"saldoDisponivelCompra", @"totalDebitosOpcionais": @"totalDebitosOpcionais", @"saldoDisponivelParcelado": @"saldoDisponivelParcelado", @"totalPagamentos": @"totalPagamentos", @"saldoDisponivelParcelas": @"saldoDisponivelParcelas", @"totalCreditosNacionais": @"totalCreditosNacionais", @"totalAjustes": @"totalAjustes", @"totalTarifas": @"totalTarifas", @"totalMulta": @"totalMulta", @"saldoDisponivelSaque": @"saldoDisponivelSaque", @"totalJuros": @"totalJuros", @"saldoPontosFidelidade": @"saldoPontosFidelidade", @"taxaRotativo": @"taxaRotativo", @"saldoDisponivelCompraInternacional": @"saldoDisponivelCompraInternacional", @"taxaSaque": @"taxaSaque", @"saldoDisponivelSaqueInternacional": @"saldoDisponivelSaqueInternacional", @"taxaMaximaProximoPeriodo": @"taxaMaximaProximoPeriodo", @"totalServicos": @"totalServicos" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idConta", @"flagEmiteFatura", @"dataVencimentoFatura", @"valorTotalFatura", @"valorFaturaAnterior", @"valorPagamentoMinimo", @"valorPagamentoConsignado", @"valorPagamentoComplementar", @"totalComprasNacionais", @"totalComprasInternacionas", @"totalSaquesNacionais", @"totalSaquesInternacionais", @"totalDebitosNacionais", @"totalDebitosRecorrentes", @"totalDebitosInternacionais", @"totalDebitosDiversosNacionais", @"totalDebitosOpcionais", @"totalPagamentos", @"totalCreditosNacionais", @"totalAjustes", @"totalTarifas", @"totalMulta", @"totalJuros", @"taxaRotativo", @"taxaSaque", @"taxaMaximaProximoPeriodo", ];

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
