#import "PierAutorizacaoApi.h"
#import "PierQueryParamCollection.h"
#import "PierTransacaoOnUsResponse.h"
#import "PierTransacaoOnUsPorIdCartaoRequest.h"
#import "PierAutorizacaoOnUsRequest.h"
#import "PierCancelamentoTransacaoPorIdCartaoRequest.h"
#import "PierCancelamentoTransacaoOnUsRequest.h"
#import "PierTransacaoOnUsRequest.h"


@interface PierAutorizacaoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierAutorizacaoApi

static PierAutorizacaoApi* singletonAPI = nil;

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

+(PierAutorizacaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierAutorizacaoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierAutorizacaoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierAutorizacaoApi alloc] init];
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
/// Autoriza transa\u00E7\u00E3o financeira por idConta
/// Este m\u00E9todo faz uma autoriza\u00E7\u00E3o de transa\u00E7\u00E3o financeira com o idConta.
///  @param _id Id Conta 
///
///  @param transacaoOnUsPorIdCartaoRequest transacaoOnUsPorIdCartaoRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) autorizarPorContaUsingPOSTWithId: (NSNumber*) _id
    transacaoOnUsPorIdCartaoRequest: (PierTransacaoOnUsPorIdCartaoRequest*) transacaoOnUsPorIdCartaoRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `autorizarPorContaUsingPOST`"];
    }
    
    // verify the required parameter 'transacaoOnUsPorIdCartaoRequest' is set
    if (transacaoOnUsPorIdCartaoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `transacaoOnUsPorIdCartaoRequest` when calling `autorizarPorContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/autorizar-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = transacaoOnUsPorIdCartaoRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}

///
/// Autoriza transa\u00E7\u00E3o financeira
/// Este m\u00E9todo faz uma autoriza\u00E7\u00E3o de transa\u00E7\u00E3o financeira.
///  @param autorizacaoOnUsRequest autorizacaoOnUsRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) autorizarUsingPOSTWithAutorizacaoOnUsRequest: (PierAutorizacaoOnUsRequest*) autorizacaoOnUsRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'autorizacaoOnUsRequest' is set
    if (autorizacaoOnUsRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `autorizacaoOnUsRequest` when calling `autorizarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/autorizar-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = autorizacaoOnUsRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}

///
/// Autoriza transa\u00E7\u00E3o financeira por idCartao
/// Este m\u00E9todo faz uma autoriza\u00E7\u00E3o de transa\u00E7\u00E3o financeira com o idCartao.
///  @param _id Id Cartao 
///
///  @param transacaoOnUsPorIdCartaoRequest transacaoOnUsPorIdCartaoRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) autorizarUsingPOST1WithId: (NSNumber*) _id
    transacaoOnUsPorIdCartaoRequest: (PierTransacaoOnUsPorIdCartaoRequest*) transacaoOnUsPorIdCartaoRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `autorizarUsingPOST1`"];
    }
    
    // verify the required parameter 'transacaoOnUsPorIdCartaoRequest' is set
    if (transacaoOnUsPorIdCartaoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `transacaoOnUsPorIdCartaoRequest` when calling `autorizarUsingPOST1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/autorizar-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = transacaoOnUsPorIdCartaoRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}

///
/// Cancela transa\u00E7\u00E3o financeira por idConta
/// Este m\u00E9todo permite que seja cancelada uma transa\u00E7\u00E3o a partir do idConta.
///  @param _id Id Conta 
///
///  @param cancelamentoRequest cancelamentoRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) cancelarPorIdContaUsingPOSTWithId: (NSNumber*) _id
    cancelamentoRequest: (PierCancelamentoTransacaoPorIdCartaoRequest*) cancelamentoRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cancelarPorIdContaUsingPOST`"];
    }
    
    // verify the required parameter 'cancelamentoRequest' is set
    if (cancelamentoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cancelamentoRequest` when calling `cancelarPorIdContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/cancelar-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = cancelamentoRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}

///
/// Cancela transa\u00E7\u00E3o financeira
/// Este m\u00E9todo permite que seja cancelada uma transa\u00E7\u00E3o.
///  @param cancelamentoRequest cancelamentoRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) cancelarUsingPOST2WithCancelamentoRequest: (PierCancelamentoTransacaoOnUsRequest*) cancelamentoRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'cancelamentoRequest' is set
    if (cancelamentoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cancelamentoRequest` when calling `cancelarUsingPOST2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cancelar-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = cancelamentoRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}

///
/// Cancela transa\u00E7\u00E3o financeira por idCartao
/// Este m\u00E9todo permite que seja cancelada uma transa\u00E7\u00E3o a partir do idCartao.
///  @param _id Id Cartao 
///
///  @param cancelamentoRequest cancelamentoRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) cancelarUsingPOST3WithId: (NSNumber*) _id
    cancelamentoRequest: (PierCancelamentoTransacaoPorIdCartaoRequest*) cancelamentoRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cancelarUsingPOST3`"];
    }
    
    // verify the required parameter 'cancelamentoRequest' is set
    if (cancelamentoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cancelamentoRequest` when calling `cancelarUsingPOST3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/cancelar-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = cancelamentoRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}

///
/// Retorna c\u00F3digos de processamento de autoriza\u00E7\u00E3o
/// Este m\u00E9todo retorna a lista dos c\u00F3digos de processamento para autoriza\u00E7\u00E3o de transa\u00E7\u00F5es financeiras.
///  @returns NSArray* /* NSObject */
///
-(NSNumber*) listarCodigosProcessamentoAutorizacaoUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/consultar-codigos-processamento-autorizacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    NSArray *authSettings = @[];

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
                              responseType: @"NSArray* /* NSObject */"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSArray* /* NSObject */)data, error);
                           }
          ];
}

///
/// Simula planos de transa\u00E7\u00F5es
/// Este m\u00E9todo permite que seja simulada um plano de transa\u00E7\u00F5es.
///  @param transacoesRequest transacoesRequest 
///
///  @returns PierTransacaoOnUsResponse*
///
-(NSNumber*) simularUsingPOSTWithTransacoesRequest: (PierTransacaoOnUsRequest*) transacoesRequest
    completionHandler: (void (^)(PierTransacaoOnUsResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'transacoesRequest' is set
    if (transacoesRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `transacoesRequest` when calling `simularUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/simular-transacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = transacoesRequest;
    

    
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
                              responseType: @"PierTransacaoOnUsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransacaoOnUsResponse*)data, error);
                           }
          ];
}



@end
