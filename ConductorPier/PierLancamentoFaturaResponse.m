#import "PierLancamentoFaturaResponse.h"

@implementation PierLancamentoFaturaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idTransacao": @"idTransacao", @"descricaoTipoTransacao": @"descricaoTipoTransacao", @"idTipoEvento": @"idTipoEvento", @"descricaoTipoEvento": @"descricaoTipoEvento", @"idEvento": @"idEvento", @"idConta": @"idConta", @"complemento": @"complemento", @"valorBRL": @"valorBRL", @"valorUSD": @"valorUSD", @"numeroParcela": @"numeroParcela", @"quantidadeParcelas": @"quantidadeParcelas", @"dataHoraTransacao": @"dataHoraTransacao", @"nomeEstabelecimento": @"nomeEstabelecimento", @"descricaoEstabelecimento": @"descricaoEstabelecimento", @"nomeFantasiaEstabelecimento": @"nomeFantasiaEstabelecimento", @"flagCredito": @"flagCredito", @"idMCC": @"idMCC", @"idGrupoMCC": @"idGrupoMCC", @"descricaoGrupoMCC": @"descricaoGrupoMCC", @"titular": @"titular", @"nomePortador": @"nomePortador", @"numeroCartaoMascarado": @"numeroCartaoMascarado", @"flagSolicitouContestacao": @"flagSolicitouContestacao", @"valorTaxaEmbarque": @"valorTaxaEmbarque", @"descricaoAbreviada": @"descricaoAbreviada" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idTransacao", @"descricaoTipoTransacao", @"idTipoEvento", @"descricaoTipoEvento", @"idEvento", @"idConta", @"complemento", @"valorBRL", @"valorUSD", @"numeroParcela", @"quantidadeParcelas", @"dataHoraTransacao", @"nomeEstabelecimento", @"descricaoEstabelecimento", @"nomeFantasiaEstabelecimento", @"flagCredito", @"idMCC", @"idGrupoMCC", @"descricaoGrupoMCC", @"titular", @"nomePortador", @"numeroCartaoMascarado", @"flagSolicitouContestacao", @"valorTaxaEmbarque", @"descricaoAbreviada"];

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
