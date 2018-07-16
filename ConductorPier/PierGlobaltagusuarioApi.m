#import "PierGlobaltagusuarioApi.h"
#import "PierQueryParamCollection.h"
#import "PierUsuarioResponse.h"
#import "PierUsuarioUpdateValue_.h"
#import "PierControleSegurancaDispositivoResponse.h"
#import "PierControleSegurancaDispositivoUpdateValor_.h"
#import "PierPageUsuarioContasResponse.h"
#import "PierPageControleSegurancaDispositivoResponse.h"
#import "PierPageUsuarioResponse.h"
#import "PierUsuarioPersistencia_.h"
#import "PierControleSegurancaDispositivoPersistencia_.h"
#import "PierUsuarioSenhaFortePersistencia_.h"


@interface PierGlobaltagusuarioApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagusuarioApi

static PierGlobaltagusuarioApi* singletonAPI = nil;

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

+(PierGlobaltagusuarioApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagusuarioApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagusuarioApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagusuarioApi alloc] init];
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
/// {{{usuario_resource_alterar_senha_login}}}
/// {{{usuario_resource_alterar_senha_login_notes}}}
///  @param login {{{usuario_resource_alterar_senha_login_param_login}}} 
///
///  @param senhaNova {{{usuario_resource_alterar_senha_login_param_senha_nova}}} 
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
/// {{{usuario_resource_alterar_senha}}}
/// {{{usuario_resource_alterar_senha_notes}}}
///  @param _id {{{usuario_resource_alterar_senha_param_id}}} 
///
///  @param senhaAtual {{{usuario_resource_alterar_senha_param_senha_atual}}} 
///
///  @param senhaNova {{{usuario_resource_alterar_senha_param_senha_nova}}} 
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
/// {{{usuario_resource_alterar}}}
/// {{{usuario_resource_alterar_notes}}}
///  @param _id {{{usuario_resource_alterar_param_id}}} 
///
///  @param update update 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) alterarUsingPUT23WithId: (NSNumber*) _id
    update: (PierUsuarioUpdateValue_*) update
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT23`"];
    }
    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `alterarUsingPUT23`"];
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
/// {{{usuario_resource_ativar_usuario}}}
/// {{{usuario_resource_ativar_usuario_notes}}}
///  @param _id {{{usuario_resource_ativar_usuario_param_id}}} 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) ativarUsuarioUsingPOST1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `ativarUsuarioUsingPOST1`"];
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
/// {{{controle_seguranca_dispositivo_atualizar}}}
/// {{{controle_seguranca_dispositivo_atualizar_notas}}}
///  @param update update 
///
///  @returns PierControleSegurancaDispositivoResponse*
///
-(NSNumber*) atualizarUsingPUT2WithUpdate: (PierControleSegurancaDispositivoUpdateValor_*) update
    completionHandler: (void (^)(PierControleSegurancaDispositivoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `atualizarUsingPUT2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/controles-seguranca-dispositivos"];

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
                              responseType: @"PierControleSegurancaDispositivoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierControleSegurancaDispositivoResponse*)data, error);
                           }
          ];
}

///
/// {{{usuario_recurso_listar_por_id_usuario}}}
/// {{{usuario_recurso_listar_por_id_usuario_notas}}}
///  @param _id {{{usuario_recurso_listar_por_id_param_id_usuario}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @returns PierPageUsuarioContasResponse*
///
-(NSNumber*) consultarContasVinculadasUsingGETWithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageUsuarioContasResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarContasVinculadasUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/vincular-contas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

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
                              responseType: @"PierPageUsuarioContasResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageUsuarioContasResponse*)data, error);
                           }
          ];
}

///
/// {{{controle_seguranca_dispositivo_consultar}}}
/// {{{controle_seguranca_dispositivo_consultar_notas}}}
///  @param idUsuario {{{usuario_resource_consultar_param_idUsuario}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @returns PierPageControleSegurancaDispositivoResponse*
///
-(NSNumber*) consultarUsingGET15WithIdUsuario: (NSNumber*) idUsuario
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageControleSegurancaDispositivoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idUsuario' is set
    if (idUsuario == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idUsuario` when calling `consultarUsingGET15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/controles-seguranca-dispositivos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idUsuario != nil) {
        
        queryParams[@"idUsuario"] = idUsuario;
    }
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
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
                              responseType: @"PierPageControleSegurancaDispositivoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageControleSegurancaDispositivoResponse*)data, error);
                           }
          ];
}

