#import "PierGlobaltagantecipacaoApi.h"
#import "PierQueryParamCollection.h"
#import "PierParametroProdutoResponse.h"
#import "PierTaxaAntecipacaoRequest.h"
#import "PierAntecipacaoResponse.h"
#import "PierPageCompraResponse.h"
#import "PierAntecipacaoSimuladaResponse.h"
#import "PierAntecipacaoSimuladaLoteResponse.h"


@interface PierGlobaltagantecipacaoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagantecipacaoApi

static PierGlobaltagantecipacaoApi* singletonAPI = nil;

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

+(PierGlobaltagantecipacaoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagantecipacaoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagantecipacaoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagantecipacaoApi alloc] init];
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
/// {{{produto_resource_configurar_taxa_antecipacao}}}
/// {{{produto_resource_configurar_taxa_antecipacao_notes}}}
///  @param _id {{{produto_resource_configurar_taxa_antecipacao_param_id}}} 
///
///  @param taxaAntecipacaoRequest taxaAntecipacaoRequest 
///
///  @returns PierParametroProdutoResponse*
///
-(NSNumber*) configurarTaxaAntecipacaoUsingPOSTWithId: (NSNumber*) _id
    taxaAntecipacaoRequest: (PierTaxaAntecipacaoRequest*) taxaAntecipacaoRequest
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `configurarTaxaAntecipacaoUsingPOST`"];
    }
    
    // verify the required parameter 'taxaAntecipacaoRequest' is set
    if (taxaAntecipacaoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taxaAntecipacaoRequest` when calling `configurarTaxaAntecipacaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}/configurar-taxa-antecipacao"];

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
    
    bodyParam = taxaAntecipacaoRequest;
    

    
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
                              responseType: @"PierParametroProdutoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierParametroProdutoResponse*)data, error);
                           }
          ];
}

///
/// {{{produto_resource_consultar_taxa_antecipacao}}}
/// {{{produto_resource_consultar_taxa_antecipacao_notes}}}
///  @param _id {{{produto_resource_consultar_taxa_antecipacao_param_id}}} 
///
///  @param tipoTransacao {{{produto_resource_consultar_taxa_antecipacao_param_tipo_transacao}}} 
///
///  @returns PierParametroProdutoResponse*
///
-(NSNumber*) consultarTaxaAntecipacaoUsingGETWithId: (NSNumber*) _id
    tipoTransacao: (NSString*) tipoTransacao
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarTaxaAntecipacaoUsingGET`"];
    }
    
    // verify the required parameter 'tipoTransacao' is set
    if (tipoTransacao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoTransacao` when calling `consultarTaxaAntecipacaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}/consultar-taxa-antecipacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (tipoTransacao != nil) {
        
        queryParams[@"tipoTransacao"] = tipoTransacao;
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
                              responseType: @"PierParametroProdutoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierParametroProdutoResponse*)data, error);
                           }
          ];
}

///
/// {{{compra_antecipavel_resource_efetivar_antecipacao}}}
/// {{{compra_antecipavel_resource_efetivar_antecipacao_notes}}}
///  @param idConta {{{compra_antecipavel_resource_efetivar_antecipacao_param_id_conta}}} 
///
///  @param _id {{{compra_antecipavel_resource_efetivar_antecipacao_param_id_compra}}} 
///
///  @param quantidadeParcelas {{{compra_antecipavel_resource_efetivar_antecipacao_param_quantidade_parcelas}}} 
///
///  @param complemento {{{compra_antecipavel_resource_efetivar_antecipacao_param_complemento}}} (optional)
///
///  @returns PierAntecipacaoResponse*
///
-(NSNumber*) efetivarAntecipacaoUsingPOSTWithIdConta: (NSNumber*) idConta
    _id: (NSNumber*) _id
    quantidadeParcelas: (NSNumber*) quantidadeParcelas
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `efetivarAntecipacaoUsingPOST`"];
    }
    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `efetivarAntecipacaoUsingPOST`"];
    }
    
    // verify the required parameter 'quantidadeParcelas' is set
    if (quantidadeParcelas == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `quantidadeParcelas` when calling `efetivarAntecipacaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/compras-antecipaveis/{id}/efetivar-antecipacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (quantidadeParcelas != nil) {
        
        queryParams[@"quantidadeParcelas"] = quantidadeParcelas;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
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
                              responseType: @"PierAntecipacaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAntecipacaoResponse*)data, error);
                           }
          ];
}

