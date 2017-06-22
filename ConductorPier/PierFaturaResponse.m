#import "PierFaturaResponse.h"

@implementation PierFaturaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idConta": @"idConta", @"flagEmiteFatura": @"flagEmiteFatura", @"dataVencimentoFatura": @"dataVencimentoFatura", @"valorTotalFatura": @"valorTotalFatura", @"valorFaturaAnterior": @"valorFaturaAnterior", @"valorPagamentoMinimo": @"valorPagamentoMinimo", @"totalComprasNacionais": @"totalComprasNacionais", @"totalComprasInternacionas": @"totalComprasInternacionas", @"totalSaquesNacionais": @"totalSaquesNacionais", @"totalSaquesInternacionais": @"totalSaquesInternacionais", @"totalDebitosNacionais": @"totalDebitosNacionais", @"totalDebitosRecorrentes": @"totalDebitosRecorrentes", @"totalDebitosInternacionais": @"totalDebitosInternacionais", @"totalDebitosDiversosNacionais": @"totalDebitosDiversosNacionais", @"totalDebitosOpcionais": @"totalDebitosOpcionais", @"totalPagamentos": @"totalPagamentos", @"totalCreditosNacionais": @"totalCreditosNacionais", @"totalAjustes": @"totalAjustes", @"totalTarifas": @"totalTarifas", @"totalMulta": @"totalMulta", @"totalJuros": @"totalJuros", @"taxaRotativo": @"taxaRotativo", @"taxaSaque": @"taxaSaque", @"taxaMaximaProximoPeriodo": @"taxaMaximaProximoPeriodo", @"totalServicos": @"totalServicos", @"totalParceladoNacionais": @"totalParceladoNacionais", @"totalParceladoInternacionais": @"totalParceladoInternacionais" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idConta", @"flagEmiteFatura", @"dataVencimentoFatura", @"valorTotalFatura", @"valorFaturaAnterior", @"valorPagamentoMinimo", @"totalComprasNacionais", @"totalComprasInternacionas", @"totalSaquesNacionais", @"totalSaquesInternacionais", @"totalDebitosNacionais", @"totalDebitosRecorrentes", @"totalDebitosInternacionais", @"totalDebitosDiversosNacionais", @"totalDebitosOpcionais", @"totalPagamentos", @"totalCreditosNacionais", @"totalAjustes", @"totalTarifas", @"totalMulta", @"totalJuros", @"taxaRotativo", @"taxaSaque", @"taxaMaximaProximoPeriodo", ];

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
