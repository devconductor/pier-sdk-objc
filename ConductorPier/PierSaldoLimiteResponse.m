#import "PierSaldoLimiteResponse.h"

@implementation PierSaldoLimiteResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"disponibCompraNac": @"disponibCompraNac", @"disponibGlobalCredito": @"disponibGlobalCredito", @"disponibParceladoNac": @"disponibParceladoNac", @"disponibParcelasNac": @"disponibParcelasNac", @"disponibSaqueNacGlobal": @"disponibSaqueNacGlobal", @"flagAntecipacao": @"flagAntecipacao", @"limiteCompraNac": @"limiteCompraNac", @"limiteCreditoConcedido": @"limiteCreditoConcedido", @"limiteCreditoDisponivel": @"limiteCreditoDisponivel", @"limiteGlobalCredito": @"limiteGlobalCredito", @"limiteParceladoNac": @"limiteParceladoNac", @"limiteParcelasNac": @"limiteParcelasNac", @"limitePontuacao": @"limitePontuacao", @"limiteSaqueNacGlobal": @"limiteSaqueNacGlobal", @"numeroCiclo": @"numeroCiclo", @"pontosConcedidos": @"pontosConcedidos", @"pontosRemanescentes": @"pontosRemanescentes", @"proximoVencimentoPadrao": @"proximoVencimentoPadrao", @"proximoVencimentoReal": @"proximoVencimentoReal", @"saldoAtualFinal": @"saldoAtualFinal", @"saldoCredor": @"saldoCredor", @"saldoDevedor": @"saldoDevedor", @"saldoDevedorOneroso": @"saldoDevedorOneroso", @"saldoDevedorTotal": @"saldoDevedorTotal", @"saltaExtratoAnterior": @"saltaExtratoAnterior", @"totalDisponivelUtilizacao": @"totalDisponivelUtilizacao", @"totalFuturo": @"totalFuturo", @"valorMinimoExtrato": @"valorMinimoExtrato", @"valorMinimoExtratoOriginal": @"valorMinimoExtratoOriginal", @"vencimentoPadraoAnterior": @"vencimentoPadraoAnterior", @"vencimentoPosProx": @"vencimentoPosProx", @"vencimentoRealAnterior": @"vencimentoRealAnterior" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"disponibCompraNac", @"disponibGlobalCredito", @"disponibParceladoNac", @"disponibParcelasNac", @"disponibSaqueNacGlobal", @"flagAntecipacao", @"limiteCompraNac", @"limiteCreditoConcedido", @"limiteCreditoDisponivel", @"limiteGlobalCredito", @"limiteParceladoNac", @"limiteParcelasNac", @"limitePontuacao", @"limiteSaqueNacGlobal", @"numeroCiclo", @"pontosConcedidos", @"pontosRemanescentes", @"proximoVencimentoPadrao", @"proximoVencimentoReal", @"saldoAtualFinal", @"saldoCredor", @"saldoDevedor", @"saldoDevedorOneroso", @"saldoDevedorTotal", @"saltaExtratoAnterior", @"totalDisponivelUtilizacao", @"totalFuturo", @"valorMinimoExtrato", @"valorMinimoExtratoOriginal", @"vencimentoPadraoAnterior", @"vencimentoPosProx", @"vencimentoRealAnterior"];

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
