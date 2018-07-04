#import "PierGlobaltagcartaoApi.h"
#import "PierQueryParamCollection.h"
#import "PierCartaoResponse.h"
#import "PierEstagioCartaoUpdate_.h"
#import "PierHistoricoImpressaoCartaoResponse.h"
#import "PierDadosCartaoImpressaoResponse.h"
#import "PierDadosCartaoResponse.h"
#import "PierLimiteDisponibilidadeResponse.h"
#import "PierLoteCartoesPrePagosResponse.h"
#import "PierPortadorResponse.h"
#import "PierCartaoDetalheResponse.h"
#import "PierCartaoMultiAppImpressaoResponse.h"
#import "PierPageLoteCartoesPrePagosResponse.h"
#import "PierPageCartaoResponse.h"
#import "PierValidaCVVRequest.h"
#import "PierValidaCartaoResponse.h"
#import "PierValidaSenhaCartaoResponse.h"


@interface PierGlobaltagcartaoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagcartaoApi

static PierGlobaltagcartaoApi* singletonAPI = nil;

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

+(PierGlobaltagcartaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagcartaoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagcartaoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagcartaoApi alloc] init];
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
/// {{{cartao_resource_alterar_alterar_senha}}}
/// {{{cartao_resource_alterar_alterar_senha_notes}}}
///  @param _id {{{cartao_resource_alterar_alterar_senha_param_id}}} 
///
///  @param senha {{{cartao_resource_alterar_alterar_senha_param_nova_senha}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns NSString*
///
-(NSNumber*) alterarAlterarSenhaUsingPUTWithId: (NSNumber*) _id
    senha: (NSString*) senha
    authorization: (NSString*) authorization
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarAlterarSenhaUsingPUT`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `alterarAlterarSenhaUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/alterar-senha"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
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
/// {{{cartao_resource_alterar_estagio}}}
/// {{{cartao_resource_alterar_estagio_notes}}}
///  @param _id {{{cartao_resource_alterar_estagio_param_id}}} 
///
///  @param update {{{cartao_resource_alterar_estagio_param_id_estagio_cartao}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) alterarEstagioUsingPOSTWithId: (NSNumber*) _id
    update: (PierEstagioCartaoUpdate_*) update
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarEstagioUsingPOST`"];
    }
    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `alterarEstagioUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/alterar-estagio"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
    
    bodyParam = update;
    

    
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_alterar_status_impressao}}}
/// {{{cartao_resource_alterar_status_impressao_notes}}}
///  @param _id {{{cartao_resource_alterar_status_impressao_param_id}}} 
///
///  @param idStatusImpressao {{{cartao_resource_alterar_status_impressao_param_id_status_impressao}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierHistoricoImpressaoCartaoResponse*
///
-(NSNumber*) alterarStatusImpressaoUsingPUTWithId: (NSNumber*) _id
    idStatusImpressao: (NSNumber*) idStatusImpressao
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierHistoricoImpressaoCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarStatusImpressaoUsingPUT`"];
    }
    
    // verify the required parameter 'idStatusImpressao' is set
    if (idStatusImpressao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatusImpressao` when calling `alterarStatusImpressaoUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/alterar-status-impressao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatusImpressao != nil) {
        
        queryParams[@"id_status_impressao"] = idStatusImpressao;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierHistoricoImpressaoCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierHistoricoImpressaoCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_atribuir_pessoa}}}
/// {{{cartao_resource_atribuir_pessoa_notes}}}
///  @param _id {{{cartao_resource_atribuir_pessoa_param_id_cartao}}} 
///
///  @param idPessoa {{{cartao_resource_atribuir_pessoa_param_id_pessoa}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) atribuirPessoaUsingPUTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atribuirPessoaUsingPUT`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `atribuirPessoaUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/atribuir-titular"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idPessoa != nil) {
        
        queryParams[@"id_pessoa"] = idPessoa;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_bloquear}}}
/// {{{cartao_resource_bloquear_notes}}}
///  @param _id {{{cartao_resource_bloquear_param_id}}} 
///
///  @param idStatus {{{cartao_resource_bloquear_param_id_status}}} 
///
///  @param observacao {{{cartao_resource_bloquear_param_observacao}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) bloquearUsingPOSTWithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    observacao: (NSString*) observacao
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `bloquearUsingPOST`"];
    }
    
    // verify the required parameter 'idStatus' is set
    if (idStatus == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatus` when calling `bloquearUsingPOST`"];
    }
    
    // verify the required parameter 'observacao' is set
    if (observacao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `observacao` when calling `bloquearUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/bloquear"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatus != nil) {
        
        queryParams[@"id_status"] = idStatus;
    }
    if (observacao != nil) {
        
        queryParams[@"observacao"] = observacao;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_cadastrar_alterar_senha}}}
/// {{{cartao_resource_cadastrar_alterar_senha_notes}}}
///  @param _id {{{cartao_resource_cadastrar_alterar_senha_param_id}}} 
///
///  @param senha {{{cartao_resource_cadastrar_alterar_senha_param_nova_senha}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns NSString*
///
-(NSNumber*) cadastrarAlterarSenhaUsingPOSTWithId: (NSNumber*) _id
    senha: (NSString*) senha
    authorization: (NSString*) authorization
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cadastrarAlterarSenhaUsingPOST`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `cadastrarAlterarSenhaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/cadastrar-senha"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_cancelar}}}
/// {{{cartao_resource_cancelar_notes}}}
///  @param _id {{{cartao_resource_cancelar_param_id}}} 
///
///  @param idStatus {{{cartao_resource_cancelar_param_id_status}}} 
///
///  @param observacao {{{cartao_resource_cancelar_param_observacao}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) cancelarUsingPOSTWithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    observacao: (NSString*) observacao
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cancelarUsingPOST`"];
    }
    
    // verify the required parameter 'idStatus' is set
    if (idStatus == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatus` when calling `cancelarUsingPOST`"];
    }
    
    // verify the required parameter 'observacao' is set
    if (observacao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `observacao` when calling `cancelarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/cancelar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatus != nil) {
        
        queryParams[@"id_status"] = idStatus;
    }
    if (observacao != nil) {
        
        queryParams[@"observacao"] = observacao;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_consultar_cartao_impressao}}}
