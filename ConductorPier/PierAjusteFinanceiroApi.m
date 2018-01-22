#import "PierAjusteFinanceiroApi.h"
#import "PierQueryParamCollection.h"
#import "PierAjusteFinanceiroResponse.h"
#import "PierPageAjusteResponse.h"


@interface PierAjusteFinanceiroApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierAjusteFinanceiroApi

static PierAjusteFinanceiroApi* singletonAPI = nil;

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

+(PierAjusteFinanceiroApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierAjusteFinanceiroApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierAjusteFinanceiroApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierAjusteFinanceiroApi alloc] init];
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
/// Lan\u00C3\u00A7a um ajuste para a conta informada
/// Este recurso insere um ajuste para a conta do id informado
///  @param idTipoAjuste C\u00C3\u00B3digo identificador do tipo de ajuste. 
///
///  @param dataAjuste Data do ajuste no formato yyyy-MM-dd'T'HH:mm:ss.SSSZ. 
///
///  @param valorAjuste Valor do ajuste 
///
///  @param idConta C\u00C3\u00B3digo identificador da conta. 
///
///  @param identificadorExterno Codigo Hexadecimal (optional)
///
///  @returns PierAjusteFinanceiroResponse*
///
-(NSNumber*) ajustarContaUsingPOSTWithIdTipoAjuste: (NSNumber*) idTipoAjuste
    dataAjuste: (NSString*) dataAjuste
    valorAjuste: (NSNumber*) valorAjuste
    idConta: (NSNumber*) idConta
    identificadorExterno: (NSString*) identificadorExterno
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
/// Apresenta dados de um determinado ajuste financeiro
/// Este m\u00C3\u00A9todo permite consultar dados de um determinado ajuste a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do ajuste (id). 
///
///  @returns PierAjusteFinanceiroResponse*
///
-(NSNumber*) consultarUsingGET1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAjusteFinanceiroResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET1`"];
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
/// Lista ajustes existentes na base de dados do Emissor
/// Este recurso permite listar ajustes existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idTipoAjuste C\u00C3\u00B3digo identificador do tipo de ajuste. (optional)
///
///  @param dataAjuste Data do ajuste no formato yyyy-MM-dd'T'HH:mm:ss.SSSZ. (optional)
///
///  @param valorAjuste Valor do ajuste (optional)
///
///  @param identificadorExterno Codigo Hexadecimal (optional)
///
///  @param idConta C\u00C3\u00B3digo identificador da conta. (optional)
///
///  @returns PierPageAjusteResponse*
///
-(NSNumber*) listarUsingGET1WithSort: (NSArray* /* NSString */) sort
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
