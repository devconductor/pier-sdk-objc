#import "PierAtendimentoClienteResponse.h"

@implementation PierAtendimentoClienteResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idAtendimento": @"idAtendimento", @"idConta": @"idConta", @"idTipoAtendimento": @"idTipoAtendimento", @"descricaoTipoAtendimento": @"descricaoTipoAtendimento", @"conteudoAtendimento": @"conteudoAtendimento", @"detalhesAtendimento": @"detalhesAtendimento", @"nomeAtendente": @"nomeAtendente", @"nomeSistema": @"nomeSistema", @"dataHoraInicioAtendimento": @"dataHoraInicioAtendimento", @"dataHoraFimAtendimento": @"dataHoraFimAtendimento", @"dataAtendimento": @"dataAtendimento", @"dataAgendamento": @"dataAgendamento", @"dataProcessamento": @"dataProcessamento", @"flagProcessamento": @"flagProcessamento" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idAtendimento", @"idConta", @"idTipoAtendimento", @"descricaoTipoAtendimento", @"conteudoAtendimento", @"detalhesAtendimento", @"nomeAtendente", @"nomeSistema", @"dataHoraInicioAtendimento", @"dataHoraFimAtendimento", @"dataAtendimento", @"dataAgendamento", @"dataProcessamento", @"flagProcessamento"];

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
