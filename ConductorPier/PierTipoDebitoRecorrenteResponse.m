#import "PierTipoDebitoRecorrenteResponse.h"

@implementation PierTipoDebitoRecorrenteResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"flagAnuidadeBonificada": @"flagAnuidadeBonificada", @"id": @"_id", @"nome": @"nome", @"valor": @"valor", @"flagAtivo": @"flagAtivo", @"valorBonus": @"valorBonus", @"numeroParcelas": @"numeroParcelas", @"flagAdereAutomatico": @"flagAdereAutomatico", @"flagGeraNumeroSorte": @"flagGeraNumeroSorte", @"faixaEtaria": @"faixaEtaria", @"flagSeguro": @"flagSeguro", @"sorteiosMensais": @"sorteiosMensais", @"flagAdesaoAutomatica": @"flagAdesaoAutomatica", @"flagDependente": @"flagDependente", @"quantidadeDependente": @"quantidadeDependente", @"idTermoSeguroServico": @"idTermoSeguroServico", @"idadeMinima": @"idadeMinima", @"idadeMaxima": @"idadeMaxima", @"flagDebitoIncondicional": @"flagDebitoIncondicional", @"flagExtratoIncondicional": @"flagExtratoIncondicional", @"flagEstornoAutomatico": @"flagEstornoAutomatico", @"valorRepassadoSeguradora": @"valorRepassadoSeguradora", @"flagLancaTransacao": @"flagLancaTransacao", @"flagTransferenciaAutomatica": @"flagTransferenciaAutomatica", @"idProduto": @"idProduto", @"idGrupoDebitoRecorrente": @"idGrupoDebitoRecorrente", @"quantidadeTentativasCobranca": @"quantidadeTentativasCobranca", @"idAjuste": @"idAjuste" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"flagAnuidadeBonificada", @"_id", @"nome", @"valor", @"flagAtivo", @"valorBonus", @"numeroParcelas", @"flagAdereAutomatico", @"flagGeraNumeroSorte", @"faixaEtaria", @"flagSeguro", @"sorteiosMensais", @"flagAdesaoAutomatica", @"flagDependente", @"quantidadeDependente", @"idTermoSeguroServico", @"idadeMinima", @"idadeMaxima", @"flagDebitoIncondicional", @"flagExtratoIncondicional", @"flagEstornoAutomatico", @"valorRepassadoSeguradora", @"flagLancaTransacao", @"flagTransferenciaAutomatica", @"idProduto", @"idGrupoDebitoRecorrente", @"quantidadeTentativasCobranca", @"idAjuste"];

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
