#import "PierPagamentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierAcordoDetalheResponse.h"
#import "PierPageHistoricoPagamentoResponse.h"
#import "PierPageAcordoResponse.h"


@interface PierPagamentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierPagamentoApi

static PierPagamentoApi* singletonAPI = nil;

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

+(PierPagamentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierPagamentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierPagamentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierPagamentoApi alloc] init];
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
/// Consulta os dados de um determinado acordo
/// Este m\u00E9todo permite consultar dados de um determinado acordo a partir de seu codigo de identifica\u00E7\u00E3o (id).
///  @param _id C\u00F3digo de identifica\u00E7\u00E3o do acordo (id). 
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
/// Lista hist\u00F3rico de pagamentos
/// Este recurso permite listar todos os Pagamentos realizados independente do seu Status de Processamento.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idConta C\u00F3digo de Identifica\u00E7\u00E3o da Conta (optional)
///
///  @param idPagamento C\u00F3digo de Identifica\u00E7\u00E3o do Pagamento (optional)
///
///  @param idEstabelecimento C\u00F3digo de Identifica\u00E7\u00E3o do Estabelecimento onde o Pagamento foi realizado, quando este for o local de pagamento (optional)
///
///  @param idBanco C\u00F3digo de Identifica\u00E7\u00E3o da Institui\u00E7\u00E3o Banc\u00E1ria onde o Pagamento foi realizado, quando este for o local de pagamento (optional)
///
///  @param idCartao C\u00F3digo de Identifica\u00E7\u00E3o do Cart\u00E3o (optional)
///
///  @param dataHoraPagamento Data e Hora da realiza\u00E7\u00E3o do Pagamento. Quando feito em Institui\u00E7\u00E3o Banc\u00E1ria, o hor\u00E1rio do pagamento \u00E9 exibido com valor zero (optional)
///
///  @param status C\u00F3digo de Identifica\u00E7\u00E3o do Status do Pagamento (optional)
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
/// Lista os acordos existentes na base
/// Este m\u00E9todo permite que sejam listados todos os acordos existentes na base do emissor.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idConta C\u00F3digo Identificador da conta na base (id) (optional)
///
///  @param statusAcordo Status do acordo na base (optional)
///
///  @param dataAcordo Data do acordo (optional)
///
///  @param quantidadeParcelas Quantidade de parcelas (optional)
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
