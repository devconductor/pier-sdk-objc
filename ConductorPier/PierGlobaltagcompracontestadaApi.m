#import "PierGlobaltagcompracontestadaApi.h"
#import "PierQueryParamCollection.h"
#import "PierContestarCompraRequest.h"
#import "PierPageGrupoChargebackResponse.h"


@interface PierGlobaltagcompracontestadaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagcompracontestadaApi

static PierGlobaltagcompracontestadaApi* singletonAPI = nil;

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

+(PierGlobaltagcompracontestadaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagcompracontestadaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagcompracontestadaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagcompracontestadaApi alloc] init];
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
/// {{{compra_contestada_transacoes_resource_contestar}}}
/// {{{compra_contestada_transacoes_resource_contestar_notes}}}
///  @param idCartao idCartao 
///
///  @param request request 
///
///  @param login login (optional)
///
///  @returns NSObject*
///
-(NSNumber*) contestarUsingPOSTWithIdCartao: (NSNumber*) idCartao
    request: (PierContestarCompraRequest*) request
    login: (NSString*) login
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `contestarUsingPOST`"];
    }
    
    // verify the required parameter 'request' is set
    if (request == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `request` when calling `contestarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes-com-contestacoes/{idCartao}/contestar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
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
    
    bodyParam = login;
    

    
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
/// {{{compra_contestada_detalhe_cartao_resource_listar}}}
/// {{{compra_contestada_detalhe_cartao_resource_listar_notes}}}
///  @param idCartao idCartao 
///
///  @returns PierPageGrupoChargebackResponse*
///
-(NSNumber*) detalheCartaoUsingGETWithIdCartao: (NSNumber*) idCartao
    completionHandler: (void (^)(PierPageGrupoChargebackResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `detalheCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes-com-contestacoes/{idCartao}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
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
                              responseType: @"PierPageGrupoChargebackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageGrupoChargebackResponse*)data, error);
                           }
          ];
}