/// {{{cartao_resource_consultar_cartao_impressao_notes}}}
///  @param _id {{{cartao_resource_consultar_cartao_impressao_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierDadosCartaoImpressaoResponse*
///
-(NSNumber*) consultarCartaoImpressaoUsingGETWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierDadosCartaoImpressaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarCartaoImpressaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/consultar-dados-impressao"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierDadosCartaoImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDadosCartaoImpressaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_consultar_dados_reais_cartao}}}
/// {{{cartao_resource_consultar_dados_reais_cartao_notes}}}
///  @param _id id 
///
///  @param authorization Authorization (optional)
///
///  @returns PierDadosCartaoResponse*
///
-(NSNumber*) consultarDadosReaisCartaoUsingGETWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierDadosCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarDadosReaisCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/consultar-dados-reais"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierDadosCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDadosCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_consultar_limite_disponibilidade}}}
/// {{{cartao_resource_consultar_limite_disponibilidade_notes}}}
///  @param _id {{{cartao_resource_consultar_limite_disponibilidade_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierLimiteDisponibilidadeResponse*
///
-(NSNumber*) consultarLimiteDisponibilidadeUsingGETWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierLimiteDisponibilidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLimiteDisponibilidadeUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/limites-disponibilidades"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierLimiteDisponibilidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLimiteDisponibilidadeResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_consultar_lotes_cartoes_pre_pagos}}}
/// {{{cartao_resource_consultar_lotes_cartoes_pre_pagos_notes}}}
///  @param _id {{{cartao_resource_consultar_lotes_cartoes_pre_pagos_param_id_lote}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierLoteCartoesPrePagosResponse*
///
-(NSNumber*) consultarLotesCartoesPrePagosUsingGETWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierLoteCartoesPrePagosResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLotesCartoesPrePagosUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/lotes-cartoes-pre-pagos/{id}"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierLoteCartoesPrePagosResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLoteCartoesPrePagosResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_consultar_portador}}}
/// {{{cartao_resource_consultar_portador_notes}}}
///  @param _id {{{cartao_resource_consultar_portador_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierPortadorResponse*
///
-(NSNumber*) consultarPortadorUsingGETWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierPortadorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarPortadorUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/portadores"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierPortadorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPortadorResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_consultar}}}
/// {{{cartao_resource_consultar_notes}}}
///  @param _id {{{cartao_resource_consultar_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoDetalheResponse*
///
-(NSNumber*) consultarUsingGET9WithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET9`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoDetalheResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_desbloquear_senha_incorreta}}}
/// {{{cartao_resource_desbloquear_senha_incorreta_notes}}}
///  @param _id {{{cartao_resource_desbloquear_senha_incorreta_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) desbloquearSenhaIncorretaUsingPOSTWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desbloquearSenhaIncorretaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/desbloquear-senha-incorreta"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_desbloquear}}}
/// {{{cartao_resource_desbloquear_notes}}}
///  @param _id {{{cartao_resource_desbloquear_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) desbloquearUsingPOSTWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desbloquearUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/desbloquear"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_gerar_lotes_cartoes_pre_pagos}}}
/// {{{cartao_resource_gerar_lotes_cartoes_pre_pagos_notes}}}
///  @param authorization Authorization (optional)
///
///  @param idOrigemComercial {{{lote_cartoes_pre_pagos_persist_id_origem_comercial_value}}} (optional)
///
///  @param idProduto {{{lote_cartoes_pre_pagos_persist_id_produto_value}}} (optional)
///
///  @param idTipoCartao {{{lote_cartoes_pre_pagos_persist_id_tipo_cartao_value}}} (optional)
///
///  @param idImagem {{{lote_cartoes_pre_pagos_persist_id_imagem_value}}} (optional)
///
///  @param idEndereco {{{lote_cartoes_pre_pagos_persist_id_endereco_value}}} (optional)
///
///  @param quantidadeCartoes {{{lote_cartoes_pre_pagos_persist_quantidade_cartoes_value}}} (optional)
///
///  @param identificadorExterno {{{lote_cartoes_pre_pagos_persist_identificador_externo_value}}} (optional)
///
///  @returns PierLoteCartoesPrePagosResponse*
///
-(NSNumber*) gerarLotesCartoesPrePagosUsingPOSTWithAuthorization: (NSString*) authorization
    idOrigemComercial: (NSNumber*) idOrigemComercial
    idProduto: (NSNumber*) idProduto
    idTipoCartao: (NSNumber*) idTipoCartao
    idImagem: (NSNumber*) idImagem
    idEndereco: (NSNumber*) idEndereco
    quantidadeCartoes: (NSNumber*) quantidadeCartoes
    identificadorExterno: (NSString*) identificadorExterno
    completionHandler: (void (^)(PierLoteCartoesPrePagosResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/lotes-cartoes-pre-pagos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idOrigemComercial != nil) {
        
        queryParams[@"idOrigemComercial"] = idOrigemComercial;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idTipoCartao != nil) {
        
        queryParams[@"idTipoCartao"] = idTipoCartao;
    }
    if (idImagem != nil) {
        
        queryParams[@"idImagem"] = idImagem;
    }
    if (idEndereco != nil) {
        
        queryParams[@"idEndereco"] = idEndereco;
    }
    if (quantidadeCartoes != nil) {
        
        queryParams[@"quantidadeCartoes"] = quantidadeCartoes;
    }
    if (identificadorExterno != nil) {
        
        queryParams[@"identificadorExterno"] = identificadorExterno;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierLoteCartoesPrePagosResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLoteCartoesPrePagosResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_gerar_nova_via_multiplo}}}
/// {{{cartao_resource_gerar_nova_via_multiplo_notes}}}
///  @param _id {{{cartao_resource_gerar_nova_via_param_id_cartao}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoMultiAppImpressaoResponse*
///
-(NSNumber*) gerarNovaViaCartaoMultiAppUsingPOSTWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoMultiAppImpressaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gerarNovaViaCartaoMultiAppUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/gerar-nova-via-multiplo"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoMultiAppImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoMultiAppImpressaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_gerar_nova_via}}}
/// {{{cartao_resource_gerar_nova_via_notes}}}
///  @param _id {{{cartao_resource_gerar_nova_via_param_id_cartao}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) gerarNovaViaUsingPOSTWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `gerarNovaViaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/gerar-nova-via"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_lancar_tarifa_segunda_via}}}
/// {{{cartao_resource_lancar_tarifa_segunda_via_notes}}}
///  @param _id {{{cartao_resource_lancar_tarifa_segunda_via_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns NSObject*
///
-(NSNumber*) lancarTarifaSegundaViaUsingPOSTWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `lancarTarifaSegundaViaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/lancar-tarifa-reemissao"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
/// {{{cartao_resource_listar_lotes_cartoes_pre_pagos}}}
/// {{{cartao_resource_listar_lotes_cartoes_pre_pagos_notes}}}
///  @param authorization Authorization (optional)
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idOrigemComercial {{{lote_cartoes_pre_pagos_request_id_origem_comercial_value}}} (optional)
///
///  @param idProduto {{{lote_cartoes_pre_pagos_request_id_produto_value}}} (optional)
///
///  @param idTipoCartao {{{lote_cartoes_pre_pagos_request_id_tipo_cartao_value}}} (optional)
///
///  @param idImagem {{{lote_cartoes_pre_pagos_request_id_imagem_value}}} (optional)
///
///  @param idEndereco {{{lote_cartoes_pre_pagos_request_id_endereco_value}}} (optional)
///
///  @param quantidadeCartoes {{{lote_cartoes_pre_pagos_request_quantidade_cartoes_value}}} (optional)
///
///  @param dataCadastro {{{lote_cartoes_pre_pagos_request_data_cadastro_value}}} (optional)
///
///  @param usuarioCadastro {{{lote_cartoes_pre_pagos_request_usuario_cadastro_value}}} (optional)
///
///  @param statusProcessamento {{{lote_cartoes_pre_pagos_request_status_processamento_value}}} (optional)
///
///  @param identificadorExterno {{{lote_cartoes_pre_pagos_request_identificador_externo_value}}} (optional)
///
///  @returns PierPageLoteCartoesPrePagosResponse*
///
-(NSNumber*) listarLotesCartoesPrePagosUsingGETWithAuthorization: (NSString*) authorization
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idOrigemComercial: (NSNumber*) idOrigemComercial
    idProduto: (NSNumber*) idProduto
    idTipoCartao: (NSNumber*) idTipoCartao
    idImagem: (NSNumber*) idImagem
    idEndereco: (NSNumber*) idEndereco
    quantidadeCartoes: (NSNumber*) quantidadeCartoes
    dataCadastro: (NSString*) dataCadastro
    usuarioCadastro: (NSString*) usuarioCadastro
    statusProcessamento: (NSNumber*) statusProcessamento
    identificadorExterno: (NSString*) identificadorExterno
    completionHandler: (void (^)(PierPageLoteCartoesPrePagosResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/lotes-cartoes-pre-pagos"];

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
    if (idOrigemComercial != nil) {
        
        queryParams[@"idOrigemComercial"] = idOrigemComercial;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idTipoCartao != nil) {
        
        queryParams[@"idTipoCartao"] = idTipoCartao;
    }
    if (idImagem != nil) {
        
        queryParams[@"idImagem"] = idImagem;
    }
    if (idEndereco != nil) {
        
        queryParams[@"idEndereco"] = idEndereco;
    }
    if (quantidadeCartoes != nil) {
        
        queryParams[@"quantidadeCartoes"] = quantidadeCartoes;
    }
    if (dataCadastro != nil) {
        
        queryParams[@"dataCadastro"] = dataCadastro;
    }
    if (usuarioCadastro != nil) {
        
        queryParams[@"usuarioCadastro"] = usuarioCadastro;
    }
    if (statusProcessamento != nil) {
        
        queryParams[@"statusProcessamento"] = statusProcessamento;
    }
    if (identificadorExterno != nil) {
        
        queryParams[@"identificadorExterno"] = identificadorExterno;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierPageLoteCartoesPrePagosResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageLoteCartoesPrePagosResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_listar}}}
/// {{{cartao_resource_listar_notes}}}
///  @param authorization Authorization (optional)
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idStatusCartao {{{cartao_request_id_status_cartao_value}}} (optional)
///
///  @param idEstagioCartao {{{cartao_request_id_estagio_cartao_value}}} (optional)
///
///  @param idConta {{{cartao_request_id_conta_value}}} (optional)
///
///  @param idPessoa {{{cartao_request_id_pessoa_value}}} (optional)
///
///  @param idProduto {{{cartao_request_id_produto_value}}} (optional)
///
///  @param tipoPortador {{{cartao_request_tipo_portador_value}}} (optional)
///
///  @param numeroCartao {{{cartao_request_numero_cartao_value}}} (optional)
///
///  @param nomeImpresso {{{cartao_request_nome_impresso_value}}} (optional)
///
///  @param dataGeracao {{{cartao_request_data_geracao_value}}} (optional)
///
///  @param dataStatusCartao {{{cartao_request_data_status_cartao_value}}} (optional)
///
///  @param dataEstagioCartao {{{cartao_request_data_estagio_cartao_value}}} (optional)
///
///  @param dataValidade {{{cartao_request_data_validade_value}}} (optional)
///
///  @param dataImpressao {{{cartao_request_data_impressao_value}}} (optional)
///
///  @param arquivoImpressao {{{cartao_request_arquivo_impressao_value}}} (optional)
///
///  @param flagImpressaoOrigemComercial {{{cartao_request_flag_impressao_origem_comercial_value}}} (optional)
///
///  @param flagProvisorio {{{cartao_request_flag_provisorio_value}}} (optional)
///
///  @param codigoDesbloqueio {{{cartao_request_codigo_desbloqueio_value}}} (optional)
///
///  @param sequencialCartao {{{cartao_request_sequencial_cartao_value}}} (optional)
///
///  @returns PierPageCartaoResponse*
///
-(NSNumber*) listarUsingGET11WithAuthorization: (NSString*) authorization
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idStatusCartao: (NSNumber*) idStatusCartao
    idEstagioCartao: (NSNumber*) idEstagioCartao
    idConta: (NSNumber*) idConta
    idPessoa: (NSNumber*) idPessoa
    idProduto: (NSNumber*) idProduto
    tipoPortador: (NSString*) tipoPortador
    numeroCartao: (NSString*) numeroCartao
    nomeImpresso: (NSString*) nomeImpresso
    dataGeracao: (NSString*) dataGeracao
    dataStatusCartao: (NSString*) dataStatusCartao
    dataEstagioCartao: (NSString*) dataEstagioCartao
    dataValidade: (NSString*) dataValidade
    dataImpressao: (NSString*) dataImpressao
    arquivoImpressao: (NSString*) arquivoImpressao
    flagImpressaoOrigemComercial: (NSNumber*) flagImpressaoOrigemComercial
    flagProvisorio: (NSNumber*) flagProvisorio
    codigoDesbloqueio: (NSString*) codigoDesbloqueio
    sequencialCartao: (NSNumber*) sequencialCartao
    completionHandler: (void (^)(PierPageCartaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes"];

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
    if (idStatusCartao != nil) {
        
        queryParams[@"idStatusCartao"] = idStatusCartao;
    }
    if (idEstagioCartao != nil) {
        
        queryParams[@"idEstagioCartao"] = idEstagioCartao;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (tipoPortador != nil) {
        
        queryParams[@"tipoPortador"] = tipoPortador;
    }
    if (numeroCartao != nil) {
        
        queryParams[@"numeroCartao"] = numeroCartao;
    }
    if (nomeImpresso != nil) {
        
        queryParams[@"nomeImpresso"] = nomeImpresso;
    }
    if (dataGeracao != nil) {
        
        queryParams[@"dataGeracao"] = dataGeracao;
    }
    if (dataStatusCartao != nil) {
        
        queryParams[@"dataStatusCartao"] = dataStatusCartao;
    }
    if (dataEstagioCartao != nil) {
        
        queryParams[@"dataEstagioCartao"] = dataEstagioCartao;
    }
    if (dataValidade != nil) {
        
        queryParams[@"dataValidade"] = dataValidade;
    }
    if (dataImpressao != nil) {
        
        queryParams[@"dataImpressao"] = dataImpressao;
    }
    if (arquivoImpressao != nil) {
        
        queryParams[@"arquivoImpressao"] = arquivoImpressao;
    }
    if (flagImpressaoOrigemComercial != nil) {
        
        queryParams[@"flagImpressaoOrigemComercial"] = flagImpressaoOrigemComercial;
    }
    if (flagProvisorio != nil) {
        
        queryParams[@"flagProvisorio"] = flagProvisorio;
    }
    if (codigoDesbloqueio != nil) {
        
        queryParams[@"codigoDesbloqueio"] = codigoDesbloqueio;
    }
    if (sequencialCartao != nil) {
        
        queryParams[@"sequencialCartao"] = sequencialCartao;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierPageCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_reativar}}}
/// {{{cartao_resource_reativar_notes}}}
///  @param _id {{{cartao_resource_reativar_param_id}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierCartaoResponse*
///
-(NSNumber*) reativarUsingPOSTWithId: (NSNumber*) _id
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `reativarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/reativar"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_validar_c_v_v}}}
/// {{{cartao_resource_validar_c_v_v_notes}}}
///  @param _id {{{cartao_resource_validar_c_v_v_param_id}}} 
///
///  @param validaCVV validaCVV 
///
///  @param authorization Authorization (optional)
///
///  @returns NSString*
///
-(NSNumber*) validarCVVUsingPOSTWithId: (NSNumber*) _id
    validaCVV: (PierValidaCVVRequest*) validaCVV
    authorization: (NSString*) authorization
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `validarCVVUsingPOST`"];
    }
    
    // verify the required parameter 'validaCVV' is set
    if (validaCVV == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `validaCVV` when calling `validarCVVUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/validar-cvv"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
    
    bodyParam = validaCVV;
    

    
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
/// {{{cartao_resource_validar_dados_impressos_bandeirado}}}
/// {{{cartao_resource_validar_dados_impressos_bandeirado_notes}}}
///  @param numeroCartao {{{cartao_resource_validar_dados_impressos_bandeirado_param_numero_cartao}}} 
///
///  @param nomePortador {{{cartao_resource_validar_dados_impressos_bandeirado_param_nome_portador}}} 
///
///  @param dataValidade {{{cartao_resource_validar_dados_impressos_bandeirado_param_data_validade}}} 
///
///  @param codigoSeguranca {{{cartao_resource_validar_dados_impressos_bandeirado_param_codigo_seguranca}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierValidaCartaoResponse*
///
-(NSNumber*) validarDadosImpressosBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    nomePortador: (NSString*) nomePortador
    dataValidade: (NSString*) dataValidade
    codigoSeguranca: (NSString*) codigoSeguranca
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarDadosImpressosBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'nomePortador' is set
    if (nomePortador == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomePortador` when calling `validarDadosImpressosBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'dataValidade' is set
    if (dataValidade == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataValidade` when calling `validarDadosImpressosBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'codigoSeguranca' is set
    if (codigoSeguranca == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `codigoSeguranca` when calling `validarDadosImpressosBandeiradoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/validar-dados-impressos-bandeirados"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (nomePortador != nil) {
        
        queryParams[@"nome_portador"] = nomePortador;
    }
    if (dataValidade != nil) {
        
        queryParams[@"data_validade"] = dataValidade;
    }
    if (codigoSeguranca != nil) {
        
        queryParams[@"codigo_seguranca"] = codigoSeguranca;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierValidaCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_validar_dados_impressos_nao_bandeirado}}}
