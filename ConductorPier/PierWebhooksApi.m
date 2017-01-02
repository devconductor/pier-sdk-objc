#import "PierWebhooksApi.h"
#import "PierQueryParamCollection.h"
#import "PierObject.h"
#import "PierWebHook.h"
#import "PierPageWebHooks.h"


@interface PierWebhooksApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierWebhooksApi

static PierWebhooksApi* singletonAPI = nil;

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

+(PierWebhooksApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierWebhooksApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierWebhooksApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierWebhooksApi alloc] init];
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
///  @param evento Evento a ser chamado pelo WebHook 
///
///  @param metodo M\u00C3\u00A9todo que a ser chamado pelo WebHook 
///
///  @param url URL que a ser consumida pelo WebHook 
///
///  @returns PierWebHook*
///
-(NSNumber*) alterarUsingPUT2WithId: (NSNumber*) _id
    evento: (PierObject*) evento
    metodo: (PierObject*) metodo
    url: (NSString*) url
    completionHandler: (void (^)(PierWebHook* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT2`"];
    }
    
    // verify the required parameter 'evento' is set
    if (evento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `evento` when calling `alterarUsingPUT2`"];
    }
    
    // verify the required parameter 'metodo' is set
    if (metodo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `metodo` when calling `alterarUsingPUT2`"];
    }
    
    // verify the required parameter 'url' is set
    if (url == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `url` when calling `alterarUsingPUT2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (evento != nil) {
        
        queryParams[@"evento"] = evento;
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
                              responseType: @"PierWebHook*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierWebHook*)data, error);
                           }
          ];
}

///
/// Consultar Webhook
/// Este m\u00C3\u00A9todo permite que sejam consultado um webhook do emissor atrav\u00C3\u00A9s de um id especifico
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Webhook (id). 
///
///  @returns PierWebHook*
///
-(NSNumber*) consultarUsingGET9WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierWebHook* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET9`"];
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
                              responseType: @"PierWebHook*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierWebHook*)data, error);
                           }
          ];
}

///
/// Lista os Webhooks
/// Este m\u00C3\u00A9todo permite que sejam listados os webhooks existentes
///  @param _id Id do WebHook (optional)
///
///  @param evento Evento a ser chamado pelo WebHook (optional)
///
///  @param metodo M\u00C3\u00A9todo que a ser chamado pelo WebHook (optional)
///
///  @param url URL que a ser consumida pelo WebHook (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @returns PierPageWebHooks*
///
-(NSNumber*) listarUsingGET10WithId: (NSNumber*) _id
    evento: (PierObject*) evento
    metodo: (PierObject*) metodo
    url: (NSString*) url
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageWebHooks* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (evento != nil) {
        
        queryParams[@"evento"] = evento;
    }
    if (metodo != nil) {
        
        queryParams[@"metodo"] = metodo;
    }
    if (url != nil) {
        
        queryParams[@"url"] = url;
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
                              responseType: @"PierPageWebHooks*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageWebHooks*)data, error);
                           }
          ];
}

///
/// Salvar Webhook
/// Este m\u00C3\u00A9todo permite que seja adicionado um novo webhook
///  @param evento Evento a ser chamado pelo WebHook 
///
///  @param metodo M\u00C3\u00A9todo que a ser chamado pelo WebHook 
///
///  @param url URL que a ser consumida pelo WebHook 
///
///  @returns PierWebHook*
///
-(NSNumber*) salvarUsingPOST3WithEvento: (PierObject*) evento
    metodo: (PierObject*) metodo
    url: (NSString*) url
    completionHandler: (void (^)(PierWebHook* output, NSError* error)) handler {

    
    // verify the required parameter 'evento' is set
    if (evento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `evento` when calling `salvarUsingPOST3`"];
    }
    
    // verify the required parameter 'metodo' is set
    if (metodo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `metodo` when calling `salvarUsingPOST3`"];
    }
    
    // verify the required parameter 'url' is set
    if (url == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `url` when calling `salvarUsingPOST3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/webhooks"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (evento != nil) {
        
        queryParams[@"evento"] = evento;
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
                              responseType: @"PierWebHook*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierWebHook*)data, error);
                           }
          ];
}



@end