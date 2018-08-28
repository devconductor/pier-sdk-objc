#import "PierContaDetalheResponse.h"

@implementation PierContaDetalheResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"id": @"_id", @"idPessoa": @"idPessoa", @"nome": @"nome", @"idProduto": @"idProduto", @"idOrigemComercial": @"idOrigemComercial", @"nomeOrigemComercial": @"nomeOrigemComercial", @"idFantasiaBasica": @"idFantasiaBasica", @"nomeFantasiaBasica": @"nomeFantasiaBasica", @"idStatusConta": @"idStatusConta", @"statusConta": @"statusConta", @"diaVencimento": @"diaVencimento", @"melhorDiaCompra": @"melhorDiaCompra", @"dataStatusConta": @"dataStatusConta", @"valorRenda": @"valorRenda", @"dataCadastro": @"dataCadastro", @"dataUltimaAlteracaoVencimento": @"dataUltimaAlteracaoVencimento", @"dataHoraUltimaCompra": @"dataHoraUltimaCompra", @"numeroAgencia": @"numeroAgencia", @"numeroContaCorrente": @"numeroContaCorrente", @"formaEnvioFatura": @"formaEnvioFatura", @"titular": @"titular", @"limiteGlobal": @"limiteGlobal", @"limiteSaqueGlobal": @"limiteSaqueGlobal", @"saldoDisponivelGlobal": @"saldoDisponivelGlobal", @"saldoDisponivelSaque": @"saldoDisponivelSaque", @"diasAtraso": @"diasAtraso", @"proximoVencimentoPadrao": @"proximoVencimentoPadrao" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"_id", @"idPessoa", @"nome", @"idProduto", @"idOrigemComercial", @"nomeOrigemComercial", @"idFantasiaBasica", @"nomeFantasiaBasica", @"idStatusConta", @"statusConta", @"diaVencimento", @"melhorDiaCompra", @"dataStatusConta", @"valorRenda", @"dataCadastro", @"dataUltimaAlteracaoVencimento", @"dataHoraUltimaCompra", @"numeroAgencia", @"numeroContaCorrente", @"formaEnvioFatura", @"titular", @"limiteGlobal", @"limiteSaqueGlobal", @"saldoDisponivelGlobal", @"saldoDisponivelSaque", @"diasAtraso", @"proximoVencimentoPadrao"];

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
