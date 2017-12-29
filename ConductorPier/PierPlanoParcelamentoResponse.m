#import "PierPlanoParcelamentoResponse.h"

@implementation PierPlanoParcelamentoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"dataFechamentoFatura": @"dataFechamentoFatura", @"dataVencimentoPadrao": @"dataVencimentoPadrao", @"valorTotalFatura": @"valorTotalFatura", @"quantidadeParcelas": @"quantidadeParcelas", @"valorParcela": @"valorParcela", @"valorEntrada": @"valorEntrada", @"taxaRefinanciamento": @"taxaRefinanciamento", @"custoEfetivoTotal": @"custoEfetivoTotal", @"valorTotalRefinanciamento": @"valorTotalRefinanciamento", @"valorIOF": @"valorIOF", @"valorTAC": @"valorTAC", @"statusAdesao": @"statusAdesao", @"dataInclusao": @"dataInclusao", @"dataProcessamentoAdesao": @"dataProcessamentoAdesao", @"idConta": @"idConta", @"descricaoServicoTipo": @"descricaoServicoTipo", @"comEntrada": @"comEntrada", @"nomeCampanha": @"nomeCampanha" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"dataFechamentoFatura", @"dataVencimentoPadrao", @"valorTotalFatura", @"quantidadeParcelas", @"valorParcela", @"valorEntrada", @"taxaRefinanciamento", @"custoEfetivoTotal", @"valorTotalRefinanciamento", @"valorIOF", @"valorTAC", @"statusAdesao", @"dataInclusao", @"dataProcessamentoAdesao", @"idConta", @"descricaoServicoTipo", @"comEntrada", @"nomeCampanha"];

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
