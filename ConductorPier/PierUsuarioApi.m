#import "PierUsuarioApi.h"
#import "PierQueryParamCollection.h"
#import "PierUsuarioUpdate.h"
#import "PierUsuarioResponse.h"
#import "PierPageUsuarioResponse.h"
#import "PierUsuarioPersist.h"


@interface PierUsuarioApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierUsuarioApi

static PierUsuarioApi* singletonAPI = nil;

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

+(PierUsuarioApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierUsuarioApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierUsuarioApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierUsuarioApi alloc] init];
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
/// Alterar senha do usu\u00C3\u00A1rio.
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o da senha do usu\u00C3\u00A1rio.
///  @param login Login do usu\u00C3\u00A1rio. 
///
///  @param senhaNova Senha Nova 
///
///  @returns NSString*
///
-(NSNumber*) alterarSenhaLoginUsingPOSTWithLogin: (NSString*) login
    senhaNova: (NSString*) senhaNova
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter 'login' is set
    if (login == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `login` when calling `alterarSenhaLoginUsingPOST`"];
    }
    
    // verify the required parameter 'senhaNova' is set
    if (senhaNova == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senhaNova` when calling `alterarSenhaLoginUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{login}/alterar-senha"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (login != nil) {
        pathParams[@"login"] = login;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (senhaNova != nil) {
        headerParams[@"senhaNova"] = senhaNova;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Alterar senha do usu\u00C3\u00A1rio na base do PIER ou WS.
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o da senha do usu\u00C3\u00A1rio.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @param senhaAtual Senha Atual 
///
///  @param senhaNova Senha Nova 
///
///  @returns NSString*
///
-(NSNumber*) alterarSenhaUsingPUTWithId: (NSNumber*) _id
    senhaAtual: (NSString*) senhaAtual
    senhaNova: (NSString*) senhaNova
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarSenhaUsingPUT`"];
    }
    
    // verify the required parameter 'senhaAtual' is set
    if (senhaAtual == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senhaAtual` when calling `alterarSenhaUsingPUT`"];
    }
    
    // verify the required parameter 'senhaNova' is set
    if (senhaNova == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senhaNova` when calling `alterarSenhaUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/alterar-senha"];

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

    if (senhaAtual != nil) {
        headerParams[@"senha_atual"] = senhaAtual;
    }
    if (senhaNova != nil) {
        headerParams[@"senha_nova"] = senhaNova;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Altera os usu\u00C3\u00A1rios cadastrados na base.
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos usu\u00C3\u00A1rios.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @param update update 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) alterarUsingPUT19WithId: (NSNumber*) _id
    update: (PierUsuarioUpdate*) update
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT19`"];
    }
    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `alterarUsingPUT19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}"];

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
    
    bodyParam = update;
    

    
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
                              responseType: @"PierUsuarioResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierUsuarioResponse*)data, error);
                           }
          ];
}

///
/// Ativa os usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
/// Este m\u00C3\u00A9todo realiza a ativa\u00C3\u00A7\u00C3\u00A3o dos usu\u00C3\u00A1rios.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) ativarUsuarioUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `ativarUsuarioUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/ativar-usuario"];

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
                              responseType: @"PierUsuarioResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierUsuarioResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Usu\u00C3\u00A1rio na base do PIER ou WS.
/// Este m\u00C3\u00A9todo permite consultar as informa\u00C3\u00A7\u00C3\u00B5es de um determinado Usu\u00C3\u00A1rio a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) consultarUsingGET40WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET40`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}"];

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
                              responseType: @"PierUsuarioResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierUsuarioResponse*)data, error);
                           }
          ];
}

///
/// Desativa os usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
/// Este m\u00C3\u00A9todo realiza a desativa\u00C3\u00A7\u00C3\u00A3o dos usu\u00C3\u00A1rios.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) desativarUsuarioUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarUsuarioUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/desativar-usuario"];

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
                              responseType: @"PierUsuarioResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierUsuarioResponse*)data, error);
                           }
          ];
}

///
/// Lista os Usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
/// Este m\u00C3\u00A9todo permite que sejam listados os usu\u00C3\u00A1rios existentes na base do PIER.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param nome Nome do Usuario (optional)
///
///  @param cpf CPF do Usuario (optional)
///
///  @param email Email do Usuario (optional)
///
///  @param status Status do Usuario (optional)
///
///  @returns PierPageUsuarioResponse*
///
-(NSNumber*) listarUsingGET44WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    cpf: (NSString*) cpf
    email: (NSString*) email
    status: (NSString*) status
    completionHandler: (void (^)(PierPageUsuarioResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (cpf != nil) {
        
        queryParams[@"cpf"] = cpf;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
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
                              responseType: @"PierPageUsuarioResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageUsuarioResponse*)data, error);
                           }
          ];
}

///
/// Recuperar senha do usu\u00C3\u00A1rio na base do PIER ou WS.
/// Esse recurso permite recuperar a senha do usu\u00C3\u00A1rio.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @returns NSString*
///
-(NSNumber*) recuperarSenhaUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `recuperarSenhaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/recuperar-senha"];

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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Cadastra Usu\u00C3\u00A1rio na base.
/// Esse recurso permite cadastrar usu\u00C3\u00A1rios.
///  @param persist persist 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) salvarUsingPOST25WithPersist: (PierUsuarioPersist*) persist
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarUsingPOST25`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios"];

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
    
    bodyParam = persist;
    

    
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
                              responseType: @"PierUsuarioResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierUsuarioResponse*)data, error);
                           }
          ];
}

///
/// Realiza login com valida\u00C3\u00A7\u00C3\u00A3o de senha dos usu\u00C3\u00A1rios cadastrados na base do PIER ou WS.
/// O recurso permite fazer login do usu\u00C3\u00A1rio atrav\u00C3\u00A9s da senha definida pelo emissor.
///  @param login Login identificador do usu\u00C3\u00A1rio (login). 
///
///  @param senha Senha do usu\u00C3\u00A1rio 
///
///  @returns NSObject*
///
-(NSNumber*) validarSenhaLoginUsingPOSTWithLogin: (NSString*) login
    senha: (NSString*) senha
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter 'login' is set
    if (login == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `login` when calling `validarSenhaLoginUsingPOST`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `validarSenhaLoginUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{login}/validar-senha"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (login != nil) {
        pathParams[@"login"] = login;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (senha != nil) {
        headerParams[@"senha"] = senha;
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}

///
/// Validar a senha do usu\u00C3\u00A1rio na base do PIER ou WS.
/// Este m\u00C3\u00A9todo permite validar a senha do usu\u00C3\u00A1rio).
///  @param senha Senha do usu\u00C3\u00A1rio 
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Usu\u00C3\u00A1rio (id). 
///
///  @returns NSString*
///
-(NSNumber*) validarSenhaUsingGET1WithSenha: (NSString*) senha
    _id: (NSNumber*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `validarSenhaUsingGET1`"];
    }
    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `validarSenhaUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/validar-senha"];

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

    if (senha != nil) {
        headerParams[@"senha"] = senha;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}



@end
