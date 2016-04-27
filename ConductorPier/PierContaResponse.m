#import "PierContaResponse.h"

@implementation PierContaResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"bin": @"bin", @"cartao": @"cartao", @"dataCadastramento": @"dataCadastramento", @"dataUltimoPagamento": @"dataUltimoPagamento", @"dataVencCobranca": @"dataVencCobranca", @"dddcelularSMS": @"dddcelularSMS", @"descricaoStatus": @"descricaoStatus", @"diasEmAtraso": @"diasEmAtraso", @"emissor": @"emissor", @"flagCancelamento": @"flagCancelamento", @"formaEnvioFatura": @"formaEnvioFatura", @"idBandeira": @"idBandeira", @"idConta": @"idConta", @"idEmissor": @"idEmissor", @"idEndereco": @"idEndereco", @"idFantasiaBasica": @"idFantasiaBasica", @"idOrigemComercial": @"idOrigemComercial", @"idProduto": @"idProduto", @"idProposta": @"idProposta", @"melhorDia": @"melhorDia", @"nomeCredor": @"nomeCredor", @"nomeProduto": @"nomeProduto", @"numCelularSMS": @"numCelularSMS", @"pagamentos": @"pagamentos", @"permiteRefinanciamento": @"permiteRefinanciamento", @"pessoaFisica": @"pessoaFisica", @"quantidadePagamentos": @"quantidadePagamentos", @"saldoLimite": @"saldoLimite", @"status": @"status", @"statusData": @"statusData", @"taxaRefinanciamento": @"taxaRefinanciamento", @"vcto": @"vcto", @"vencimento1": @"vencimento1", @"vinculoOrigemUsuario": @"vinculoOrigemUsuario" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"bin", @"cartao", @"dataCadastramento", @"dataUltimoPagamento", @"dataVencCobranca", @"dddcelularSMS", @"descricaoStatus", @"diasEmAtraso", @"emissor", @"flagCancelamento", @"formaEnvioFatura", @"idBandeira", @"idConta", @"idEmissor", @"idEndereco", @"idFantasiaBasica", @"idOrigemComercial", @"idProduto", @"idProposta", @"melhorDia", @"nomeCredor", @"nomeProduto", @"numCelularSMS", @"pagamentos", @"permiteRefinanciamento", @"pessoaFisica", @"quantidadePagamentos", @"saldoLimite", @"status", @"statusData", @"taxaRefinanciamento", @"vcto", @"vencimento1", @"vinculoOrigemUsuario"];

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
