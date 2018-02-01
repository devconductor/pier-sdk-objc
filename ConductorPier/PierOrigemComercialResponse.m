#import "PierOrigemComercialResponse.h"

@implementation PierOrigemComercialResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"nome": @"nome", @"descricao": @"descricao", @"produtosOrigem": @"produtosOrigem", @"idEstabelecimento": @"idEstabelecimento", @"idTipoOrigemComercial": @"idTipoOrigemComercial", @"nomeTipoOrigemComercial": @"nomeTipoOrigemComercial", @"idGrupoOrigemComercial": @"idGrupoOrigemComercial", @"nomeGrupoOrigemComercial": @"nomeGrupoOrigemComercial", @"status": @"status", @"flagPreAprovado": @"flagPreAprovado", @"flagAprovacaoImediata": @"flagAprovacaoImediata", @"nomeFantasiaPlastico": @"nomeFantasiaPlastico", @"flagCartaoProvisorio": @"flagCartaoProvisorio", @"flagCartaoDefinitivo": @"flagCartaoDefinitivo", @"usuario": @"usuario", @"senha": @"senha", @"flagOrigemExterna": @"flagOrigemExterna", @"flagModificado": @"flagModificado", @"flagEnviaFaturaUsuario": @"flagEnviaFaturaUsuario", @"flagCreditoFaturamento": @"flagCreditoFaturamento", @"flagConcedeLimiteProvisorio": @"flagConcedeLimiteProvisorio", @"flagDigitalizarDoc": @"flagDigitalizarDoc", @"flagEmbossingLoja": @"flagEmbossingLoja", @"flagConsultaPrevia": @"flagConsultaPrevia", @"tipoPessoa": @"tipoPessoa" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"nome", @"descricao", @"produtosOrigem", @"idEstabelecimento", @"idTipoOrigemComercial", @"nomeTipoOrigemComercial", @"idGrupoOrigemComercial", @"nomeGrupoOrigemComercial", @"status", @"flagPreAprovado", @"flagAprovacaoImediata", @"nomeFantasiaPlastico", @"flagCartaoProvisorio", @"flagCartaoDefinitivo", @"usuario", @"senha", @"flagOrigemExterna", @"flagModificado", @"flagEnviaFaturaUsuario", @"flagCreditoFaturamento", @"flagConcedeLimiteProvisorio", @"flagDigitalizarDoc", @"flagEmbossingLoja", @"flagConsultaPrevia", @"tipoPessoa"];

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
