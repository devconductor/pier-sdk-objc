#import "PierEmprestimoPessoalResponse.h"

@implementation PierEmprestimoPessoalResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"planosParcelamentos": @"planosParcelamentos", @"valorSolicitado": @"valorSolicitado", @"valorMaximoSolicitacao": @"valorMaximoSolicitacao", @"numeroParcelas": @"numeroParcelas", @"valorMaximoParcela": @"valorMaximoParcela", @"dataPrimeiraParcela": @"dataPrimeiraParcela", @"periodoTaxa": @"periodoTaxa", @"sistemaAmortizacao": @"sistemaAmortizacao", @"taxaJuros": @"taxaJuros" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"planosParcelamentos", @"valorSolicitado", @"valorMaximoSolicitacao", @"numeroParcelas", @"valorMaximoParcela", @"dataPrimeiraParcela", @"periodoTaxa", @"sistemaAmortizacao", @"taxaJuros"];

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
