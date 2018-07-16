#import "PierGlobaltagpagamentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierAcordoDetalheResponse.h"
#import "PierPageHistoricoPagamentoResponse.h"
#import "PierPageAcordoResponse.h"


@interface PierGlobaltagpagamentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagpagamentoApi

static PierGlobaltagpagamentoApi* singletonAPI = nil;

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

+(PierGlobaltagpagamentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagpagamentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagpagamentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagpagamentoApi alloc] init];
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
/// {{{acordo_resource_consultar}}}
/// {{{acordo_resource_consultar_notes}}}
///  @param _id {{{acordo_resource_consultar_param_id}}} 
///
///  @returns PierAcordoDetalheResponse*
///
-(NSNumber*) consultarUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAcordoDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/acordos/{id}"];

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
                              responseType: @"PierAcordoDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAcordoDetalheResponse*)data, error);
                           }
          ];
}

///
/// {{{pagamento_resource_listar_pagamentos}}}
/// {{{pagamento_resource_listar_pagamentos_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idConta {{{historico_pagamento_request_id_conta_value}}} (optional)
///
///  @param idPagamento {{{historico_pagamento_request_id_pagamento_value}}} (optional)
///
///  @param idEstabelecimento {{{historico_pagamento_request_id_estabelecimento_value}}} (optional)
///
///  @param idBanco {{{historico_pagamento_request_id_banco_value}}} (optional)
///
///  @param idCartao {{{historico_pagamento_request_id_cartao_value}}} (optional)
///
///  @param dataHoraPagamento {{{historico_pagamento_request_data_hora_pagamento_value}}} (optional)
///
///  @param status {{{historico_pagamento_request_status_value}}} (optional)
///
///  @returns PierPageHistoricoPagamentoResponse*
///
-(NSNumber*) listarPagamentosUsingGET1WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idConta: (NSNumber*) idConta
    idPagamento: (NSNumber*) idPagamento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    idBanco: (NSNumber*) idBanco
    idCartao: (NSNumber*) idCartao
    dataHoraPagamento: (NSString*) dataHoraPagamento
    status: (NSNumber*) status
    completionHandler: (void (^)(PierPageHistoricoPagamentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pagamentos"];

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
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idPagamento != nil) {
        
        queryParams[@"idPagamento"] = idPagamento;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
    }
    if (idBanco != nil) {
        
        queryParams[@"idBanco"] = idBanco;
    }
    if (idCartao != nil) {
        
        queryParams[@"idCartao"] = idCartao;
    }
    if (dataHoraPagamento != nil) {
        
        queryParams[@"dataHoraPagamento"] = dataHoraPagamento;
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
                              responseType: @"PierPageHistoricoPagamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageHistoricoPagamentoResponse*)data, error);
                           }
          ];
}

///
/// {{{acordo_resource_listar}}}
/// {{{acordo_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idConta {{{acordo_request_id_conta_value}}} (optional)
///
///  @param statusAcordo {{{acordo_request_status_acordo_value}}} (optional)
///
///  @param dataAcordo {{{acordo_request_data_acordo_value}}} (optional)
///
///  @param quantidadeParcelas {{{acordo_request_quantidade_parcelas_value}}} (optional)
///
///  @returns PierPageAcordoResponse*
///
-(NSNumber*) listarUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idConta: (NSNumber*) idConta
    statusAcordo: (NSNumber*) statusAcordo
    dataAcordo: (NSString*) dataAcordo
    quantidadeParcelas: (NSNumber*) quantidadeParcelas
    completionHandler: (void (^)(PierPageAcordoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/acordos"];

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
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (statusAcordo != nil) {
        
        queryParams[@"statusAcordo"] = statusAcordo;
    }
    if (dataAcordo != nil) {
        
        queryParams[@"dataAcordo"] = dataAcordo;
    }
    if (quantidadeParcelas != nil) {
        
        queryParams[@"quantidadeParcelas"] = quantidadeParcelas;
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
                              responseType: @"PierPageAcordoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageAcordoResponse*)data, error);
                           }
          ];
}



@end
