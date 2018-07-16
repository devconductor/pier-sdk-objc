#import "PierGlobaltagfaturaApi.h"
#import "PierQueryParamCollection.h"
#import "PierFaturaDetalheResponse.h"
#import "PierPagePlanoParcelamentoResponse.h"
#import "PierPageFaturaResponse.h"


@interface PierGlobaltagfaturaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagfaturaApi

static PierGlobaltagfaturaApi* singletonAPI = nil;

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

+(PierGlobaltagfaturaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagfaturaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagfaturaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagfaturaApi alloc] init];
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
/// {{{fatura_resource_consultar_fatura}}}
/// {{{fatura_resource_consultar_fatura_notes}}}
///  @param dataVencimento {{{fatura_resource_consultar_fatura_param_data_vencimento}}} 
///
///  @param idConta {{{fatura_resource_consultar_fatura_param_id_conta}}} 
///
///  @returns PierFaturaDetalheResponse*
///
-(NSNumber*) consultarFaturaUsingGET1WithDataVencimento: (NSString*) dataVencimento
    idConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierFaturaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `consultarFaturaUsingGET1`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarFaturaUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faturas/{dataVencimento}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (dataVencimento != nil) {
        pathParams[@"dataVencimento"] = dataVencimento;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
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
                              responseType: @"PierFaturaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFaturaDetalheResponse*)data, error);
                           }
          ];
}

///
/// {{{fatura_conta_resource_consultar_lancamentos_futuros_fatura}}}
/// {{{fatura_conta_resource_consultar_lancamentos_futuros_fatura_notes}}}
///  @param _id {{{fatura_conta_resource_consultar_lancamentos_futuros_fatura_param_id_conta}}} 
///
///  @param dataVencimentoPadrao {{{plano_parcelamento_request_data_vencimento_padrao_value}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @returns PierPagePlanoParcelamentoResponse*
///
-(NSNumber*) consultarLancamentosFuturosFaturaUsingGET1WithId: (NSNumber*) _id
    dataVencimentoPadrao: (NSString*) dataVencimentoPadrao
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePlanoParcelamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLancamentosFuturosFaturaUsingGET1`"];
    }
    
    // verify the required parameter 'dataVencimentoPadrao' is set
    if (dataVencimentoPadrao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimentoPadrao` when calling `consultarLancamentosFuturosFaturaUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas/planos-parcelamento"];

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
    if (dataVencimentoPadrao != nil) {
        
        queryParams[@"dataVencimentoPadrao"] = dataVencimentoPadrao;
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
                              responseType: @"PierPagePlanoParcelamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePlanoParcelamentoResponse*)data, error);
                           }
          ];
}

///
/// {{{fatura_conta_resource_enviar_fatura_email}}}
/// {{{fatura_conta_resource_enviar_fatura_email_notes}}}
///  @param _id {{{fatura_conta_resource_enviar_fatura_email_param_id_conta}}} 
///
///  @param dataVencimento {{{fatura_conta_resource_enviar_fatura_email_param_data_vencimento}}} 
///
///  @param email {{{fatura_conta_resource_enviar_fatura_email_param_email}}} (optional)
///
///  @returns NSObject*
///
-(NSNumber*) enviarFaturaEmailUsingPOSTWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    email: (NSString*) email
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `enviarFaturaEmailUsingPOST`"];
    }
    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `enviarFaturaEmailUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas/{dataVencimento}/enviar-email"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (dataVencimento != nil) {
        pathParams[@"dataVencimento"] = dataVencimento;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (email != nil) {
        
        queryParams[@"email"] = email;
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
/// {{{fatura_resource_listar_faturas}}}
/// {{{fatura_resource_listar_faturas_notes}}}
///  @param idConta {{{fatura_resource_listar_faturas_param_id_conta}}} 
///
///  @param situacaoProcessamento {{{fatura_resource_listar_faturas_param_situacao_processamento}}} (optional, default to TODAS)
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @returns PierPageFaturaResponse*
///
-(NSNumber*) listarFaturasUsingGET1WithIdConta: (NSNumber*) idConta
    situacaoProcessamento: (NSString*) situacaoProcessamento
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageFaturaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `listarFaturasUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faturas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (situacaoProcessamento != nil) {
        
        queryParams[@"situacaoProcessamento"] = situacaoProcessamento;
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
                              responseType: @"PierPageFaturaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageFaturaResponse*)data, error);
                           }
          ];
}

///
/// {{{fatura_conta_resource_visualizar_documento}}}
/// {{{fatura_conta_resource_visualizar_documento_notes}}}
///  @param _id {{{fatura_conta_resource_visualizar_documento_param_id_conta}}} 
///
///  @param dataVencimento {{{fatura_conta_resource_visualizar_documento_param_data_vencimento}}} 
///
///  @param flagApenasDemostrativo {{{fatura_conta_resource_enviar_fatura_email_param_flag_apenas_demostrativo}}} (optional)
///
///  @param flagRegistraBoleto {{{fatura_conta_resource_enviar_fatura_email_param_flag_registra_boleto}}} (optional)
///
///  @returns NSObject*
///
-(NSNumber*) visualizarDocumentoUsingGETWithId: (NSNumber*) _id
    dataVencimento: (NSString*) dataVencimento
    flagApenasDemostrativo: (NSNumber*) flagApenasDemostrativo
    flagRegistraBoleto: (NSNumber*) flagRegistraBoleto
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `visualizarDocumentoUsingGET`"];
    }
    
    // verify the required parameter 'dataVencimento' is set
    if (dataVencimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimento` when calling `visualizarDocumentoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas/{dataVencimento}/arquivo.pdf"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (dataVencimento != nil) {
        pathParams[@"dataVencimento"] = dataVencimento;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (flagApenasDemostrativo != nil) {
        
        queryParams[@"flagApenasDemostrativo"] = flagApenasDemostrativo;
    }
    if (flagRegistraBoleto != nil) {
        
        queryParams[@"flagRegistraBoleto"] = flagRegistraBoleto;
    }
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [PierApiClient selectHeaderAccept:@[@"application/pdf"]];
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}



@end