///
/// {{{cartao_com_compra_contestada_resource_listar}}}
/// {{{cartao_com_compra_contestada_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param agingContestacao  (optional)
///
///  @param nome  (optional)
///
///  @param bandeira  (optional)
///
///  @param cartao  (optional)
///
///  @param cpf  (optional)
///
///  @param conta  (optional)
///
///  @param statusCartao  (optional)
///
///  @param statusContestacao  (optional)
///
///  @param dataContestacao  (optional)
///
///  @param dataAlteracao  (optional)
///
///  @param dataReapresentacao  (optional)
///
///  @param diasContestacao  (optional)
///
///  @param diasCompra  (optional)
///
///  @param modoEntrada  (optional)
///
///  @param motivo  (optional)
///
///  @param valorCompra  (optional)
///
///  @returns PierPageGrupoChargebackResponse*
///
-(NSNumber*) listarUsingGET13WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    agingContestacao: (NSNumber*) agingContestacao
    nome: (NSString*) nome
    bandeira: (NSString*) bandeira
    cartao: (NSString*) cartao
    cpf: (NSString*) cpf
    conta: (NSString*) conta
    statusCartao: (NSNumber*) statusCartao
    statusContestacao: (NSNumber*) statusContestacao
    dataContestacao: (NSString*) dataContestacao
    dataAlteracao: (NSString*) dataAlteracao
    dataReapresentacao: (NSString*) dataReapresentacao
    diasContestacao: (NSNumber*) diasContestacao
    diasCompra: (NSNumber*) diasCompra
    modoEntrada: (NSString*) modoEntrada
    motivo: (NSString*) motivo
    valorCompra: (NSNumber*) valorCompra
    completionHandler: (void (^)(PierPageGrupoChargebackResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes-com-contestacoes"];

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
    if (agingContestacao != nil) {
        
        queryParams[@"agingContestacao"] = agingContestacao;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (bandeira != nil) {
        
        queryParams[@"bandeira"] = bandeira;
    }
    if (cartao != nil) {
        
        queryParams[@"cartao"] = cartao;
    }
    if (cpf != nil) {
        
        queryParams[@"cpf"] = cpf;
    }
    if (conta != nil) {
        
        queryParams[@"conta"] = conta;
    }
    if (statusCartao != nil) {
        
        queryParams[@"statusCartao"] = statusCartao;
    }
    if (statusContestacao != nil) {
        
        queryParams[@"statusContestacao"] = statusContestacao;
    }
    if (dataContestacao != nil) {
        
        queryParams[@"dataContestacao"] = dataContestacao;
    }
    if (dataAlteracao != nil) {
        
        queryParams[@"dataAlteracao"] = dataAlteracao;
    }
    if (dataReapresentacao != nil) {
        
        queryParams[@"dataReapresentacao"] = dataReapresentacao;
    }
    if (diasContestacao != nil) {
        
        queryParams[@"diasContestacao"] = diasContestacao;
    }
    if (diasCompra != nil) {
        
        queryParams[@"diasCompra"] = diasCompra;
    }
    if (modoEntrada != nil) {
        
        queryParams[@"modoEntrada"] = modoEntrada;
    }
    if (motivo != nil) {
        
        queryParams[@"motivo"] = motivo;
    }
    if (valorCompra != nil) {
        
        queryParams[@"valorCompra"] = valorCompra;
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
                              responseType: @"PierPageGrupoChargebackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageGrupoChargebackResponse*)data, error);
                           }
          ];
}

///
/// {{{compra_contestada_transacoes_resource_listar}}}
/// {{{compra_contestada_transacoes_resource_listar_notes}}}
///  @param idCartao idCartao 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param agingContestacao  (optional)
///
///  @param nome  (optional)
///
///  @param bandeira  (optional)
///
///  @param cartao  (optional)
///
///  @param cpf  (optional)
///
///  @param conta  (optional)
///
///  @param statusCartao  (optional)
///
///  @param statusContestacao  (optional)
///
///  @param dataContestacao  (optional)
///
///  @param dataAlteracao  (optional)
///
///  @param dataReapresentacao  (optional)
///
///  @param diasContestacao  (optional)
///
///  @param diasCompra  (optional)
///
///  @param modoEntrada  (optional)
///
///  @param motivo  (optional)
///
///  @param valorCompra  (optional)
///
///  @returns PierPageGrupoChargebackResponse*
///
-(NSNumber*) transacaoUsingGETWithIdCartao: (NSNumber*) idCartao
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    agingContestacao: (NSNumber*) agingContestacao
    nome: (NSString*) nome
    bandeira: (NSString*) bandeira
    cartao: (NSString*) cartao
    cpf: (NSString*) cpf
    conta: (NSString*) conta
    statusCartao: (NSNumber*) statusCartao
    statusContestacao: (NSNumber*) statusContestacao
    dataContestacao: (NSString*) dataContestacao
    dataAlteracao: (NSString*) dataAlteracao
    dataReapresentacao: (NSString*) dataReapresentacao
    diasContestacao: (NSNumber*) diasContestacao
    diasCompra: (NSNumber*) diasCompra
    modoEntrada: (NSString*) modoEntrada
    motivo: (NSString*) motivo
    valorCompra: (NSNumber*) valorCompra
    completionHandler: (void (^)(PierPageGrupoChargebackResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `transacaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/cartoes-com-contestacoes/{idCartao}/transacoes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idCartao != nil) {
        pathParams[@"idCartao"] = idCartao;
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
    if (agingContestacao != nil) {
        
        queryParams[@"agingContestacao"] = agingContestacao;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (bandeira != nil) {
        
        queryParams[@"bandeira"] = bandeira;
    }
    if (cartao != nil) {
        
        queryParams[@"cartao"] = cartao;
    }
    if (cpf != nil) {
        
        queryParams[@"cpf"] = cpf;
    }
    if (conta != nil) {
        
        queryParams[@"conta"] = conta;
    }
    if (statusCartao != nil) {
        
        queryParams[@"statusCartao"] = statusCartao;
    }
    if (statusContestacao != nil) {
        
        queryParams[@"statusContestacao"] = statusContestacao;
    }
    if (dataContestacao != nil) {
        
        queryParams[@"dataContestacao"] = dataContestacao;
    }
    if (dataAlteracao != nil) {
        
        queryParams[@"dataAlteracao"] = dataAlteracao;
    }
    if (dataReapresentacao != nil) {
        
        queryParams[@"dataReapresentacao"] = dataReapresentacao;
    }
    if (diasContestacao != nil) {
        
        queryParams[@"diasContestacao"] = diasContestacao;
    }
    if (diasCompra != nil) {
        
        queryParams[@"diasCompra"] = diasCompra;
    }
    if (modoEntrada != nil) {
        
        queryParams[@"modoEntrada"] = modoEntrada;
    }
    if (motivo != nil) {
        
        queryParams[@"motivo"] = motivo;
    }
    if (valorCompra != nil) {
        
        queryParams[@"valorCompra"] = valorCompra;
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
                              responseType: @"PierPageGrupoChargebackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageGrupoChargebackResponse*)data, error);
                           }
          ];
}



@end
