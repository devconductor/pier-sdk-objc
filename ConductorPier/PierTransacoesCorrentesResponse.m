#import "PierTransacoesCorrentesResponse.h"

@implementation PierTransacoesCorrentesResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idTipoTransacao": @"idTipoTransacao", @"descricaoAbreviada": @"descricaoAbreviada", @"statusTransacao": @"statusTransacao", @"idEvento": @"idEvento", @"tipoEvento": @"tipoEvento", @"idConta": @"idConta", @"cartaoMascarado": @"cartaoMascarado", @"nomePortador": @"nomePortador", @"dataTransacaoUTC": @"dataTransacaoUTC", @"dataFaturamento": @"dataFaturamento", @"dataVencimento": @"dataVencimento", @"modoEntradaTransacao": @"modoEntradaTransacao", @"valorTaxaEmbarque": @"valorTaxaEmbarque", @"valorEntrada": @"valorEntrada", @"valorBRL": @"valorBRL", @"valorUSD": @"valorUSD", @"cotacaoUSD": @"cotacaoUSD", @"dataCotacaoUSD": @"dataCotacaoUSD", @"codigoMoedaOrigem": @"codigoMoedaOrigem", @"codigoMoedaDestino": @"codigoMoedaDestino", @"codigoAutorizacao": @"codigoAutorizacao", @"codigoReferencia": @"codigoReferencia", @"codigoTerminal": @"codigoTerminal", @"codigoMCC": @"codigoMCC", @"grupoMCC": @"grupoMCC", @"grupoDescricaoMCC": @"grupoDescricaoMCC", @"idEstabelecimento": @"idEstabelecimento", @"nomeEstabelecimento": @"nomeEstabelecimento", @"localidadeEstabelecimento": @"localidadeEstabelecimento", @"planoParcelamento": @"planoParcelamento", @"numeroParcela": @"numeroParcela", @"detalhesTransacao": @"detalhesTransacao", @"flagCredito": @"flagCredito", @"flagFaturado": @"flagFaturado", @"flagEstorno": @"flagEstorno", @"idTransacaoEstorno": @"idTransacaoEstorno" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idTipoTransacao", @"descricaoAbreviada", @"statusTransacao", @"idEvento", @"tipoEvento", @"idConta", @"cartaoMascarado", @"nomePortador", @"dataTransacaoUTC", @"dataFaturamento", @"dataVencimento", @"modoEntradaTransacao", @"valorTaxaEmbarque", @"valorEntrada", @"valorBRL", @"valorUSD", @"cotacaoUSD", @"dataCotacaoUSD", @"codigoMoedaOrigem", @"codigoMoedaDestino", @"codigoAutorizacao", @"codigoReferencia", @"codigoTerminal", @"codigoMCC", @"grupoMCC", @"grupoDescricaoMCC", @"idEstabelecimento", @"nomeEstabelecimento", @"localidadeEstabelecimento", @"planoParcelamento", @"numeroParcela", @"detalhesTransacao", @"flagCredito", @"flagFaturado", @"flagEstorno", @"idTransacaoEstorno"];

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
