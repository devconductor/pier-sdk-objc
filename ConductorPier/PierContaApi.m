#import "PierContaApi.h"
#import "PierQueryParamCollection.h"
#import "PierConsultarContaResponse.h"
#import "PierContaResponse.h"
#import "PierConsultarExtratoContaResponse.h"
#import "PierConsultarSaldoLimitesResponse.h"


@interface PierContaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierContaApi

static PierContaApi* singletonAPI = nil;

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

+(PierContaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierContaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierContaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierContaApi alloc] init];
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
/// Buscar contas
/// Consulte contas filtrando pelos campos id do emissor, n\u00C3\u00BAmero do cart\u00C3\u00A3o, nome ou CPF/CNPJ 
///  @param nome Nome (optional)
///
///  @param cpf CPF (opcional caso nao informe o n\u00C3\u00BAmero do cart\u00C3\u00A3o ou id da conta) (optional)
///
///  @param numeroCartao N\u00C3\u00BAmero do cart\u00C3\u00A3o (opcional caso n\u00C3\u00A3o informa o cpf ou id da conta) (optional)
///
///  @param idConta ID da Conta (opcional caso n\u00C3\u00A3o informe o n\u00C3\u00BAmero do cart\u00C3\u00A3o ou cpf) (optional)
///
///  @returns PierConsultarContaResponse*
///
-(NSNumber*) buscarContaUsingGETWithNome: (NSString*) nome
    cpf: (NSString*) cpf
    numeroCartao: (NSString*) numeroCartao
    idConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierConsultarContaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1.1/contas/buscar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (cpf != nil) {
        
        queryParams[@"cpf"] = cpf;
    }
    if (numeroCartao != nil) {
        
        queryParams[@"numeroCartao"] = numeroCartao;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

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
                              responseType: @"PierConsultarContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierConsultarContaResponse*)data, error);
                           }
          ];
}

///
/// Retorna uma conta
/// Consulte informa\u00C3\u00A7\u00C3\u00B5es de uma determinada conta
///  @param idConta ID da Conta 
///
///  @returns PierContaResponse*
///
-(NSNumber*) consultarContaUsingGETWithIdConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarContaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1.1/contas/{idConta}"];

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
                              responseType: @"PierContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaResponse*)data, error);
                           }
          ];
}

///
/// Retorna os extratos
/// Consulte os extratos de uma determinada conta
///  @param idConta ID da Conta 
///
///  @param dataVencimento Data limite para o vencimento das transa\u00C3\u00A7\u00C3\u00B5es 
///
///  @returns PierConsultarExtratoContaResponse*
///
-(NSNumber*) consultarExtratoFaturasUsingGETWithIdConta: (NSNumber*) idConta
    dataVencimento: (NSString*) dataVencimento
    completionHandler: (void (^)(PierConsultarExtratoContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarExtratoFaturasUsingGET`"];
    }
    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `consultarExtratoFaturasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1.1/contas/{idConta}/faturas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (dataVencimento != nil) {
        
        queryParams[@"dataVencimento"] = dataVencimento;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

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
/// Retorna o limite
/// Consulte os limites de uma determinada conta
///  @param idConta ID da Conta 
///
///  @returns PierConsultarSaldoLimitesResponse*
///
-(NSNumber*) consultarSaldosLimitesUsingGETWithIdConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierConsultarSaldoLimitesResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarSaldosLimitesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1.1/contas/{idConta}/limites"];

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



@end
