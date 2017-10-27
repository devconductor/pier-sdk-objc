#import "PierAntecipacaoSimuladaMockResponse.h"

@implementation PierAntecipacaoSimuladaMockResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"mcc": @"mcc", @"uf": @"uf", @"idAntecipacaoSimulada": @"idAntecipacaoSimulada", @"idConta": @"idConta", @"idCompra": @"idCompra", @"idTipoTransacao": @"idTipoTransacao", @"quantidadeParcelasAntecipaveis": @"quantidadeParcelasAntecipaveis", @"valorParcela": @"valorParcela", @"dataHoraSimulacao": @"dataHoraSimulacao", @"taxaAntecipacaoAno": @"taxaAntecipacaoAno", @"nomeEstabelecimento": @"nomeEstabelecimento", @"status": @"status", @"dataCompra": @"dataCompra", @"tipoOrigemTransacao": @"tipoOrigemTransacao", @"cidade": @"cidade", @"pais": @"pais", @"latitude": @"latitude", @"longitude": @"longitude", @"idGrupoMCC": @"idGrupoMCC", @"descricaoGrupoMCC": @"descricaoGrupoMCC", @"idProduto": @"idProduto", @"descricaoProduto": @"descricaoProduto", @"detalhes": @"detalhes" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"mcc", @"uf", @"idAntecipacaoSimulada", @"idConta", @"idCompra", @"idTipoTransacao", @"quantidadeParcelasAntecipaveis", @"valorParcela", @"dataHoraSimulacao", @"taxaAntecipacaoAno", @"nomeEstabelecimento", @"status", @"dataCompra", @"tipoOrigemTransacao", @"cidade", @"pais", @"latitude", @"longitude", @"idGrupoMCC", @"descricaoGrupoMCC", @"idProduto", @"descricaoProduto", @"detalhes"];

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
