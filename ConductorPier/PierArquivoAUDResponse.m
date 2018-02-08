#import "PierArquivoAUDResponse.h"

@implementation PierArquivoAUDResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"rev": @"rev", @"revType": @"revType", @"id": @"_id", @"nome": @"nome", @"idRespostaAcessoDigital": @"idRespostaAcessoDigital", @"dataHoraRespostaAcessoDigital": @"dataHoraRespostaAcessoDigital", @"idRespostaNeurotech": @"idRespostaNeurotech", @"dataHoraRespostaNeurotech": @"dataHoraRespostaNeurotech", @"uri": @"uri", @"dataHoraInclusao": @"dataHoraInclusao", @"dataHoraAlteracao": @"dataHoraAlteracao", @"extensao": @"extensao", @"parametros": @"parametros" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"rev", @"revType", @"_id", @"nome", @"idRespostaAcessoDigital", @"dataHoraRespostaAcessoDigital", @"idRespostaNeurotech", @"dataHoraRespostaNeurotech", @"uri", @"dataHoraInclusao", @"dataHoraAlteracao", @"extensao", @"parametros"];

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
