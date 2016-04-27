#import "PierConsultarSaldoLimitesResponse.h"

@implementation PierConsultarSaldoLimitesResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"codRetorno": @"codRetorno", @"codigoRetorno": @"codigoRetorno", @"descricaoRetorno": @"descricaoRetorno", @"disponibCompraNac": @"disponibCompraNac", @"disponibGlobalCredito": @"disponibGlobalCredito", @"disponibParceladoNac": @"disponibParceladoNac", @"disponibParcelasNac": @"disponibParcelasNac", @"disponibSaqueNacGlobal": @"disponibSaqueNacGlobal", @"limiteCompraNac": @"limiteCompraNac", @"limiteGlobalCredito": @"limiteGlobalCredito", @"limiteParceladoNac": @"limiteParceladoNac", @"limiteParcelasNac": @"limiteParcelasNac", @"limiteSaqueNacGlobal": @"limiteSaqueNacGlobal", @"limiteSaqueNacPeriodo": @"limiteSaqueNacPeriodo", @"rendaComprovada": @"rendaComprovada", @"solicitacaoPendente": @"solicitacaoPendente" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"codRetorno", @"codigoRetorno", @"descricaoRetorno", @"disponibCompraNac", @"disponibGlobalCredito", @"disponibParceladoNac", @"disponibParcelasNac", @"disponibSaqueNacGlobal", @"limiteCompraNac", @"limiteGlobalCredito", @"limiteParceladoNac", @"limiteParcelasNac", @"limiteSaqueNacGlobal", @"limiteSaqueNacPeriodo", @"rendaComprovada", @"solicitacaoPendente"];

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
