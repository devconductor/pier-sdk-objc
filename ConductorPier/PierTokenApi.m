#import "PierTokenApi.h"
#import "PierQueryParamCollection.h"
#import "PierToken.h"
#import "PierBodyAccessToken.h"
#import "PierPageBases.h"


@interface PierTokenApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierTokenApi

static PierTokenApi* singletonAPI = nil;

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

+(PierTokenApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierTokenApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierTokenApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierTokenApi alloc] init];
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
/// Alterar token
/// Este recurso permite que seja modificado um token j\u00C3\u00A1 cadastrado
///  @param _id C\u00C3\u00B3digo identificador do token 
///
///  @param token Token (optional)
///
///  @param base C\u00C3\u00B3digo identificador da base (optional)
///
///  @param owner Owner do token (optional)
///
///  @param status Status do token (optional)
///
///  @param criadoPor Descri\u00C3\u00A7\u00C3\u00A3o de quem criou o token (optional)
///
///  @param alteradoPor Descri\u00C3\u00A7\u00C3\u00A3o de quem alterou o token (optional)
///
///  @returns PierToken*
///
-(NSNumber*) alterarUsingPUT5WithId: (NSNumber*) _id
    token: (NSString*) token
    base: (NSNumber*) base
    owner: (NSString*) owner
    status: (NSString*) status
    criadoPor: (NSString*) criadoPor
    alteradoPor: (NSString*) alteradoPor
    completionHandler: (void (^)(PierToken* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT5`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tokens"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (token != nil) {
        
        queryParams[@"token"] = token;
    }
    if (base != nil) {
        
        queryParams[@"base"] = base;
    }
    if (owner != nil) {
        
        queryParams[@"owner"] = owner;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (criadoPor != nil) {
        
        queryParams[@"criadoPor"] = criadoPor;
    }
    if (alteradoPor != nil) {
        
        queryParams[@"alteradoPor"] = alteradoPor;
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
                              responseType: @"PierToken*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierToken*)data, error);
                           }
          ];
}

///
/// /api/tokens/callback
/// 
///  @param bodyAccessToken bodyAccessToken 
///
///  @returns PierBodyAccessToken*
///
-(NSNumber*) callbackUsingPOSTWithBodyAccessToken: (PierBodyAccessToken*) bodyAccessToken
    completionHandler: (void (^)(PierBodyAccessToken* output, NSError* error)) handler {

    
    // verify the required parameter 'bodyAccessToken' is set
    if (bodyAccessToken == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `bodyAccessToken` when calling `callbackUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tokens/callback"];

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
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = bodyAccessToken;
    

    
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
                              responseType: @"PierBodyAccessToken*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBodyAccessToken*)data, error);
                           }
          ];
}

///
/// Consultar token
/// Este recurso permite que seja consultado um token do emissor atrav\u00C3\u00A9s de um id especifico
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do token (id). 
///
///  @returns PierToken*
///
-(NSNumber*) consultarUsingGET14WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierToken* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET14`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tokens/{id}"];

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
                              responseType: @"PierToken*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierToken*)data, error);
                           }
          ];
}

///
/// Listar tokens
/// Este recurso permite que sejam listados os tokens existentes
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param _id C\u00C3\u00B3digo identificador do token (optional)
///
///  @param token Token (optional)
///
///  @param base C\u00C3\u00B3digo identificador da base (optional)
///
///  @param owner Owner do token (optional)
///
///  @param status Status do token (optional)
///
///  @param criadoPor Descri\u00C3\u00A7\u00C3\u00A3o de quem criou o token (optional)
///
///  @param dataCriacao Data de cria\u00C3\u00A7\u00C3\u00A3o do token (optional)
///
///  @param alteradoPor Descri\u00C3\u00A7\u00C3\u00A3o de quem alterou o token (optional)
///
///  @param dataModificacao Data de modifica\u00C3\u00A7\u00C3\u00A3o do token (optional)
///
///  @returns PierPageBases*
///
-(NSNumber*) listarUsingGET14WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    token: (NSString*) token
    base: (NSNumber*) base
    owner: (NSString*) owner
    status: (NSString*) status
    criadoPor: (NSString*) criadoPor
    dataCriacao: (NSDate*) dataCriacao
    alteradoPor: (NSString*) alteradoPor
    dataModificacao: (NSDate*) dataModificacao
    completionHandler: (void (^)(PierPageBases* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tokens"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (token != nil) {
        
        queryParams[@"token"] = token;
    }
    if (base != nil) {
        
        queryParams[@"base"] = base;
    }
    if (owner != nil) {
        
        queryParams[@"owner"] = owner;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (criadoPor != nil) {
        
        queryParams[@"criadoPor"] = criadoPor;
    }
    if (dataCriacao != nil) {
        
        queryParams[@"dataCriacao"] = dataCriacao;
    }
    if (alteradoPor != nil) {
        
        queryParams[@"alteradoPor"] = alteradoPor;
    }
    if (dataModificacao != nil) {
        
        queryParams[@"dataModificacao"] = dataModificacao;
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
                              responseType: @"PierPageBases*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageBases*)data, error);
                           }
          ];
}

///
/// Salvar token
/// Este recurso permite que seja adicionado um novo token
///  @param token Token (optional)
///
///  @param base C\u00C3\u00B3digo identificador da base (optional)
///
///  @param owner Owner do token (optional)
///
///  @param status Status do token (optional)
///
///  @param criadoPor Descri\u00C3\u00A7\u00C3\u00A3o de quem criou o token (optional)
///
///  @param alteradoPor Descri\u00C3\u00A7\u00C3\u00A3o de quem alterou o token (optional)
///
///  @returns PierToken*
///
-(NSNumber*) salvarUsingPOST5WithToken: (NSString*) token
    base: (NSNumber*) base
    owner: (NSString*) owner
    status: (NSString*) status
    criadoPor: (NSString*) criadoPor
    alteradoPor: (NSString*) alteradoPor
    completionHandler: (void (^)(PierToken* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tokens"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (token != nil) {
        
        queryParams[@"token"] = token;
    }
    if (base != nil) {
        
        queryParams[@"base"] = base;
    }
    if (owner != nil) {
        
        queryParams[@"owner"] = owner;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (criadoPor != nil) {
        
        queryParams[@"criadoPor"] = criadoPor;
    }
    if (alteradoPor != nil) {
        
        queryParams[@"alteradoPor"] = alteradoPor;
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
                              responseType: @"PierToken*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierToken*)data, error);
                           }
          ];
}

///
/// /api/tokens/validar
/// 
///  @param bodyAccessToken bodyAccessToken 
///
///  @returns NSObject*
///
-(NSNumber*) validarUsingPOSTWithBodyAccessToken: (PierBodyAccessToken*) bodyAccessToken
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter 'bodyAccessToken' is set
    if (bodyAccessToken == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `bodyAccessToken` when calling `validarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tokens/validar"];

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
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = bodyAccessToken;
    

    
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}



@end
