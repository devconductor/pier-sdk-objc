#import "PierPessoaDetalheResponse.h"

@implementation PierPessoaDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"idPessoa": @"idPessoa", @"nomeMae": @"nomeMae", @"idEstadoCivil": @"idEstadoCivil", @"idProfissao": @"idProfissao", @"idNaturezaOcupacao": @"idNaturezaOcupacao", @"idNacionalidade": @"idNacionalidade", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorrente": @"numeroContaCorrente", @"email": @"email", @"nomeEmpresa": @"nomeEmpresa" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"idPessoa", @"nomeMae", @"idEstadoCivil", @"idProfissao", @"idNaturezaOcupacao", @"idNacionalidade", @"numeroAgencia", @"numeroContaCorrente", @"email", @"nomeEmpresa"];

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
