#import "PierBaseApi.h"
#import "PierQueryParamCollection.h"
#import "PierBase.h"
#import "PierBodyAccessToken.h"
#import "PierPageBases.h"


@interface PierBaseApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierBaseApi

static PierBaseApi* singletonAPI = nil;

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

+(PierBaseApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierBaseApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierBaseApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierBaseApi alloc] init];
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
/// Alterar base
/// Este recurso permite que seja modificado uma base j\u00C3\u00A1 cadastrada
///  @param _id C\u00C3\u00B3digo identificador da base 
///
///  @param servidor IP do servidor 
///
///  @param usuario Nome do usu\u00C3\u00A1rio 
///
///  @param senha Senha 
///
///  @param nomeBase Nome da base 
///
///  @param senhaCriptografada senha Criptografada 
///
///  @param domain Dom\u00C3\u00ADnio da base 
///
///  @param nomeBaseControleAcesso Nome da base de controle acesso 
///
///  @param servidorControleAcesso Servidor do controle de acesso 
///
///  @param idEmissor C\u00C3\u00B3digo do identificador do emissor (optional)
///
///  @returns PierBase*
///
-(NSNumber*) alterarUsingPUTWithId: (NSNumber*) _id
    servidor: (NSString*) servidor
    usuario: (NSString*) usuario
    senha: (NSString*) senha
    nomeBase: (NSString*) nomeBase
    senhaCriptografada: (NSNumber*) senhaCriptografada
    domain: (NSString*) domain
    nomeBaseControleAcesso: (NSString*) nomeBaseControleAcesso
    servidorControleAcesso: (NSString*) servidorControleAcesso
    idEmissor: (NSNumber*) idEmissor
    completionHandler: (void (^)(PierBase* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'servidor' is set
    if (servidor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `servidor` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'usuario' is set
    if (usuario == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `usuario` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'nomeBase' is set
    if (nomeBase == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomeBase` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'senhaCriptografada' is set
    if (senhaCriptografada == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senhaCriptografada` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'domain' is set
    if (domain == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `domain` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'nomeBaseControleAcesso' is set
    if (nomeBaseControleAcesso == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomeBaseControleAcesso` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'servidorControleAcesso' is set
    if (servidorControleAcesso == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `servidorControleAcesso` when calling `alterarUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bases"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (servidor != nil) {
        
        queryParams[@"servidor"] = servidor;
    }
    if (usuario != nil) {
        
        queryParams[@"usuario"] = usuario;
    }
    if (senha != nil) {
        
        queryParams[@"senha"] = senha;
    }
    if (nomeBase != nil) {
        
        queryParams[@"nomeBase"] = nomeBase;
    }
    if (senhaCriptografada != nil) {
        
        queryParams[@"senhaCriptografada"] = senhaCriptografada;
    }
    if (domain != nil) {
        
        queryParams[@"domain"] = domain;
    }
    if (nomeBaseControleAcesso != nil) {
        
        queryParams[@"nomeBaseControleAcesso"] = nomeBaseControleAcesso;
    }
    if (idEmissor != nil) {
        
        queryParams[@"idEmissor"] = idEmissor;
    }
    if (servidorControleAcesso != nil) {
        
        queryParams[@"servidorControleAcesso"] = servidorControleAcesso;
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
                              responseType: @"PierBase*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBase*)data, error);
                           }
          ];
}

///
/// Limpar mapa de bases
/// 
///  @returns PierBodyAccessToken*
///
-(NSNumber*) clearUsingGETWithCompletionHandler: 
    (void (^)(PierBodyAccessToken* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bases/clear"];

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
                              responseType: @"PierBodyAccessToken*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBodyAccessToken*)data, error);
                           }
          ];
}

///
/// Consultar base
/// Este recurso permite que seja consultada uma base do emissor atrav\u00C3\u00A9s de um id especifico
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da base (id). 
///
///  @returns PierBase*
///
-(NSNumber*) consultarUsingGET1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierBase* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bases/{id}"];

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
                              responseType: @"PierBase*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBase*)data, error);
                           }
          ];
}

