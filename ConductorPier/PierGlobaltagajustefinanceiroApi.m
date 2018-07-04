#import "PierGlobaltagajustefinanceiroApi.h"
#import "PierQueryParamCollection.h"
#import "PierAjusteFinanceiroResponse.h"
#import "PierPageAjusteResponse.h"


@interface PierGlobaltagajustefinanceiroApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagajustefinanceiroApi

static PierGlobaltagajustefinanceiroApi* singletonAPI = nil;

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

+(PierGlobaltagajustefinanceiroApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagajustefinanceiroApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagajustefinanceiroApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagajustefinanceiroApi alloc] init];
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
/// {{{ajuste_financeiro_resource_ajustar_conta}}}
/// {{{ajuste_financeiro_resource_ajustar_conta_notes}}}
///  @param idTipoAjuste {{{ajuste_financeiro_persist_id_tipo_ajuste_value}}} 
///
///  @param dataAjuste {{{ajuste_financeiro_persist_data_ajuste_value}}} 
///
///  @param valorAjuste {{{ajuste_financeiro_persist_valor_ajuste_value}}} 
///
///  @param idConta {{{ajuste_financeiro_persist_id_conta_value}}} 
///
///  @param identificadorExterno {{{ajuste_financeiro_persist_identificador_externo_value}}} (optional)
///
///  @param idTransacaoOriginal {{{ajuste_persist_id_transacao_original}}} (optional)
///
///  @returns PierAjusteFinanceiroResponse*
///
-(NSNumber*) ajustarContaUsingPOSTWithIdTipoAjuste: (NSNumber*) idTipoAjuste
    dataAjuste: (NSString*) dataAjuste
    valorAjuste: (NSNumber*) valorAjuste
    idConta: (NSNumber*) idConta
    identificadorExterno: (NSString*) identificadorExterno
    idTransacaoOriginal: (NSNumber*) idTransacaoOriginal
    completionHandler: (void (^)(PierAjusteFinanceiroResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idTipoAjuste' is set
    if (idTipoAjuste == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTipoAjuste` when calling `ajustarContaUsingPOST`"];
    }
    
    // verify the required parameter 'dataAjuste' is set
    if (dataAjuste == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataAjuste` when calling `ajustarContaUsingPOST`"];
    }
    
    // verify the required parameter 'valorAjuste' is set
    if (valorAjuste == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `valorAjuste` when calling `ajustarContaUsingPOST`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `ajustarContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/ajustes-financeiros"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idTipoAjuste != nil) {
        
        queryParams[@"idTipoAjuste"] = idTipoAjuste;
    }
    if (dataAjuste != nil) {
        
        queryParams[@"dataAjuste"] = dataAjuste;
    }
    if (valorAjuste != nil) {
        
        queryParams[@"valorAjuste"] = valorAjuste;
    }
    if (identificadorExterno != nil) {
        
        queryParams[@"identificadorExterno"] = identificadorExterno;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idTransacaoOriginal != nil) {
        
        queryParams[@"idTransacaoOriginal"] = idTransacaoOriginal;
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
                              responseType: @"PierAjusteFinanceiroResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAjusteFinanceiroResponse*)data, error);
                           }
          ];
}

///
/// {{{ajuste_financeiro_resource_consultar}}}
/// {{{ajuste_financeiro_resource_consultar_notes}}}
///  @param _id {{{ajuste_financeiro_resource_consultar_param_id}}} 
///
///  @returns PierAjusteFinanceiroResponse*
///
-(NSNumber*) consultarUsingGET2WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAjusteFinanceiroResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/ajustes-financeiros/{id}"];

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
                              responseType: @"PierAjusteFinanceiroResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAjusteFinanceiroResponse*)data, error);
                           }
          ];
}

///
/// {{{ajuste_financeiro_resource_listar}}}
/// {{{ajuste_financeiro_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idTipoAjuste {{{ajuste_request_id_tipo_ajuste_value}}} (optional)
///
///  @param dataAjuste {{{ajuste_request_data_ajuste_value}}} (optional)
///
///  @param valorAjuste {{{ajuste_request_valor_ajuste_value}}} (optional)
///
///  @param identificadorExterno {{{ajuste_request_identificador_externo_value}}} (optional)
///
///  @param idConta {{{ajuste_request_id_conta_value}}} (optional)
///
///  @returns PierPageAjusteResponse*
///
-(NSNumber*) listarUsingGET2WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoAjuste: (NSNumber*) idTipoAjuste
    dataAjuste: (NSString*) dataAjuste
    valorAjuste: (NSNumber*) valorAjuste
    identificadorExterno: (NSString*) identificadorExterno
    idConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierPageAjusteResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/ajustes-financeiros"];

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
    if (idTipoAjuste != nil) {
        
        queryParams[@"idTipoAjuste"] = idTipoAjuste;
    }
    if (dataAjuste != nil) {
        
        queryParams[@"dataAjuste"] = dataAjuste;
    }
    if (valorAjuste != nil) {
        
        queryParams[@"valorAjuste"] = valorAjuste;
    }
    if (identificadorExterno != nil) {
        
        queryParams[@"identificadorExterno"] = identificadorExterno;
    }
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
                              responseType: @"PierPageAjusteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageAjusteResponse*)data, error);
                           }
          ];
}



@end
