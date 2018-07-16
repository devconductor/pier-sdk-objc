#import "PierTransacaoNaoProcessadaResponse.h"

@implementation PierTransacaoNaoProcessadaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"cartaoMascarado": @"cartaoMascarado", @"codigoAutorizacao": @"codigoAutorizacao", @"codigoMCC": @"codigoMCC", @"codigoMoedaDestino": @"codigoMoedaDestino", @"codigoMoedaOrigem": @"codigoMoedaOrigem", @"codigoReferencia": @"codigoReferencia", @"codigoTerminal": @"codigoTerminal", @"cotacaoUSD": @"cotacaoUSD", @"dataCotacaoUSD": @"dataCotacaoUSD", @"dataFaturamento": @"dataFaturamento", @"dataOrigem": @"dataOrigem", @"dataVencimentoReal": @"dataVencimentoReal", @"descricaoAbreviada": @"descricaoAbreviada", @"descricaoTipoTransacaoNaoProcessada": @"descricaoTipoTransacaoNaoProcessada", @"detalhesTransacao": @"detalhesTransacao", @"flagCredito": @"flagCredito", @"flagFaturado": @"flagFaturado", @"grupoDescricaoMCC": @"grupoDescricaoMCC", @"grupoMCC": @"grupoMCC", @"idConta": @"idConta", @"idEstabelecimento": @"idEstabelecimento", @"idTipoTransacaoNaoProcessada": @"idTipoTransacaoNaoProcessada", @"idTransacaoEstorno": @"idTransacaoEstorno", @"localidadeEstabelecimento": @"localidadeEstabelecimento", @"modoEntradaTransacao": @"modoEntradaTransacao", @"nomeEstabelecimento": @"nomeEstabelecimento", @"nomeFantasiaEstabelecimento": @"nomeFantasiaEstabelecimento", @"nomePortador": @"nomePortador", @"parcela": @"parcela", @"plano": @"plano", @"status": @"status", @"taxaEmbarque": @"taxaEmbarque", @"valorBRL": @"valorBRL", @"valorEntrada": @"valorEntrada", @"valorUSD": @"valorUSD" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"cartaoMascarado", @"codigoAutorizacao", @"codigoMCC", @"codigoMoedaDestino", @"codigoMoedaOrigem", @"codigoReferencia", @"codigoTerminal", @"cotacaoUSD", @"dataCotacaoUSD", @"dataFaturamento", @"dataOrigem", @"dataVencimentoReal", @"descricaoAbreviada", @"descricaoTipoTransacaoNaoProcessada", @"detalhesTransacao", @"flagCredito", @"flagFaturado", @"grupoDescricaoMCC", @"grupoMCC", @"idConta", @"idEstabelecimento", @"idTipoTransacaoNaoProcessada", @"idTransacaoEstorno", @"localidadeEstabelecimento", @"modoEntradaTransacao", @"nomeEstabelecimento", @"nomeFantasiaEstabelecimento", @"nomePortador", @"parcela", @"plano", @"status", @"taxaEmbarque", @"valorBRL", @"valorEntrada", @"valorUSD"];

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
