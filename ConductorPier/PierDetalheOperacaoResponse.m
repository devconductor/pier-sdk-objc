#import "PierDetalheOperacaoResponse.h"

@implementation PierDetalheOperacaoResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idOperacao": @"idOperacao", @"codigoProcessamento": @"codigoProcessamento", @"codigoProcessamentoCancelamento": @"codigoProcessamentoCancelamento", @"nomeOperacao": @"nomeOperacao", @"descricaoOperacao": @"descricaoOperacao", @"planoMinimo": @"planoMinimo", @"planoMaximo": @"planoMaximo", @"valorMinimo": @"valorMinimo", @"valorMaximo": @"valorMaximo", @"flagCobraJuros": @"flagCobraJuros", @"taxaJuros": @"taxaJuros", @"flagCobraTarifa": @"flagCobraTarifa", @"taxaTarifa": @"taxaTarifa", @"valorTac": @"valorTac", @"percentualTac": @"percentualTac", @"valorOperacao": @"valorOperacao", @"carencia": @"carencia", @"excedentePermitido": @"excedentePermitido", @"flagPermitirParcelamento": @"flagPermitirParcelamento" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idOperacao", @"codigoProcessamento", @"codigoProcessamentoCancelamento", @"nomeOperacao", @"descricaoOperacao", @"planoMinimo", @"planoMaximo", @"valorMinimo", @"valorMaximo", @"flagCobraJuros", @"taxaJuros", @"flagCobraTarifa", @"taxaTarifa", @"valorTac", @"percentualTac", @"valorOperacao", @"carencia", @"excedentePermitido", @"flagPermitirParcelamento"];

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
