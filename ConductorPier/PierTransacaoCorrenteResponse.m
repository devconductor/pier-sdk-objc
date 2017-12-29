#import "PierTransacaoCorrenteResponse.h"

@implementation PierTransacaoCorrenteResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"ultimaParcelaLancada": @"ultimaParcelaLancada", @"idConta": @"idConta", @"idTipoRegistro": @"idTipoRegistro", @"ordem": @"ordem", @"idTransacao": @"idTransacao", @"descricao": @"descricao", @"status": @"status", @"descricaoStatus": @"descricaoStatus", @"valor": @"valor", @"valorDolar": @"valorDolar", @"quantidadeParcelas": @"quantidadeParcelas", @"valorParcela": @"valorParcela", @"dataEvento": @"dataEvento", @"estabelecimento": @"estabelecimento", @"flagCredito": @"flagCredito", @"tipoEstabelecimento": @"tipoEstabelecimento", @"idGrupoMCC": @"idGrupoMCC", @"flagSolicitouContestacao": @"flagSolicitouContestacao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"ultimaParcelaLancada", @"idConta", @"idTipoRegistro", @"ordem", @"idTransacao", @"descricao", @"status", @"descricaoStatus", @"valor", @"valorDolar", @"quantidadeParcelas", @"valorParcela", @"dataEvento", @"estabelecimento", @"flagCredito", @"tipoEstabelecimento", @"idGrupoMCC", @"flagSolicitouContestacao"];

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
