#import "PierAvisoViagemApi.h"
#import "PierQueryParamCollection.h"
#import "PierAvisoViagemResponse.h"
#import "PierPageAvisoViagemResponse.h"


@interface PierAvisoViagemApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierAvisoViagemApi

static PierAvisoViagemApi* singletonAPI = nil;

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

+(PierAvisoViagemApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierAvisoViagemApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierAvisoViagemApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierAvisoViagemApi alloc] init];
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
/// Consultar um aviso viagem de acordo com o id passado
/// Este m\u00E9todo permite que seja consultado um aviso viagen existente na base do emissor.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Aviso Viagem (id). 
///
///  @returns PierAvisoViagemResponse*
///
-(NSNumber*) consultarUsingGET5WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET5`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/avisos-viagens/{id}"];

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
                              responseType: @"PierAvisoViagemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAvisoViagemResponse*)data, error);
                           }
          ];
}

///
/// Desabilitar um aviso viagem de acordo com o id passado
/// Este m\u00E9todo permite que seja desabilitado um aviso viagen existente na base do emissor.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Aviso Viagem (id). 
///
///  @returns PierAvisoViagemResponse*
///
-(NSNumber*) desabilitarUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desabilitarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/avisos-viagens/{id}/desabilitar"];

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
                              responseType: @"PierAvisoViagemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAvisoViagemResponse*)data, error);
                           }
          ];
}

///
/// Habilitar um aviso viagem de acordo com o id passado
/// Este m\u00E9todo permite que seja habilitado um aviso viagen existente na base do emissor.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Aviso Viagem (id). 
///
///  @returns PierAvisoViagemResponse*
///
-(NSNumber*) habilitarUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `habilitarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/avisos-viagens/{id}/habilitar"];

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
                              responseType: @"PierAvisoViagemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAvisoViagemResponse*)data, error);
                           }
          ];
}

///
/// Lista os avisos viagens gerados pelo Emissor
/// Este m\u00E9todo permite que sejam listados os avisos viagens existentes na base do emissor.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idCartao C\u00F3digo Identificador do cart\u00E3o na base (id) (optional)
///
///  @param codigoPais Codigo identificador do pa\u00EDs na base (id) (optional)
///
///  @param dataInicio Data inicio do aviso viagem (optional)
///
///  @param dataFim Data fim do aviso viagem (optional)
///
///  @param flagAtivo Identifica se o aviso viagem esta ativo ou n\u00E3o (optional)
///
///  @returns PierPageAvisoViagemResponse*
///
-(NSNumber*) listarUsingGET7WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idCartao: (NSNumber*) idCartao
    codigoPais: (NSString*) codigoPais
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageAvisoViagemResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/avisos-viagens"];

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
    if (idCartao != nil) {
        
        queryParams[@"idCartao"] = idCartao;
    }
    if (codigoPais != nil) {
        
        queryParams[@"codigoPais"] = codigoPais;
    }
    if (dataInicio != nil) {
        
        queryParams[@"dataInicio"] = dataInicio;
    }
    if (dataFim != nil) {
        
        queryParams[@"dataFim"] = dataFim;
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
                              responseType: @"PierPageAvisoViagemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageAvisoViagemResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo Aviso Viagem
/// Este m\u00E9todo permite que seja cadastrado um novo Aviso Viagem na base de dados do Emissor.
///  @param idCartao C\u00F3digo Identificador do cart\u00E3o na base (id) 
///
///  @param codigoPais Codigo identificador do pa\u00EDs na base (id) 
///
///  @param dataInicio Data inicio do aviso viagem 
///
///  @param dataFim Data fim do aviso viagem 
///
///  @returns PierAvisoViagemResponse*
///
-(NSNumber*) salvarUsingPOST3WithIdCartao: (NSNumber*) idCartao
    codigoPais: (NSString*) codigoPais
    dataInicio: (NSString*) dataInicio
    dataFim: (NSString*) dataFim
    completionHandler: (void (^)(PierAvisoViagemResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idCartao' is set
    if (idCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idCartao` when calling `salvarUsingPOST3`"];
    }
    
    // verify the required parameter 'codigoPais' is set
    if (codigoPais == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `codigoPais` when calling `salvarUsingPOST3`"];
    }
    
    // verify the required parameter 'dataInicio' is set
    if (dataInicio == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataInicio` when calling `salvarUsingPOST3`"];
    }
    
    // verify the required parameter 'dataFim' is set
    if (dataFim == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataFim` when calling `salvarUsingPOST3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/avisos-viagens"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idCartao != nil) {
        
        queryParams[@"idCartao"] = idCartao;
    }
    if (codigoPais != nil) {
        
        queryParams[@"codigoPais"] = codigoPais;
    }
    if (dataInicio != nil) {
        
        queryParams[@"dataInicio"] = dataInicio;
    }
    if (dataFim != nil) {
        
        queryParams[@"dataFim"] = dataFim;
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
                              responseType: @"PierAvisoViagemResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAvisoViagemResponse*)data, error);
                           }
          ];
}



@end
