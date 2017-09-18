#import "PierWebhookApi.h"
#import "PierQueryParamCollection.h"
#import "PierWebHookResponse.h"
#import "PierPageWebHookResponse.h"


@interface PierWebhookApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierWebhookApi

static PierWebhookApi* singletonAPI = nil;

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

+(PierWebhookApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierWebhookApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierWebhookApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierWebhookApi alloc] init];
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
/// Alterar Webhook
/// Este m\u00C3\u00A9todo permite que seja modificado um webhooks j\u00C3\u00A1 cadastrado
///  @param _id C\u00C3\u00B3digo identificador do Webhook 
///
///  @param tipoEvento TipoEvento a ser chamado pelo WebHook 
///
///  @param url URL que a ser consumida pelo WebHook 
///
///  @param status Status (optional)
///
///  @returns PierWebHookResponse*
///
-(NSNumber*) alterarUsingPUT11WithId: (NSNumber*) _id
    tipoEvento: (NSString*) tipoEvento
    url: (NSString*) url
    status: (NSString*) status
    completionHandler: (void (^)(PierWebHookResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT11`"];
    }
    
    // verify the required parameter 'tipoEvento' is set
    if (tipoEvento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoEvento` when calling `alterarUsingPUT11`"];
    }
    
    // verify the required parameter 'url' is set
    if (url == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `url` when calling `alterarUsingPUT11`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (tipoEvento != nil) {
        
        queryParams[@"tipoEvento"] = tipoEvento;
    }
    if (url != nil) {
        
        queryParams[@"url"] = url;
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
                              responseType: @"PierWebHookResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierWebHookResponse*)data, error);
                           }
          ];
}

///
/// Consultar Webhook
/// Este m\u00C3\u00A9todo permite que sejam consultado um webhook do emissor atrav\u00C3\u00A9s de um id especifico
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Webhook (id). 
///
///  @returns PierWebHookResponse*
///
-(NSNumber*) consultarUsingGET28WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierWebHookResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET28`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks/{id}"];

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
                              responseType: @"PierWebHookResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierWebHookResponse*)data, error);
                           }
          ];
}

///
/// Lista os Webhooks
/// Este m\u00C3\u00A9todo permite que sejam listados os webhooks existentes
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id Id do WebHook (optional)
///
///  @param tipoEvento TipoEvento a ser chamado pelo WebHook (optional)
///
///  @param metodo M\u00C3\u00A9todo que a ser chamado pelo WebHook (optional)
///
///  @param url URL que a ser consumida pelo WebHook (optional)
///
///  @returns PierPageWebHookResponse*
///
-(NSNumber*) listarUsingGET34WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    tipoEvento: (NSString*) tipoEvento
    metodo: (NSString*) metodo
    url: (NSString*) url
    completionHandler: (void (^)(PierPageWebHookResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (tipoEvento != nil) {
        
        queryParams[@"tipoEvento"] = tipoEvento;
    }
    if (metodo != nil) {
        
        queryParams[@"metodo"] = metodo;
    }
    if (url != nil) {
        
        queryParams[@"url"] = url;
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
                              responseType: @"PierPageWebHookResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageWebHookResponse*)data, error);
                           }
          ];
}

///
/// Salvar Webhook
/// Este m\u00C3\u00A9todo permite que seja adicionado um novo webhook
///  @param tipoEvento TipoEvento a ser chamado pelo WebHook 
///
///  @param url URL que a ser consumida pelo WebHook 
///
///  @returns PierWebHookResponse*
///
-(NSNumber*) salvarUsingPOST17WithTipoEvento: (NSString*) tipoEvento
    url: (NSString*) url
    completionHandler: (void (^)(PierWebHookResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'tipoEvento' is set
    if (tipoEvento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoEvento` when calling `salvarUsingPOST17`"];
    }
    
    // verify the required parameter 'url' is set
    if (url == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `url` when calling `salvarUsingPOST17`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (tipoEvento != nil) {
        
        queryParams[@"tipoEvento"] = tipoEvento;
    }
    if (url != nil) {
        
        queryParams[@"url"] = url;
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
                              responseType: @"PierWebHookResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierWebHookResponse*)data, error);
                           }
          ];
}



@end
