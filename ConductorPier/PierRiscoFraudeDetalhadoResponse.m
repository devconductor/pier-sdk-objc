#import "PierRiscoFraudeDetalhadoResponse.h"

@implementation PierRiscoFraudeDetalhadoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idTipoResolucao": @"idTipoResolucao", @"descricaoTipoResolucao": @"descricaoTipoResolucao", @"flagAltoRisco": @"flagAltoRisco", @"idConta": @"idConta", @"idCartao": @"idCartao", @"idProduto": @"idProduto", @"idTransacao": @"idTransacao", @"dataTransacao": @"dataTransacao", @"valorTransacao": @"valorTransacao", @"codigoMoedaOrigem": @"codigoMoedaOrigem", @"valorOrigem": @"valorOrigem", @"codigoMoedaDestino": @"codigoMoedaDestino", @"valorDestino": @"valorDestino", @"nomeEstabelecimento": @"nomeEstabelecimento", @"idPais": @"idPais", @"codigoRespostaAutorizador": @"codigoRespostaAutorizador", @"descricaoRespostaAutorizador": @"descricaoRespostaAutorizador", @"codigoRespostaFraude": @"codigoRespostaFraude", @"descricaoRespostaFraude": @"descricaoRespostaFraude", @"origemTransacao": @"origemTransacao", @"codigoModoEntradaTerminal": @"codigoModoEntradaTerminal", @"descricaoModoEntradaTerminal": @"descricaoModoEntradaTerminal" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idTipoResolucao", @"descricaoTipoResolucao", @"flagAltoRisco", @"idConta", @"idCartao", @"idProduto", @"idTransacao", @"dataTransacao", @"valorTransacao", @"codigoMoedaOrigem", @"valorOrigem", @"codigoMoedaDestino", @"valorDestino", @"nomeEstabelecimento", @"idPais", @"codigoRespostaAutorizador", @"descricaoRespostaAutorizador", @"codigoRespostaFraude", @"descricaoRespostaFraude", @"origemTransacao", @"codigoModoEntradaTerminal", @"descricaoModoEntradaTerminal"];

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
