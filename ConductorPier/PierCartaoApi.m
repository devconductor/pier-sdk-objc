#import "PierCartaoApi.h"
#import "PierQueryParamCollection.h"
#import "PierCancelarCartaoResponse.h"
#import "PierConsultarCartaoResponse.h"
#import "PierDesbloquearCartaoResponse.h"
#import "PierEmbossadoCartaoResponse.h"


@interface PierCartaoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierCartaoApi

static PierCartaoApi* singletonAPI = nil;

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

+(PierCartaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCartaoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierCartaoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCartaoApi alloc] init];
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
/// Bloqueia um cart\u00C3\u00A3o
/// Bloquear um determinado cart\u00C3\u00A3o
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja cancelar 
///
///  @param motivo Motivo do bloqueio 
///
///  @param observacao Alguma observa\u00C3\u00A7\u00C3\u00A3o para o bloqueio (optional)
///
///  @returns PierCancelarCartaoResponse*
///
-(NSNumber*) bloquearCartaoUsingPOSTWithIdConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    motivo: (NSNumber*) motivo
    observacao: (NSString*) observacao
    completionHandler: (void (^)(PierCancelarCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `bloquearCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `bloquearCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'motivo' is set
    if (motivo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `motivo` when calling `bloquearCartaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{idConta}/cartoes/{idCartao}/bloquear"];

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
/// Retorna um cart\u00C3\u00A3o
/// Consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado cart\u00C3\u00A3o de uma conta
///  @param idConta ID da Conta que pertence o cart\u00C3\u00A3o 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja consultar 
///
///  @param numeroCartao N\u00C3\u00BAmero do Cart\u00C3\u00A3o que deseja consultar (opcional) (optional)
///
///  @returns PierConsultarCartaoResponse*
///
-(NSNumber*) consultarCartaoUsingGETWithIdConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    numeroCartao: (NSString*) numeroCartao
    completionHandler: (void (^)(PierConsultarCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarCartaoUsingGET`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `consultarCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{idConta}/cartoes/{idCartao}"];

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
/// Retorna todos os cart\u00C3\u00B5es
/// Consultar todos os cart\u00C3\u00B5es de uma determinada conta
///  @param idConta ID da Conta 
///
///  @returns PierConsultarCartaoResponse*
///
-(NSNumber*) consultarCartoesUsingGETWithIdConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierConsultarCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarCartoesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{idConta}/cartoes"];

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
                              responseType: @"PierConsultarCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierConsultarCartaoResponse*)data, error);
                           }
          ];
}

///
/// Desbloqueia um cart\u00C3\u00A3o
/// Desbloquear cart\u00C3\u00A3o de uma determinada conta
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja consultar o saldo/limite 
///
///  @param codigoSegurancao C\u00C3\u00B3digo seguran\u00C3\u00A7a do cart\u00C3\u00A3o (optional)
///
///  @returns PierDesbloquearCartaoResponse*
///
-(NSNumber*) desbloquearCartaoUsingPOSTWithIdConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    codigoSegurancao: (NSString*) codigoSegurancao
    completionHandler: (void (^)(PierDesbloquearCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `desbloquearCartaoUsingPOST`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `desbloquearCartaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{idConta}/cartoes/{idCartao}/desbloquear"];

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

///
/// Embossado
/// N\u00C3\u00B3s informe caso tenha embossado algum cart\u00C3\u00A3o.
///  @param idConta ID da Conta 
///
///  @param idCartao ID do Cart\u00C3\u00A3o que deseja cancelar 
///
///  @returns PierEmbossadoCartaoResponse*
///
-(NSNumber*) embossadoCartaoUsingPUTWithIdConta: (NSNumber*) idConta
    idCartao: (NSNumber*) idCartao
    completionHandler: (void (^)(PierEmbossadoCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `embossadoCartaoUsingPUT`"];
    }
    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `embossadoCartaoUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{idConta}/cartoes/{idCartao}/embossado"];

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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierEmbossadoCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEmbossadoCartaoResponse*)data, error);
                           }
          ];
}



@end
