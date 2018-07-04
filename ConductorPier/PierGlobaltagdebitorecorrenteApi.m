#import "PierGlobaltagdebitorecorrenteApi.h"
#import "PierQueryParamCollection.h"
#import "PierContaDebitoRecorrentePersistValue_.h"
#import "PierContaDebitoRecorrenteResponse.h"
#import "PierPageContaDebitoRecorrenteResponse.h"
#import "PierPageTipoDebitoRecorrenteResponse.h"


@interface PierGlobaltagdebitorecorrenteApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagdebitorecorrenteApi

static PierGlobaltagdebitorecorrenteApi* singletonAPI = nil;

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

+(PierGlobaltagdebitorecorrenteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagdebitorecorrenteApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagdebitorecorrenteApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagdebitorecorrenteApi alloc] init];
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
/// {{{conta_debito_recorrente_resource_aderir}}}
/// {{{conta_debito_recorrente_resource_aderir_notes}}}
///  @param contaDebitoRecorrentePersist contaDebitoRecorrentePersist 
///
///  @returns PierContaDebitoRecorrenteResponse*
///
-(NSNumber*) aderirDebitoRecorrenteUsingPOSTWithContaDebitoRecorrentePersist: (PierContaDebitoRecorrentePersistValue_*) contaDebitoRecorrentePersist
    completionHandler: (void (^)(PierContaDebitoRecorrenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'contaDebitoRecorrentePersist' is set
    if (contaDebitoRecorrentePersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `contaDebitoRecorrentePersist` when calling `aderirDebitoRecorrenteUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/debitos-recorrentes"];

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
    
    bodyParam = contaDebitoRecorrentePersist;
    

    
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
                              responseType: @"PierContaDebitoRecorrenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaDebitoRecorrenteResponse*)data, error);
                           }
          ];
}

///
/// {{{conta_debito_recorrente_resource_cancelar}}}
/// {{{conta_debito_recorrente_resource_cancelar_notes}}}
///  @param _id {{{conta_debito_recorrente_resource_cancelar_param_id_debito_recorrente}}} 
///
///  @param contaDebitoRecorrentePersist contaDebitoRecorrentePersist 
///
///  @returns PierContaDebitoRecorrenteResponse*
///
-(NSNumber*) cancelarDebitoRecorrenteUsingPOSTWithId: (NSNumber*) _id
    contaDebitoRecorrentePersist: (PierContaDebitoRecorrentePersistValue_*) contaDebitoRecorrentePersist
    completionHandler: (void (^)(PierContaDebitoRecorrenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cancelarDebitoRecorrenteUsingPOST`"];
    }
    
    // verify the required parameter 'contaDebitoRecorrentePersist' is set
    if (contaDebitoRecorrentePersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `contaDebitoRecorrentePersist` when calling `cancelarDebitoRecorrenteUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/debitos-recorrentes/{id}/cancelar"];

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
    
    bodyParam = contaDebitoRecorrentePersist;
    

    
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
                              responseType: @"PierContaDebitoRecorrenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaDebitoRecorrenteResponse*)data, error);
                           }
          ];
}

///
/// {{{conta_debito_recorrente_resource_listar}}}
/// {{{conta_debito_recorrente_resource_listar_notes}}}
///  @param idConta {{{conta_debito_recorrente_resource_listar_param_id_conta}}} 
///
///  @param idTipoDebitoRecorrente {{{conta_debito_recorrente_resource_listar_param_id_tipo_debito_recorrente}}} (optional)
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param dataHoraInicio {{{conta_debito_recorrente_request_data_hora_inicio_value}}} (optional)
///
///  @param dataHoraFim {{{conta_debito_recorrente_request_data_hora_fim_value}}} (optional)
///
///  @param ativo {{{conta_debito_recorrente_request_ativo_value}}} (optional)
///
///  @param dataHoraUltimoPagamento {{{conta_debito_recorrente_request_data_hora_ultimo_pagamento_value}}} (optional)
///
///  @returns PierPageContaDebitoRecorrenteResponse*
///
-(NSNumber*) listarUsingGET17WithIdConta: (NSNumber*) idConta
    idTipoDebitoRecorrente: (NSNumber*) idTipoDebitoRecorrente
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataHoraInicio: (NSString*) dataHoraInicio
    dataHoraFim: (NSString*) dataHoraFim
    ativo: (NSNumber*) ativo
    dataHoraUltimoPagamento: (NSString*) dataHoraUltimoPagamento
    completionHandler: (void (^)(PierPageContaDebitoRecorrenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `listarUsingGET17`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/debitos-recorrentes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idTipoDebitoRecorrente != nil) {
        
        queryParams[@"idTipoDebitoRecorrente"] = idTipoDebitoRecorrente;
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
    if (dataHoraInicio != nil) {
        
        queryParams[@"dataHoraInicio"] = dataHoraInicio;
    }
    if (dataHoraFim != nil) {
        
        queryParams[@"dataHoraFim"] = dataHoraFim;
    }
    if (ativo != nil) {
        
        queryParams[@"ativo"] = ativo;
    }
    if (dataHoraUltimoPagamento != nil) {
        
        queryParams[@"dataHoraUltimoPagamento"] = dataHoraUltimoPagamento;
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
                              responseType: @"PierPageContaDebitoRecorrenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageContaDebitoRecorrenteResponse*)data, error);
                           }
          ];
}

///
/// {{{tipo_debito_recorrente_resource_listar}}}
/// {{{tipo_debito_recorrente_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{tipo_debito_recorrente_request_id_value}}} (optional)
///
///  @param descricao {{{tipo_debito_recorrente_request_descricao_value}}} (optional)
///
///  @param valor {{{tipo_debito_recorrente_request_valor_value}}} (optional)
///
///  @param flagAtivo {{{tipo_debito_recorrente_request_flag_ativo_value}}} (optional)
///
///  @returns PierPageTipoDebitoRecorrenteResponse*
///
-(NSNumber*) listarUsingGET53WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    valor: (NSNumber*) valor
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageTipoDebitoRecorrenteResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-debitos-recorrentes"];

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
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (valor != nil) {
        
        queryParams[@"valor"] = valor;
    }
    if (flagAtivo != nil) {
        
        queryParams[@"flagAtivo"] = flagAtivo;
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
                              responseType: @"PierPageTipoDebitoRecorrenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoDebitoRecorrenteResponse*)data, error);
                           }
          ];
}



@end
