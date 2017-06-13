#import "PierCompraResponse.h"

@implementation PierCompraResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"mcc": @"mcc", @"uf": @"uf", @"idCompra": @"idCompra", @"status": @"status", @"dataCompra": @"dataCompra", @"valorTotalCompra": @"valorTotalCompra", @"valorParcela": @"valorParcela", @"primeiraParcela": @"primeiraParcela", @"numeroParcelas": @"numeroParcelas", @"numeroParcelasAntecipaveis": @"numeroParcelasAntecipaveis", @"nomeEstabelecimento": @"nomeEstabelecimento", @"tipoTransacao": @"tipoTransacao", @"cidade": @"cidade", @"pais": @"pais", @"latitude": @"latitude", @"longitude": @"longitude", @"idGrupoMCC": @"idGrupoMCC", @"descricaoGrupoMCC": @"descricaoGrupoMCC", @"idConta": @"idConta", @"idProduto": @"idProduto", @"descricaoProduto": @"descricaoProduto", @"cartao": @"cartao", @"nomePortadorCartao": @"nomePortadorCartao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"mcc", @"uf", @"idCompra", @"status", @"dataCompra", @"valorTotalCompra", @"valorParcela", @"primeiraParcela", @"numeroParcelas", @"numeroParcelasAntecipaveis", @"nomeEstabelecimento", @"tipoTransacao", @"cidade", @"pais", @"latitude", @"longitude", @"idGrupoMCC", @"descricaoGrupoMCC", @"idConta", @"idProduto", @"descricaoProduto", @"cartao", @"nomePortadorCartao"];

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
