#import "PierGlobaltagfaturamentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierTipoFaturamentoResponse.h"
#import "PierTipoFaturamentoPersistValue_.h"
#import "PierTipoFaturamentoPorContaPersistValue_.h"
#import "PierTipoFaturamentoPorContaResponse.h"
#import "PierPageTipoFaturamentoPorContaResponse.h"
#import "PierPageTipoFaturamentoResponse.h"


@interface PierGlobaltagfaturamentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagfaturamentoApi

static PierGlobaltagfaturamentoApi* singletonAPI = nil;

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

+(PierGlobaltagfaturamentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagfaturamentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagfaturamentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagfaturamentoApi alloc] init];
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
/// {{{faturamento_resource_alterar_tipo_faturamento}}}
/// {{{faturamento_resource_alterar_tipo_faturamento_notes}}}
///  @param _id {{{faturamento_resource_alterar_tipo_faturamento_param_id_tipo_faturamento}}} 
///
///  @param tipoFaturamentoPersist tipoFaturamentoPersist 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) alterarTipoFaturamentoUsingPUTWithId: (NSNumber*) _id
    tipoFaturamentoPersist: (PierTipoFaturamentoPersistValue_*) tipoFaturamentoPersist
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarTipoFaturamentoUsingPUT`"];
    }
    
    // verify the required parameter 'tipoFaturamentoPersist' is set
    if (tipoFaturamentoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoFaturamentoPersist` when calling `alterarTipoFaturamentoUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento/{id}"];

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
    
    bodyParam = tipoFaturamentoPersist;
    

    
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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_cadastrar_faturamento_por_conta}}}
/// {{{faturamento_resource_cadastrar_faturamento_por_conta_notes}}}
///  @param tipoFaturamentoPorContaPersist tipoFaturamentoPorContaPersist 
///
///  @returns PierTipoFaturamentoPorContaResponse*
///
-(NSNumber*) cadastrarFaturamentoPorContaUsingPOSTWithTipoFaturamentoPorContaPersist: (PierTipoFaturamentoPorContaPersistValue_*) tipoFaturamentoPorContaPersist
    completionHandler: (void (^)(PierTipoFaturamentoPorContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'tipoFaturamentoPorContaPersist' is set
    if (tipoFaturamentoPorContaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoFaturamentoPorContaPersist` when calling `cadastrarFaturamentoPorContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento-conta"];

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
    
    bodyParam = tipoFaturamentoPorContaPersist;
    

    
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
                              responseType: @"PierTipoFaturamentoPorContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoPorContaResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_cadastrar_tipo_faturamento}}}
/// {{{faturamento_resource_cadastrar_tipo_faturamento_notes}}}
///  @param tipoFaturamentoPersist tipoFaturamentoPersist 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) cadastrarTipoFaturamentoUsingPOSTWithTipoFaturamentoPersist: (PierTipoFaturamentoPersistValue_*) tipoFaturamentoPersist
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'tipoFaturamentoPersist' is set
    if (tipoFaturamentoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoFaturamentoPersist` when calling `cadastrarTipoFaturamentoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento"];

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
    
    bodyParam = tipoFaturamentoPersist;
    

    
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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_consultar_tipo_faturamento}}}
/// {{{faturamento_resource_consultar_tipo_faturamento_notes}}}
///  @param _id {{{faturamento_resource_consultar_tipo_faturamento_param_id_tipo_faturamento}}} 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) consultarTipoFaturamentoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarTipoFaturamentoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento/{id}"];

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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_desativar_faturamento_por_conta}}}
/// {{{faturamento_resource_desativar_faturamento_por_conta_notes}}}
///  @param _id {{{faturamento_resource_desativar_faturamento_por_conta_param_id}}} 
///
///  @returns PierTipoFaturamentoPorContaResponse*
///
-(NSNumber*) desativarFaturamentoPorContaUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoFaturamentoPorContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarFaturamentoPorContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento-conta/{id}/desativar"];

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
                              responseType: @"PierTipoFaturamentoPorContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoPorContaResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_desativar_tipo_faturamento}}}
/// {{{faturamento_resource_desativar_tipo_faturamento_notes}}}
///  @param _id {{{faturamento_resource_desativar_tipo_faturamento_param_id_tipo_faturamento}}} 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) desativarTipoFaturamentoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarTipoFaturamentoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento/{id}/desativar"];

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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_listar_faturamento_por_conta}}}
/// {{{faturamento_resource_listar_faturamento_por_conta_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idTipoFaturamentoPorConta {{{tipo_faturamento_por_conta_request_id_tipo_faturamento_por_conta_value}}} (optional)
///
///  @param ativo {{{tipo_faturamento_por_conta_request_status_value}}} (optional)
///
///  @param idConta {{{tipo_faturamento_por_conta_request_id_conta_value}}} (optional)
///
///  @param idTipoFaturamento {{{tipo_faturamento_por_conta_request_id_tipo_faturamento_value}}} (optional)
///
///  @param dataHoraInclusao {{{tipo_faturamento_por_conta_request_data_hora_inclusao_value}}} (optional)
///
///  @param dataHoraCancelamento {{{tipo_faturamento_por_conta_request_data_hora_cancelamento_value}}} (optional)
///
///  @param modificadoPor {{{tipo_faturamento_por_conta_request_modificado_por_value}}} (optional)
///
///  @returns PierPageTipoFaturamentoPorContaResponse*
///
-(NSNumber*) listarFaturamentoPorContaUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoFaturamentoPorConta: (NSNumber*) idTipoFaturamentoPorConta
    ativo: (NSNumber*) ativo
    idConta: (NSNumber*) idConta
    idTipoFaturamento: (NSNumber*) idTipoFaturamento
    dataHoraInclusao: (NSString*) dataHoraInclusao
    dataHoraCancelamento: (NSString*) dataHoraCancelamento
    modificadoPor: (NSString*) modificadoPor
    completionHandler: (void (^)(PierPageTipoFaturamentoPorContaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento-conta"];

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
    if (idTipoFaturamentoPorConta != nil) {
        
        queryParams[@"idTipoFaturamentoPorConta"] = idTipoFaturamentoPorConta;
    }
    if (ativo != nil) {
        
        queryParams[@"ativo"] = ativo;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idTipoFaturamento != nil) {
        
        queryParams[@"idTipoFaturamento"] = idTipoFaturamento;
    }
    if (dataHoraInclusao != nil) {
        
        queryParams[@"dataHoraInclusao"] = dataHoraInclusao;
    }
    if (dataHoraCancelamento != nil) {
        
        queryParams[@"dataHoraCancelamento"] = dataHoraCancelamento;
    }
    if (modificadoPor != nil) {
        
        queryParams[@"modificadoPor"] = modificadoPor;
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
                              responseType: @"PierPageTipoFaturamentoPorContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoFaturamentoPorContaResponse*)data, error);
                           }
          ];
}

///
/// {{{faturamento_resource_listar_tipo_faturamento}}}
/// {{{faturamento_resource_listar_tipo_faturamento_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idTipoFaturamento {{{tipo_faturamento_request_id_tipo_faturamento_value}}} (optional)
///
///  @param descricao {{{tipo_faturamento_request_descricao_value}}} (optional)
///
///  @param flagApenasDemonstrativo {{{tipo_faturamento_request_flag_apenas_demonstrativo_value}}} (optional)
///
///  @param idConvenio {{{tipo_faturamento_request_id_convenio_value}}} (optional)
///
///  @returns PierPageTipoFaturamentoResponse*
///
-(NSNumber*) listarTipoFaturamentoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoFaturamento: (NSNumber*) idTipoFaturamento
    descricao: (NSString*) descricao
    flagApenasDemonstrativo: (NSNumber*) flagApenasDemonstrativo
    idConvenio: (NSNumber*) idConvenio
    completionHandler: (void (^)(PierPageTipoFaturamentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento"];

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
    if (idTipoFaturamento != nil) {
        
        queryParams[@"idTipoFaturamento"] = idTipoFaturamento;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (flagApenasDemonstrativo != nil) {
        
        queryParams[@"flagApenasDemonstrativo"] = flagApenasDemonstrativo;
    }
    if (idConvenio != nil) {
        
        queryParams[@"idConvenio"] = idConvenio;
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
                              responseType: @"PierPageTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoFaturamentoResponse*)data, error);
                           }
          ];
}



@end
