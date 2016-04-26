#import "CaaSCartaoApi.h"
#import "CaaSQueryParamCollection.h"
#import "CaaSConsultarCartaoResponse.h"
#import "CaaSCancelarCartaoResponse.h"
#import "CaaSDesbloquearCartaoResponse.h"
#import "CaaSConsultarExtratoContaResponse.h"
#import "CaaSConsultarSaldoLimitesResponse.h"


@interface CaaSCartaoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation CaaSCartaoApi

static CaaSCartaoApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        CaaSConfiguration *config = [CaaSConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[CaaSApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(CaaSApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(CaaSCartaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[CaaSCartaoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(CaaSCartaoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[CaaSCartaoApi alloc] init];
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
    return [CaaSApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// /contas/{idConta}/cartoes/{idCartao}
/// Consultar as informaÃ§Ãµes de um determinado cartÃ£o de uma conta
///  @param idEmissor ID do Emissor
///
///  @param numeroCartao NÃºmero do CartÃ£o que deseja consultar
///
///  @param idConta ID da Conta que pertence o cartÃ£o
///
///  @param idCartao ID do CartÃ£o que deseja consultar
///
///  @returns CaaSConsultarCartaoResponse*
///
-(NSNumber*) consultarCartaoUsingGETWithCompletionBlock: (NSNumber*) idEmissor
         numeroCartao: (NSString*) numeroCartao
         idConta: (NSNumber*) idConta
         idCartao: (NSNumber*) idCartao
        
        completionHandler: (void (^)(CaaSConsultarCartaoResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `consultarCartaoUsingGET`"];
    }
    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `consultarCartaoUsingGET`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarCartaoUsingGET`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `consultarCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/cartoes/{idCartao}"];

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
    headerParams[@"Accept"] = [CaaSApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [CaaSApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"CaaSConsultarCartaoResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((CaaSConsultarCartaoResponse*)data, error);
              }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/cancelar
/// Cancelar um determinado cartÃ£o
///  @param idEmissor ID do Emissor
///
///  @param idConta ID da Conta
///
///  @param idCartao ID do CartÃ£o que deseja cancelar
///
///  @param motivo Motivo do cancelamento
///
///  @param observacao Alguma observaÃ§Ã£o para o cancelamento
///
///  @returns CaaSCancelarCartaoResponse*
///
-(NSNumber*) cancelarCartaoUsingPOSTWithCompletionBlock: (NSNumber*) idEmissor
         idConta: (NSNumber*) idConta
         idCartao: (NSNumber*) idCartao
         motivo: (NSNumber*) motivo
         observacao: (NSString*) observacao
        
        completionHandler: (void (^)(CaaSCancelarCartaoResponse* output, NSError* error))completionBlock { 
        

    
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
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/cartoes/{idCartao}/cancelar"];

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
    headerParams[@"Accept"] = [CaaSApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [CaaSApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"CaaSCancelarCartaoResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((CaaSCancelarCartaoResponse*)data, error);
              }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/desbloquear
/// Desbloquear cartÃ£o de uma determinada conta
///  @param idEmissor ID do Emissor
///
///  @param idConta ID da Conta
///
///  @param idCartao ID do CartÃ£o que deseja consultar o saldo/limite
///
///  @param codigoSegurancao CÃ³digo seguranÃ§a do cartÃ£o
///
///  @returns CaaSDesbloquearCartaoResponse*
///
-(NSNumber*) desbloquearCartaoUsingPOSTWithCompletionBlock: (NSNumber*) idEmissor
         idConta: (NSNumber*) idConta
         idCartao: (NSNumber*) idCartao
         codigoSegurancao: (NSString*) codigoSegurancao
        
        completionHandler: (void (^)(CaaSDesbloquearCartaoResponse* output, NSError* error))completionBlock { 
        

    
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
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/cartoes/{idCartao}/desbloquear"];

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
    headerParams[@"Accept"] = [CaaSApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [CaaSApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"CaaSDesbloquearCartaoResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((CaaSDesbloquearCartaoResponse*)data, error);
              }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/faturas
/// Consulte os extratos/faturas do cartÃ£o de uma determinada conta
///  @param idEmissor ID do Emissor
///
///  @param idConta ID da Conta
///
///  @param idCartao ID do CartÃ£o que deseja consultar o extrato
///
///  @param dataVencimento Data limite para o vencimento das transaÃ§Ãµes
///
///  @returns CaaSConsultarExtratoContaResponse*
///
-(NSNumber*) consultarExtratoFaturasUsingGETWithCompletionBlock: (NSNumber*) idEmissor
         idConta: (NSNumber*) idConta
         idCartao: (NSNumber*) idCartao
         dataVencimento: (NSString*) dataVencimento
        
        completionHandler: (void (^)(CaaSConsultarExtratoContaResponse* output, NSError* error))completionBlock { 
        

    
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
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/cartoes/{idCartao}/faturas"];

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
    headerParams[@"Accept"] = [CaaSApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [CaaSApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"CaaSConsultarExtratoContaResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((CaaSConsultarExtratoContaResponse*)data, error);
              }
          ];
}

///
/// /contas/{idConta}/cartoes/{idCartao}/saldos
/// Consulte o saldo do cartÃ£o de uma determinada conta
///  @param idEmissor ID do Emissor
///
///  @param idConta ID da Conta
///
///  @param idCartao ID do CartÃ£o que deseja consultar o saldo/limite
///
///  @returns CaaSConsultarSaldoLimitesResponse*
///
-(NSNumber*) consultarSaldosLimitesUsingGETWithCompletionBlock: (NSNumber*) idEmissor
         idConta: (NSNumber*) idConta
         idCartao: (NSNumber*) idCartao
        
        completionHandler: (void (^)(CaaSConsultarSaldoLimitesResponse* output, NSError* error))completionBlock { 
        

    
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
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}/cartoes/cartoes/{idCartao}/saldos"];

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
    headerParams[@"Accept"] = [CaaSApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [CaaSApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"CaaSConsultarSaldoLimitesResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((CaaSConsultarSaldoLimitesResponse*)data, error);
              }
          ];
}



@end