///
/// {{{compra_antecipavel_resource_efetivar_antecipacoes}}}
/// {{{compra_antecipavel_resource_efetivar_antecipacoes_notes}}}
///  @param idConta {{{compra_antecipavel_resource_efetivar_antecipacoes_param_id_conta}}} 
///
///  @param complemento {{{compra_antecipavel_resource_efetivar_antecipacoes_param_complemento}}} (optional)
///
///  @returns PierAntecipacaoResponse*
///
-(NSNumber*) efetivarAntecipacoesUsingPOSTWithIdConta: (NSNumber*) idConta
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `efetivarAntecipacoesUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/compras-antecipaveis/efetivar-antecipacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
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
                              responseType: @"PierAntecipacaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAntecipacaoResponse*)data, error);
                           }
          ];
}

///
/// {{{compra_antecipavel_resource_listar}}}
/// {{{compra_antecipavel_resource_listar_notes}}}
///  @param idConta {{{compra_d_t_o_id_conta_value}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idCompra {{{compra_d_t_o_id_compra_value}}} (optional)
///
///  @param parcelada {{{compra_d_t_o_parcelada_value}}} (optional)
///
///  @param juros {{{compra_d_t_o_juros_value}}} (optional)
///
///  @param tipoOrigemTransacao {{{compra_d_t_o_tipo_origem_transacao_value}}} (optional)
///
///  @returns PierPageCompraResponse*
///
-(NSNumber*) listarUsingGET14WithIdConta: (NSNumber*) idConta
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idCompra: (NSNumber*) idCompra
    parcelada: (NSNumber*) parcelada
    juros: (NSNumber*) juros
    tipoOrigemTransacao: (NSString*) tipoOrigemTransacao
    completionHandler: (void (^)(PierPageCompraResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `listarUsingGET14`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/compras-antecipaveis"];

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
    if (idCompra != nil) {
        
        queryParams[@"idCompra"] = idCompra;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (parcelada != nil) {
        
        queryParams[@"parcelada"] = parcelada;
    }
    if (juros != nil) {
        
        queryParams[@"juros"] = juros;
    }
    if (tipoOrigemTransacao != nil) {
        
        queryParams[@"tipoOrigemTransacao"] = tipoOrigemTransacao;
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
                              responseType: @"PierPageCompraResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCompraResponse*)data, error);
                           }
          ];
}

///
/// {{{compra_antecipavel_resource_simular_antecipacao}}}
/// {{{compra_antecipavel_resource_simular_antecipacao_notes}}}
///  @param idConta {{{compra_antecipavel_resource_simular_antecipacao_param_id_conta}}} 
///
///  @param _id {{{compra_antecipavel_resource_simular_antecipacao_param_id_evento}}} 
///
///  @param complemento {{{compra_antecipavel_resource_simular_antecipacao_param_complemento}}} (optional)
///
///  @returns PierAntecipacaoSimuladaResponse*
///
-(NSNumber*) simularAntecipacaoUsingGETWithIdConta: (NSNumber*) idConta
    _id: (NSNumber*) _id
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoSimuladaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `simularAntecipacaoUsingGET`"];
    }
    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `simularAntecipacaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/compras-antecipaveis/{id}/simular-antecipacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
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
                              responseType: @"PierAntecipacaoSimuladaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAntecipacaoSimuladaResponse*)data, error);
                           }
          ];
}

///
/// {{{compra_antecipavel_resource_simular_antecipacoes}}}
/// {{{compra_antecipavel_resource_simular_antecipacoes_notes}}}
///  @param idConta {{{compra_antecipavel_resource_simular_antecipacoes_param_id_conta}}} 
///
///  @param complemento {{{compra_antecipavel_resource_simular_antecipacoes_param_complemento}}} (optional)
///
///  @returns PierAntecipacaoSimuladaLoteResponse*
///
-(NSNumber*) simularAntecipacoesUsingGETWithIdConta: (NSNumber*) idConta
    complemento: (NSString*) complemento
    completionHandler: (void (^)(PierAntecipacaoSimuladaLoteResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `simularAntecipacoesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/compras-antecipaveis/simular-antecipacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
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
                              responseType: @"PierAntecipacaoSimuladaLoteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAntecipacaoSimuladaLoteResponse*)data, error);
                           }
          ];
}



@end
