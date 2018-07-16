#import "PierGlobaltagstatusparametroApi.h"
#import "PierQueryParamCollection.h"
#import "PierEstagioCartaoResponse.h"
#import "PierStatusCartaoResponse.h"
#import "PierStatusContaResponse.h"
#import "PierStatusImpressaoResponse.h"
#import "PierPageEstagioCartaoResponse.h"
#import "PierPageStatusCartaoResponse.h"
#import "PierPageStatusContaResponse.h"
#import "PierPageStatusImpressaoResponse.h"


@interface PierGlobaltagstatusparametroApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagstatusparametroApi

static PierGlobaltagstatusparametroApi* singletonAPI = nil;

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

+(PierGlobaltagstatusparametroApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagstatusparametroApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagstatusparametroApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagstatusparametroApi alloc] init];
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
/// {{{estagio_cartao_resource_consultar_estagio_cartao}}}
/// {{{estagio_cartao_resource_consultar_estagio_cartao_notes}}}
///  @param _id {{{estagio_cartao_resource_consultar_estagio_cartao_param_id}}} 
///
///  @returns PierEstagioCartaoResponse*
///
-(NSNumber*) consultarEstagioCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstagioCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarEstagioCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estagios-cartoes/{id}"];

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
                              responseType: @"PierEstagioCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstagioCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{status_cartao_resource_consultar_status_cartao}}}
/// {{{status_cartao_resource_consultar_status_cartao_notes}}}
///  @param _id {{{status_cartao_resource_consultar_status_cartao_param_id}}} 
///
///  @returns PierStatusCartaoResponse*
///
-(NSNumber*) consultarStatusCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarStatusCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes/{id}"];

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
                              responseType: @"PierStatusCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{status_conta_resource_consultar}}}
/// {{{status_conta_resource_consultar_notes}}}
///  @param _id {{{status_conta_resource_consultar_param_id}}} 
///
///  @returns PierStatusContaResponse*
///
-(NSNumber*) consultarUsingGET36WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET36`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-contas/{id}"];

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
                              responseType: @"PierStatusContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusContaResponse*)data, error);
                           }
          ];
}

///
/// {{{status_impressao_resource_consultar}}}
/// {{{status_impressao_resource_consultar_notes}}}
///  @param _id {{{status_impressao_resource_consultar_param_id}}} 
///
///  @returns PierStatusImpressaoResponse*
///
-(NSNumber*) consultarUsingGET37WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusImpressaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET37`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-impressoes/{id}"];

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
                              responseType: @"PierStatusImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusImpressaoResponse*)data, error);
                           }
          ];
}

///
/// {{{estagio_cartao_resource_listar_estagios_cartoes}}}
/// {{{estagio_cartao_resource_listar_estagios_cartoes_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{estagio_cartao_request_id_value}}} (optional)
///
///  @param nome {{{estagio_cartao_request_nome_value}}} (optional)
///
///  @returns PierPageEstagioCartaoResponse*
///
-(NSNumber*) listarEstagiosCartoesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageEstagioCartaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estagios-cartoes"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
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
                              responseType: @"PierPageEstagioCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEstagioCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{status_cartao_resource_listar_status_cartoes}}}
/// {{{status_cartao_resource_listar_status_cartoes_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{status_cartao_request_id_value}}} (optional)
///
///  @param nome {{{status_cartao_request_nome_value}}} (optional)
///
///  @param permiteDesbloquear {{{status_cartao_request_permite_desbloquear_value}}} (optional)
///
///  @param permiteAtribuirComoBloqueio {{{status_cartao_request_permite_atribuir_como_bloqueio_value}}} (optional)
///
///  @param permiteAtribuirComoCancelamento {{{status_cartao_request_permite_atribuir_como_cancelamento_value}}} (optional)
///
///  @param cobrarTarifaAoEmitirNovaVia {{{status_cartao_request_cobrar_tarifa_ao_emitir_nova_via_value}}} (optional)
///
///  @returns PierPageStatusCartaoResponse*
///
-(NSNumber*) listarStatusCartoesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    permiteDesbloquear: (NSNumber*) permiteDesbloquear
    permiteAtribuirComoBloqueio: (NSNumber*) permiteAtribuirComoBloqueio
    permiteAtribuirComoCancelamento: (NSNumber*) permiteAtribuirComoCancelamento
    cobrarTarifaAoEmitirNovaVia: (NSNumber*) cobrarTarifaAoEmitirNovaVia
    completionHandler: (void (^)(PierPageStatusCartaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (permiteDesbloquear != nil) {
        
        queryParams[@"permiteDesbloquear"] = permiteDesbloquear;
    }
    if (permiteAtribuirComoBloqueio != nil) {
        
        queryParams[@"permiteAtribuirComoBloqueio"] = permiteAtribuirComoBloqueio;
    }
    if (permiteAtribuirComoCancelamento != nil) {
        
        queryParams[@"permiteAtribuirComoCancelamento"] = permiteAtribuirComoCancelamento;
    }
    if (cobrarTarifaAoEmitirNovaVia != nil) {
        
        queryParams[@"cobrarTarifaAoEmitirNovaVia"] = cobrarTarifaAoEmitirNovaVia;
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
                              responseType: @"PierPageStatusCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusCartaoResponse*)data, error);
                           }
          ];
}

