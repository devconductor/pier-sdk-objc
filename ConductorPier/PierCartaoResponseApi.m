#import "PierCartaoResponseApi.h"
#import "PierQueryParamCollection.h"
#import "PierCancelarCartaoResponse.h"
#import "PierConsultarCartaoResponse.h"
#import "PierConsultarExtratoContaResponse.h"
#import "PierConsultarSaldoLimitesResponse.h"
#import "PierDesbloquearCartaoResponse.h"


@interface PierCartaoResponseApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierCartaoResponseApi

static PierCartaoResponseApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        PierConfiguration *config = [PierConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[PierApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(PierApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(PierCartaoResponseApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCartaoResponseApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierCartaoResponseApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCartaoResponseApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [PierApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// /contas/{idConta}/cartoes/{idCartao}/cancelar
/// Cancelar um determinado cart\u00C3\u00A3o
///  @param idEmissor ID do Emissor 
///
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja cancelar 
///
///  @param motivo Motivo do cancelamento 
///
///  @param observacao Alguma observa\u00C3\u00A7\u00C3\u00A3o para o cancelamento 
///
///  @returns PierCancelarCartaoResponse*
///
-(NSNumber*) cancelarCartaoUsingPOSTWithIdEmissor: (NSNumber*) idEmissor
    idConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    motivo: (NSNumber*) motivo
    observacao: (NSString*) observacao
    completionHandler: (void (^)(PierCancelarCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `cancelarCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `cancelarCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `cancelarCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'motivo' is set
    if (motivo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `motivo` when calling `cancelarCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'observacao' is set
    if (observacao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `observacao` when calling `cancelarCartaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/{idCartao}/cancelar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (motivo != nil) {
        
        queryParams[@"motivo"] = motivo;
    }
    if (observacao != nil) {
        
        queryParams[@"observacao"] = observacao;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierCancelarCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCancelarCartaoResponse*)data, error);
                           }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}
/// Consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado cart\u00C3\u00A3o de uma conta
///  @param idEmissor ID do Emissor 
///
///  @param idConta ID da Conta que pertence o cart\u00C3\u00A3o 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja consultar 
///
///  @param numeroCartao N\u00C3\u00BAmero do Cart\u00C3\u00A3o que deseja consultar (opcional) (optional)
///
///  @returns PierConsultarCartaoResponse*
///
-(NSNumber*) consultarCartaoUsingGETWithIdEmissor: (NSNumber*) idEmissor
    idConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    numeroCartao: (NSString*) numeroCartao
    completionHandler: (void (^)(PierConsultarCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `consultarCartaoUsingGET`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarCartaoUsingGET`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `consultarCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/{idCartao}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    if (numeroCartao != nil) {
        headerParams[@"numeroCartao"] = numeroCartao;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierConsultarCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierConsultarCartaoResponse*)data, error);
                           }
          ];
}

///
/// /contas/{idConta}/cartoes
/// Consultar todos os cart\u00C3\u00B5es de uma determinada conta
///  @param idEmissor ID do Emissor 
///
///  @param idConta ID da Conta 
///
///  @returns PierConsultarCartaoResponse*
///
-(NSNumber*) consultarCartoesUsingGETWithIdEmissor: (NSNumber*) idEmissor
    idConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierConsultarCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `consultarCartoesUsingGET`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarCartoesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierConsultarCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierConsultarCartaoResponse*)data, error);
                           }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/faturas
/// Consulte os extratos/faturas do cart\u00C3\u00A3o de uma determinada conta
///  @param idEmissor ID do Emissor 
///
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja consultar o extrato 
///
///  @param dataVencimento Data limite para o vencimento das transa\u00C3\u00A7\u00C3\u00B5es 
///
///  @returns PierConsultarExtratoContaResponse*
///
-(NSNumber*) consultarExtratoFaturasUsingGETWithIdEmissor: (NSNumber*) idEmissor
    idConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierConsultarExtratoContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `consultarExtratoFaturasUsingGET`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarExtratoFaturasUsingGET`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `consultarExtratoFaturasUsingGET`"];
    }
    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `consultarExtratoFaturasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/{idCartao}/faturas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierConsultarExtratoContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierConsultarExtratoContaResponse*)data, error);
                           }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/limites
/// Consulte os limites de um determinado cart\u00C3\u00A3o
///  @param idEmissor ID do Emissor 
///
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja consultar o saldo/limite 
///
///  @returns PierConsultarSaldoLimitesResponse*
///
-(NSNumber*) consultarSaldosLimitesUsingGETWithIdEmissor: (NSNumber*) idEmissor
    idConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    completionHandler: (void (^)(PierConsultarSaldoLimitesResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `consultarSaldosLimitesUsingGET`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarSaldosLimitesUsingGET`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `consultarSaldosLimitesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/{idCartao}/limites"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierConsultarSaldoLimitesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierConsultarSaldoLimitesResponse*)data, error);
                           }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/desbloquear
/// Desbloquear cart\u00C3\u00A3o de uma determinada conta
///  @param idEmissor ID do Emissor 
///
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja consultar o saldo/limite 
///
///  @param codigoSegurancao C\u00C3\u00B3digo seguran\u00C3\u00A7a do cart\u00C3\u00A3o 
///
///  @returns PierDesbloquearCartaoResponse*
///
-(NSNumber*) desbloquearCartaoUsingPOSTWithIdEmissor: (NSNumber*) idEmissor
    idConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    codigoSegurancao: (NSString*) codigoSegurancao
    completionHandler: (void (^)(PierDesbloquearCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `desbloquearCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `desbloquearCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `desbloquearCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'codigoSegurancao' is set
    if (codigoSegurancao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `codigoSegurancao` when calling `desbloquearCartaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/{idCartao}/desbloquear"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    if (codigoSegurancao != nil) {
        headerParams[@"codigoSegurancao"] = codigoSegurancao;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/json"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierDesbloquearCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDesbloquearCartaoResponse*)data, error);
                           }
          ];
}



@end