///
/// Listar bases
/// Este recurso permite que sejam listadas as bases existentes
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param _id C\u00C3\u00B3digo identificador da base (optional)
///
///  @param servidor IP do servidor (optional)
///
///  @param usuario Nome do usu\u00C3\u00A1rio (optional)
///
///  @param senha Senha (optional)
///
///  @param nomeBase Nome da base (optional)
///
///  @param senhaCriptografada senha Criptografada (optional)
///
///  @param domain Dom\u00C3\u00ADnio da base (optional)
///
///  @param nomeBaseControleAcesso Nome da base de controle acesso (optional)
///
///  @param idEmissor C\u00C3\u00B3digo do identificador do emissor (optional)
///
///  @param servidorControleAcesso Servidor do controle de acesso (optional)
///
///  @returns PierPageBases*
///
-(NSNumber*) listarUsingGET1WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    servidor: (NSString*) servidor
    usuario: (NSString*) usuario
    senha: (NSString*) senha
    nomeBase: (NSString*) nomeBase
    senhaCriptografada: (NSNumber*) senhaCriptografada
    domain: (NSString*) domain
    nomeBaseControleAcesso: (NSString*) nomeBaseControleAcesso
    idEmissor: (NSNumber*) idEmissor
    servidorControleAcesso: (NSString*) servidorControleAcesso
    completionHandler: (void (^)(PierPageBases* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bases"];

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
    if (servidor != nil) {
        
        queryParams[@"servidor"] = servidor;
    }
    if (usuario != nil) {
        
        queryParams[@"usuario"] = usuario;
    }
    if (senha != nil) {
        
        queryParams[@"senha"] = senha;
    }
    if (nomeBase != nil) {
        
        queryParams[@"nomeBase"] = nomeBase;
    }
    if (senhaCriptografada != nil) {
        
        queryParams[@"senhaCriptografada"] = senhaCriptografada;
    }
    if (domain != nil) {
        
        queryParams[@"domain"] = domain;
    }
    if (nomeBaseControleAcesso != nil) {
        
        queryParams[@"nomeBaseControleAcesso"] = nomeBaseControleAcesso;
    }
    if (idEmissor != nil) {
        
        queryParams[@"idEmissor"] = idEmissor;
    }
    if (servidorControleAcesso != nil) {
        
        queryParams[@"servidorControleAcesso"] = servidorControleAcesso;
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
/// Salvar base
/// Este recurso permite que seja adicionado uma nova base
///  @param servidor IP do servidor 
///
///  @param usuario Nome do usu\u00C3\u00A1rio 
///
///  @param senha Senha 
///
///  @param nomeBase Nome da base 
///
///  @param senhaCriptografada senha Criptografada 
///
///  @param domain Dom\u00C3\u00ADnio da base 
///
///  @param nomeBaseControleAcesso Nome da base de controle acesso 
///
///  @param servidorControleAcesso Servidor do controle de acesso 
///
///  @param idEmissor C\u00C3\u00B3digo do identificador do emissor (optional)
///
///  @returns PierBase*
///
-(NSNumber*) salvarUsingPOST1WithServidor: (NSString*) servidor
    usuario: (NSString*) usuario
    senha: (NSString*) senha
    nomeBase: (NSString*) nomeBase
    senhaCriptografada: (NSNumber*) senhaCriptografada
    domain: (NSString*) domain
    nomeBaseControleAcesso: (NSString*) nomeBaseControleAcesso
    servidorControleAcesso: (NSString*) servidorControleAcesso
    idEmissor: (NSNumber*) idEmissor
    completionHandler: (void (^)(PierBase* output, NSError* error)) handler {

    
    // verify the required parameter 'servidor' is set
    if (servidor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `servidor` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'usuario' is set
    if (usuario == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `usuario` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'nomeBase' is set
    if (nomeBase == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomeBase` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'senhaCriptografada' is set
    if (senhaCriptografada == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senhaCriptografada` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'domain' is set
    if (domain == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `domain` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'nomeBaseControleAcesso' is set
    if (nomeBaseControleAcesso == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomeBaseControleAcesso` when calling `salvarUsingPOST1`"];
    }
    
    // verify the required parameter 'servidorControleAcesso' is set
    if (servidorControleAcesso == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `servidorControleAcesso` when calling `salvarUsingPOST1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bases"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (servidor != nil) {
        
        queryParams[@"servidor"] = servidor;
    }
    if (usuario != nil) {
        
        queryParams[@"usuario"] = usuario;
    }
    if (senha != nil) {
        
        queryParams[@"senha"] = senha;
    }
    if (nomeBase != nil) {
        
        queryParams[@"nomeBase"] = nomeBase;
    }
    if (senhaCriptografada != nil) {
        
        queryParams[@"senhaCriptografada"] = senhaCriptografada;
    }
    if (domain != nil) {
        
        queryParams[@"domain"] = domain;
    }
    if (nomeBaseControleAcesso != nil) {
        
        queryParams[@"nomeBaseControleAcesso"] = nomeBaseControleAcesso;
    }
    if (idEmissor != nil) {
        
        queryParams[@"idEmissor"] = idEmissor;
    }
    if (servidorControleAcesso != nil) {
        
        queryParams[@"servidorControleAcesso"] = servidorControleAcesso;
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
                              responseType: @"PierBase*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBase*)data, error);
                           }
          ];
}



@end
