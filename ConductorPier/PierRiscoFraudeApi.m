#import "PierRiscoFraudeApi.h"
#import "PierQueryParamCollection.h"
#import "PierRiscoFraudeDetalhadoResponse.h"
#import "PierRiscoFraudeResponsePage.h"


@interface PierRiscoFraudeApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierRiscoFraudeApi

static PierRiscoFraudeApi* singletonAPI = nil;

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

+(PierRiscoFraudeApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierRiscoFraudeApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierRiscoFraudeApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierRiscoFraudeApi alloc] init];
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
/// Consultar uma transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude
/// Consulta os detalhes de uma transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do risco de fraude 
///
///  @returns PierRiscoFraudeDetalhadoResponse*
///
-(NSNumber*) consultarUsingGET12WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierRiscoFraudeDetalhadoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET12`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/riscos-fraudes/{id}"];

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
                              responseType: @"PierRiscoFraudeDetalhadoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierRiscoFraudeDetalhadoResponse*)data, error);
                           }
          ];
}

///
/// Listar as transa\u00C3\u00A7\u00C3\u00B5es com resolu\u00C3\u00A7\u00C3\u00A3o de risco fraude pendente
/// Este recurso permite que sejam listados os riscos de fraudes existentes
///  @param idConta Id Conta 
///
///  @param confirmacaoFraude Confirma\u00C3\u00A7\u00C3\u00A3o da fraude 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierRiscoFraudeResponsePage*
///
-(NSNumber*) listarUsingGET19WithIdConta: (NSNumber*) idConta
    confirmacaoFraude: (NSString*) confirmacaoFraude
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierRiscoFraudeResponsePage* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `listarUsingGET19`"];
    }
    
    // verify the required parameter 'confirmacaoFraude' is set
    if (confirmacaoFraude == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `confirmacaoFraude` when calling `listarUsingGET19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/riscos-fraudes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"id_conta"] = idConta;
    }
    if (confirmacaoFraude != nil) {
        
        queryParams[@"confirmacao_fraude"] = confirmacaoFraude;
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
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
                              responseType: @"PierRiscoFraudeResponsePage*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierRiscoFraudeResponsePage*)data, error);
                           }
          ];
}

///
/// Negar autenticidade da transa\u00C3\u00A7\u00C3\u00A3o com risco de fraude
/// Nega a realiza\u00C3\u00A7\u00C3\u00A3o da transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do risco de fraude 
///
///  @returns PierRiscoFraudeDetalhadoResponse*
///
-(NSNumber*) negarUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierRiscoFraudeDetalhadoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `negarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/riscos-fraudes/{id}/negar"];

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
                              responseType: @"PierRiscoFraudeDetalhadoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierRiscoFraudeDetalhadoResponse*)data, error);
                           }
          ];
}

///
/// Reconhecer a transa\u00C3\u00A7\u00C3\u00A3o com risco de fraude
/// Confirma a autenticidade da transa\u00C3\u00A7\u00C3\u00A3o classificada com risco de fraude.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do risco de fraude 
///
///  @returns PierRiscoFraudeDetalhadoResponse*
///
-(NSNumber*) reconhecerUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierRiscoFraudeDetalhadoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `reconhecerUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/riscos-fraudes/{id}/reconhecer"];

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
                              responseType: @"PierRiscoFraudeDetalhadoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierRiscoFraudeDetalhadoResponse*)data, error);
                           }
          ];
}



@end