/// {{{cartao_resource_validar_dados_impressos_nao_bandeirado_notes}}}
///  @param numeroCartao {{{cartao_resource_validar_dados_impressos_nao_bandeirado_param_numero_cartao}}} 
///
///  @param nomePortador {{{cartao_resource_validar_dados_impressos_nao_bandeirado_param_nome_portador}}} 
///
///  @param dataValidade {{{cartao_resource_validar_dados_impressos_nao_bandeirado_param_data_validade}}} 
///
///  @param codigoSeguranca {{{cartao_resource_validar_dados_impressos_nao_bandeirado_param_codigo_seguranca}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierValidaCartaoResponse*
///
-(NSNumber*) validarDadosImpressosNaoBandeiradoUsingGETWithNumeroCartao: (NSString*) numeroCartao
    nomePortador: (NSString*) nomePortador
    dataValidade: (NSString*) dataValidade
    codigoSeguranca: (NSString*) codigoSeguranca
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarDadosImpressosNaoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'nomePortador' is set
    if (nomePortador == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nomePortador` when calling `validarDadosImpressosNaoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'dataValidade' is set
    if (dataValidade == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataValidade` when calling `validarDadosImpressosNaoBandeiradoUsingGET`"];
    }
    
    // verify the required parameter 'codigoSeguranca' is set
    if (codigoSeguranca == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `codigoSeguranca` when calling `validarDadosImpressosNaoBandeiradoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/validar-dados-impressos-nao-bandeirados"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (nomePortador != nil) {
        
        queryParams[@"nome_portador"] = nomePortador;
    }
    if (dataValidade != nil) {
        
        queryParams[@"data_validade"] = dataValidade;
    }
    if (codigoSeguranca != nil) {
        
        queryParams[@"codigo_seguranca"] = codigoSeguranca;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierValidaCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_validar_de55_cartao_mastercard}}}