///
/// {{{usuario_resource_consultar}}}
/// {{{usuario_resource_consultar_notes}}}
///  @param _id {{{usuario_resource_consultar_param_id}}} 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) consultarUsingGET51WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET51`"];
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
/// {{{usuario_resource_desativar_usuario}}}
/// {{{usuario_resource_desativar_usuario_notes}}}
///  @param _id {{{usuario_resource_desativar_usuario_param_id}}} 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) desativarUsuarioUsingPOST1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarUsuarioUsingPOST1`"];
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
/// {{{usuario_resource_listar}}}
/// {{{usuario_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param nome {{{usuario_request_nome_value}}} (optional)
///
///  @param cpf {{{usuario_request_cpf_value}}} (optional)
///
///  @param email {{{usuario_request_email_value}}} (optional)
///
///  @param status {{{usuario_request_status_value}}} (optional)
///
///  @returns PierPageUsuarioResponse*
///
-(NSNumber*) listarUsingGET62WithSort: (NSArray* /* NSString */) sort
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
/// {{{usuario_resource_recuperar_senha}}}
/// {{{usuario_resource_recuperar_senha_notes}}}
///  @param _id {{{usuario_resource_recuperar_senha_param_id}}} 
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
/// {{{usuario_resource_salvar}}}
/// {{{usuario_resource_salvar_notes}}}
///  @param persist persist 
///
///  @returns PierUsuarioResponse*
///
-(NSNumber*) salvarUsingPOST33WithPersist: (PierUsuarioPersistencia_*) persist
    completionHandler: (void (^)(PierUsuarioResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarUsingPOST33`"];
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
/// {{{controle_seguranca_dispositivo_salvar}}}
/// {{{controle_seguranca_dispositivo_salvar_notas}}}
///  @param persist persist 
///
///  @returns PierControleSegurancaDispositivoResponse*
///
-(NSNumber*) salvarUsingPOST9WithPersist: (PierControleSegurancaDispositivoPersistencia_*) persist
    completionHandler: (void (^)(PierControleSegurancaDispositivoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarUsingPOST9`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/controles-seguranca-dispositivos"];

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
                              responseType: @"PierControleSegurancaDispositivoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierControleSegurancaDispositivoResponse*)data, error);
                           }
          ];
}

///
/// {{{usuario_resource_validar_senha_forte}}}
/// {{{usuario_resource_validar_senha_forte_notes}}}
///  @param senha {{{usuario_resource_validar_senha_forte_param_senha}}} 
///
///  @param usuarioSenhaFortePersist {{{usuario_resource_validar_senha_forte_param_id_plataforma}}} 
///
///  @returns NSString*
///
-(NSNumber*) validarSenhaForteUsingPOSTWithSenha: (NSString*) senha
    usuarioSenhaFortePersist: (PierUsuarioSenhaFortePersistencia_*) usuarioSenhaFortePersist
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `validarSenhaForteUsingPOST`"];
    }
    
    // verify the required parameter 'usuarioSenhaFortePersist' is set
    if (usuarioSenhaFortePersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `usuarioSenhaFortePersist` when calling `validarSenhaForteUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/validar-senha-forte"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    
    bodyParam = usuarioSenhaFortePersist;
    

    
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
/// {{{usuario_resource_validar_senha_login}}}
/// {{{usuario_resource_validar_senha_login_notes}}}
///  @param login {{{usuario_resource_validar_senha_login_param_login}}} 
///
///  @param senha {{{usuario_resource_validar_senha_login_param_senha}}} 
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
/// {{{usuario_resource_validar_senha}}}
/// {{{usuario_resource_validar_senha_notes}}}
///  @param senha {{{usuario_resource_validar_senha_param_senha}}} 
///
///  @param _id {{{usuario_resource_validar_senha_param_id}}} 
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

///
/// {{{usuario_recurso_vincular_usuarios}}}
/// {{{usuario_recurso_vincular_usuarios_notas}}}
///  @param _id {{{usuario_recurso_vincular_usuarios_param_id}}} 
///
///  @returns NSString*
///
-(NSNumber*) vincularContasUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `vincularContasUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/usuarios/{id}/vincular-usuarios"];

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



@end
