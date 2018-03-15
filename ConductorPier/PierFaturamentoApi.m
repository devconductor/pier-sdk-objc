#import "PierFaturamentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierTipoFaturamentoResponse.h"
#import "PierTipoFaturamentoPersist.h"
#import "PierTipoFaturamentoPorContaPersist.h"
#import "PierTipoFaturamentoPorContaResponse.h"
#import "PierPageTipoFaturamentoPorContaResponse.h"
#import "PierPageTipoFaturamentoResponse.h"


@interface PierFaturamentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierFaturamentoApi

static PierFaturamentoApi* singletonAPI = nil;

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

+(PierFaturamentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFaturamentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierFaturamentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFaturamentoApi alloc] init];
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
/// Alterar Faturamento
/// Alterar as configura\u00E7\u00F5es de um determinado tipo de faturamento
///  @param _id Id 
///
///  @param tipoFaturamentoPersist tipoFaturamentoPersist 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) alterarTipoFaturamentoUsingPUTWithId: (NSNumber*) _id
    tipoFaturamentoPersist: (PierTipoFaturamentoPersist*) tipoFaturamentoPersist
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarTipoFaturamentoUsingPUT`"];
    }
    
    // verify the required parameter 'tipoFaturamentoPersist' is set
    if (tipoFaturamentoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoFaturamentoPersist` when calling `alterarTipoFaturamentoUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento/{id}"];

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
    
    bodyParam = tipoFaturamentoPersist;
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// Adiciona uma nova configura\u00E7\u00E3o de faturamento para uma conta
/// Este m\u00E9todo permite adicionar uma nova configura\u00E7\u00E3o de tipo de faturamento para um conta espec\u00EDfica.
///  @param tipoFaturamentoPorContaPersist tipoFaturamentoPorContaPersist 
///
///  @returns PierTipoFaturamentoPorContaResponse*
///
-(NSNumber*) cadastrarFaturamentoPorContaUsingPOSTWithTipoFaturamentoPorContaPersist: (PierTipoFaturamentoPorContaPersist*) tipoFaturamentoPorContaPersist
    completionHandler: (void (^)(PierTipoFaturamentoPorContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'tipoFaturamentoPorContaPersist' is set
    if (tipoFaturamentoPorContaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoFaturamentoPorContaPersist` when calling `cadastrarFaturamentoPorContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento-conta"];

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
    
    bodyParam = tipoFaturamentoPorContaPersist;
    

    
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
                              responseType: @"PierTipoFaturamentoPorContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoPorContaResponse*)data, error);
                           }
          ];
}

///
/// Adiciona um novo faturamento
/// Adiciona uma nova configura\u00E7\u00E3o de tipo de faturamento
///  @param tipoFaturamentoPersist tipoFaturamentoPersist 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) cadastrarTipoFaturamentoUsingPOSTWithTipoFaturamentoPersist: (PierTipoFaturamentoPersist*) tipoFaturamentoPersist
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'tipoFaturamentoPersist' is set
    if (tipoFaturamentoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoFaturamentoPersist` when calling `cadastrarTipoFaturamentoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento"];

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
    
    bodyParam = tipoFaturamentoPersist;
    

    
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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// Consultar Faturamento por id
/// Consulta os detalhes de uma determinada Faturamento
///  @param _id Id 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) consultarTipoFaturamentoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarTipoFaturamentoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento/{id}"];

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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// Desativar uma configura\u00E7\u00E3o de tipo de faturamento por conta atrav\u00E9s do id
/// Desativa uma configura\u00E7\u00E3o de tipo de faturamento de uma determinada conta.
///  @param _id Id 
///
///  @param modificadoPor modificadoPor 
///
///  @returns PierTipoFaturamentoPorContaResponse*
///
-(NSNumber*) desativarFaturamentoPorContaUsingPOSTWithId: (NSNumber*) _id
    modificadoPor: (NSString*) modificadoPor
    completionHandler: (void (^)(PierTipoFaturamentoPorContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarFaturamentoPorContaUsingPOST`"];
    }
    
    // verify the required parameter 'modificadoPor' is set
    if (modificadoPor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `modificadoPor` when calling `desativarFaturamentoPorContaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento-conta/{id}/desativar"];

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
    
    bodyParam = modificadoPor;
    

    
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
                              responseType: @"PierTipoFaturamentoPorContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoPorContaResponse*)data, error);
                           }
          ];
}

///
/// Desativar uma configura\u00E7\u00E3o de tipo de faturamento atrav\u00E9s do id
/// Desativa uma configura\u00E7\u00E3o de tipo de faturamento.
///  @param _id Id 
///
///  @returns PierTipoFaturamentoResponse*
///
-(NSNumber*) desativarTipoFaturamentoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoFaturamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarTipoFaturamentoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento/{id}/desativar"];

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
                              responseType: @"PierTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoFaturamentoResponse*)data, error);
                           }
          ];
}

///
/// Lista as configura\u00E7\u00F5es de tipos de faturamento por conta
/// Este m\u00E9todo permite listar as configura\u00E7\u00F5es de tipos de faturamento registrados a uma conta.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idTipoFaturamentoPorConta C\u00F3digo de identifica\u00E7\u00E3o do tipo de faturamento por conta (id). (optional)
///
///  @param status Representa se a configura\u00E7\u00E3o est\u00E1 ativada ou desativada para a conta. (optional)
///
///  @param idConta C\u00F3digo de identifica\u00E7\u00E3o do tipo de faturamento por conta (id). (optional)
///
///  @param idTipoFaturamento C\u00F3digo de identifica\u00E7\u00E3o do tipo de faturamento relacionada (id). (optional)
///
///  @param dataHoraInclusao Data da inclus\u00E3o da configura\u00E7\u00E3o, deve ser informada no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. (optional)
///
///  @param dataHoraCancelamento Data do cancelamento da configura\u00E7\u00E3o, deve ser informada no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. (optional)
///
///  @param modificadoPor Identificador do respons\u00E1vel pela modifica\u00E7\u00E3o do registro. (optional)
///
///  @returns PierPageTipoFaturamentoPorContaResponse*
///
-(NSNumber*) listarFaturamentoPorContaUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoFaturamentoPorConta: (NSNumber*) idTipoFaturamentoPorConta
    status: (NSNumber*) status
    idConta: (NSNumber*) idConta
    idTipoFaturamento: (NSNumber*) idTipoFaturamento
    dataHoraInclusao: (NSString*) dataHoraInclusao
    dataHoraCancelamento: (NSString*) dataHoraCancelamento
    modificadoPor: (NSString*) modificadoPor
    completionHandler: (void (^)(PierPageTipoFaturamentoPorContaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento-conta"];

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
    if (idTipoFaturamentoPorConta != nil) {
        
        queryParams[@"idTipoFaturamentoPorConta"] = idTipoFaturamentoPorConta;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idTipoFaturamento != nil) {
        
        queryParams[@"idTipoFaturamento"] = idTipoFaturamento;
    }
    if (dataHoraInclusao != nil) {
        
        queryParams[@"dataHoraInclusao"] = dataHoraInclusao;
    }
    if (dataHoraCancelamento != nil) {
        
        queryParams[@"dataHoraCancelamento"] = dataHoraCancelamento;
    }
    if (modificadoPor != nil) {
        
        queryParams[@"modificadoPor"] = modificadoPor;
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
                              responseType: @"PierPageTipoFaturamentoPorContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoFaturamentoPorContaResponse*)data, error);
                           }
          ];
}

///
/// Lista Tipos de Faturamento
/// Lista todas as configura\u00E7\u00F5es dos tipos de faturamento
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idTipoFaturamento C\u00F3digo de identifica\u00E7\u00E3o do tipo de faturamento (id). (optional)
///
///  @param descricao Descri\u00E7\u00E3o do tipo de faturamento. (optional)
///
///  @param flagApenasDemonstrativo Flag que representa que o faturamento ser\u00E1 apenas demonstrativo. (optional)
///
///  @param idConvenio C\u00F3digo de identifica\u00E7\u00E3o do conv\u00EAnio relacionado ao tipo de faturamento. (optional)
///
///  @returns PierPageTipoFaturamentoResponse*
///
-(NSNumber*) listarTipoFaturamentoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoFaturamento: (NSNumber*) idTipoFaturamento
    descricao: (NSString*) descricao
    flagApenasDemonstrativo: (NSNumber*) flagApenasDemonstrativo
    idConvenio: (NSNumber*) idConvenio
    completionHandler: (void (^)(PierPageTipoFaturamentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-faturamento"];

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
    if (idTipoFaturamento != nil) {
        
        queryParams[@"idTipoFaturamento"] = idTipoFaturamento;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (flagApenasDemonstrativo != nil) {
        
        queryParams[@"flagApenasDemonstrativo"] = flagApenasDemonstrativo;
    }
    if (idConvenio != nil) {
        
        queryParams[@"idConvenio"] = idConvenio;
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
                              responseType: @"PierPageTipoFaturamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoFaturamentoResponse*)data, error);
                           }
          ];
}



@end