/// {{{cartao_resource_validar_de55_cartao_mastercard_notes}}}
///  @param numeroCartao {{{cartao_resource_validar_de55_cartao_mastercard_param_numero_cartao}}} 
///
///  @param criptograma {{{cartao_resource_validar_de55_cartao_mastercard_param_criptograma}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierValidaCartaoResponse*
///
-(NSNumber*) validarDe55CartaoMastercardUsingGETWithNumeroCartao: (NSString*) numeroCartao
    criptograma: (NSString*) criptograma
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarDe55CartaoMastercardUsingGET`"];
    }
    
    // verify the required parameter 'criptograma' is set
    if (criptograma == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `criptograma` when calling `validarDe55CartaoMastercardUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/validar-de55-mastercard"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (criptograma != nil) {
        
        queryParams[@"criptograma"] = criptograma;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierValidaCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_validar_senha}}}
/// {{{cartao_resource_validar_senha_notes}}}
///  @param _id {{{cartao_resource_validar_senha_param_id}}} 
///
///  @param senha {{{cartao_resource_validar_senha_param_senha}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierValidaSenhaCartaoResponse*
///
-(NSNumber*) validarSenhaUsingGETWithId: (NSNumber*) _id
    senha: (NSString*) senha
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierValidaSenhaCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `validarSenhaUsingGET`"];
    }
    
    // verify the required parameter 'senha' is set
    if (senha == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `senha` when calling `validarSenhaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/{id}/validar-senha"];

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

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
    }
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
                              responseType: @"PierValidaSenhaCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaSenhaCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_resource_validar_tarja}}}
/// {{{cartao_resource_validar_tarja_notes}}}
///  @param numeroCartao {{{cartao_resource_validar_tarja_param_numero_cartao}}} 
///
///  @param trilha1 {{{cartao_resource_validar_tarja_param_trilha1}}} 
///
///  @param trilha2 {{{cartao_resource_validar_tarja_param_trilha2}}} 
///
///  @param authorization Authorization (optional)
///
///  @returns PierValidaCartaoResponse*
///
-(NSNumber*) validarTarjaUsingGETWithNumeroCartao: (NSString*) numeroCartao
    trilha1: (NSString*) trilha1
    trilha2: (NSString*) trilha2
    authorization: (NSString*) authorization
    completionHandler: (void (^)(PierValidaCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroCartao' is set
    if (numeroCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroCartao` when calling `validarTarjaUsingGET`"];
    }
    
    // verify the required parameter 'trilha1' is set
    if (trilha1 == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `trilha1` when calling `validarTarjaUsingGET`"];
    }
    
    // verify the required parameter 'trilha2' is set
    if (trilha2 == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `trilha2` when calling `validarTarjaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes/validar-tarja"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroCartao != nil) {
        
        queryParams[@"numero_cartao"] = numeroCartao;
    }
    if (trilha1 != nil) {
        
        queryParams[@"trilha1"] = trilha1;
    }
    if (trilha2 != nil) {
        
        queryParams[@"trilha2"] = trilha2;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (authorization != nil) {
        headerParams[@"Authorization"] = authorization;
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
                              responseType: @"PierValidaCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierValidaCartaoResponse*)data, error);
                           }
          ];
}



@end