///
/// {{{enum_resource_listar_tipos_eventos_transacoes}}}
/// {{{enum_resource_listar_tipos_eventos_transacoes_notes}}}
///  @returns NSArray* /* NSObject */
///
-(NSNumber*) listarTiposEventosTransacoesUsingGETWithCompletionHandler: 
    (void (^)(NSArray* /* NSObject */ output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-eventos-transacoes"];

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
/// {{{status_conta_resource_listar}}}
/// {{{status_conta_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{status_conta_request_id_value}}} (optional)
///
///  @param nome {{{status_conta_request_nome_value}}} (optional)
///
///  @param permiteAlterarVencimento {{{status_conta_request_permite_alterar_vencimento_value}}} (optional)
///
///  @param permiteAlterarLimite {{{status_conta_request_permite_alterar_limite_value}}} (optional)
///
///  @param permiteEmitirNovaViaCartao {{{status_conta_request_permite_emitir_nova_via_cartao_value}}} (optional)
///
///  @param permiteFazerTransferencia {{{status_conta_request_permite_fazer_transferencia_value}}} (optional)
///
///  @param permiteReceberTransferencia {{{status_conta_request_permite_receber_transferencia_value}}} (optional)
///
///  @param permiteCriarAcordoCobranca {{{status_conta_request_permite_criar_acordo_cobranca_value}}} (optional)
///
///  @param permiteAtribuirComoBloqueio {{{status_conta_request_permite_atribuir_como_bloqueio_value}}} (optional)
///
///  @param permiteDesbloquear {{{status_conta_request_permite_desbloquear_value}}} (optional)
///
///  @param permiteAtribuirComoCancelamento {{{status_conta_request_permite_atribuir_como_cancelamento_value}}} (optional)
///
///  @returns PierPageStatusContaResponse*
///
-(NSNumber*) listarUsingGET47WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    permiteAlterarVencimento: (NSNumber*) permiteAlterarVencimento
    permiteAlterarLimite: (NSNumber*) permiteAlterarLimite
    permiteEmitirNovaViaCartao: (NSNumber*) permiteEmitirNovaViaCartao
    permiteFazerTransferencia: (NSNumber*) permiteFazerTransferencia
    permiteReceberTransferencia: (NSNumber*) permiteReceberTransferencia
    permiteCriarAcordoCobranca: (NSNumber*) permiteCriarAcordoCobranca
    permiteAtribuirComoBloqueio: (NSNumber*) permiteAtribuirComoBloqueio
    permiteDesbloquear: (NSNumber*) permiteDesbloquear
    permiteAtribuirComoCancelamento: (NSNumber*) permiteAtribuirComoCancelamento
    completionHandler: (void (^)(PierPageStatusContaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-contas"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (permiteAlterarVencimento != nil) {
        
        queryParams[@"permiteAlterarVencimento"] = permiteAlterarVencimento;
    }
    if (permiteAlterarLimite != nil) {
        
        queryParams[@"permiteAlterarLimite"] = permiteAlterarLimite;
    }
    if (permiteEmitirNovaViaCartao != nil) {
        
        queryParams[@"permiteEmitirNovaViaCartao"] = permiteEmitirNovaViaCartao;
    }
    if (permiteFazerTransferencia != nil) {
        
        queryParams[@"permiteFazerTransferencia"] = permiteFazerTransferencia;
    }
    if (permiteReceberTransferencia != nil) {
        
        queryParams[@"permiteReceberTransferencia"] = permiteReceberTransferencia;
    }
    if (permiteCriarAcordoCobranca != nil) {
        
        queryParams[@"permiteCriarAcordoCobranca"] = permiteCriarAcordoCobranca;
    }
    if (permiteAtribuirComoBloqueio != nil) {
        
        queryParams[@"permiteAtribuirComoBloqueio"] = permiteAtribuirComoBloqueio;
    }
    if (permiteDesbloquear != nil) {
        
        queryParams[@"permiteDesbloquear"] = permiteDesbloquear;
    }
    if (permiteAtribuirComoCancelamento != nil) {
        
        queryParams[@"permiteAtribuirComoCancelamento"] = permiteAtribuirComoCancelamento;
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
                              responseType: @"PierPageStatusContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusContaResponse*)data, error);
                           }
          ];
}

///
/// {{{status_impressao_resource_listar}}}
/// {{{status_impressao_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{status_impressao_request_id_value}}} (optional)
///
///  @param nome {{{status_impressao_request_nome_value}}} (optional)
///
///  @returns PierPageStatusImpressaoResponse*
///
-(NSNumber*) listarUsingGET48WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageStatusImpressaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-impressoes"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
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
                              responseType: @"PierPageStatusImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusImpressaoResponse*)data, error);
                           }
          ];
}



@end
