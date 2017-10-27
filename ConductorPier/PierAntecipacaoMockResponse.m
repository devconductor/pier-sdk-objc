#import "PierAntecipacaoMockResponse.h"

@implementation PierAntecipacaoMockResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"mcc": @"mcc", @"uf": @"uf", @"id": @"_id", @"idConta": @"idConta", @"idCompra": @"idCompra", @"quantidadeParcelasTotal": @"quantidadeParcelasTotal", @"quantidadeParcelasAntecipadas": @"quantidadeParcelasAntecipadas", @"valorParcela": @"valorParcela", @"valorDescontoTotal": @"valorDescontoTotal", @"valorTotalComDesconto": @"valorTotalComDesconto", @"taxaDesconto": @"taxaDesconto", @"dataCompra": @"dataCompra", @"status": @"status", @"nomeEstabelecimento": @"nomeEstabelecimento", @"tipoOrigemTransacao": @"tipoOrigemTransacao", @"cidade": @"cidade", @"pais": @"pais", @"latitude": @"latitude", @"longitude": @"longitude", @"idGrupoMCC": @"idGrupoMCC", @"descricaoGrupoMCC": @"descricaoGrupoMCC", @"idProduto": @"idProduto", @"descricaoProduto": @"descricaoProduto" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"mcc", @"uf", @"_id", @"idConta", @"idCompra", @"quantidadeParcelasTotal", @"quantidadeParcelasAntecipadas", @"valorParcela", @"valorDescontoTotal", @"valorTotalComDesconto", @"taxaDesconto", @"dataCompra", @"status", @"nomeEstabelecimento", @"tipoOrigemTransacao", @"cidade", @"pais", @"latitude", @"longitude", @"idGrupoMCC", @"descricaoGrupoMCC", @"idProduto", @"descricaoProduto"];

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
