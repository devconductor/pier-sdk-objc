#import "PierTransferenciaBancariaApi.h"
#import "PierQueryParamCollection.h"
#import "PierContaBancariaPortadorResponse.h"
#import "PierContaBancariaPortadorUpdate.h"
#import "PierTransferenciaCreditoContaBancariaResponse.h"
#import "PierTransferenciaBancariaResponse.h"
#import "PierPageTransferenciaCreditoContaBancariaResponse.h"
#import "PierPageContaBancariaPortadorResponse.h"
#import "PierPageTransferenciaBancariaResponse.h"
#import "PierContaBancariaPortadorPersist.h"
#import "PierPlanoParcelamentoTransferenciaCreditoContaBancariaResponse.h"
#import "PierPlanoParcelamentoTransferenciaCreditoContaBancariaRequest.h"
#import "PierTransferenciaCreditoContaBancariaPersist.h"
#import "PierTransferenciaBancariaPersist.h"


@interface PierTransferenciaBancariaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierTransferenciaBancariaApi

static PierTransferenciaBancariaApi* singletonAPI = nil;

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

+(PierTransferenciaBancariaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierTransferenciaBancariaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierTransferenciaBancariaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierTransferenciaBancariaApi alloc] init];
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
/// Atualiza conta banc\u00E1ria portador
/// Esse recurso permite atualizar uma conta banc\u00E1ria do portador.
///  @param _id C\u00F3digo de identifica\u00E7\u00E3o da conta banc\u00E1ria do portador (id). 
///
///  @param update update 
///
///  @returns PierContaBancariaPortadorResponse*
///
-(NSNumber*) atualizarUsingPUT1WithId: (NSNumber*) _id
    update: (PierContaBancariaPortadorUpdate*) update
    completionHandler: (void (^)(PierContaBancariaPortadorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atualizarUsingPUT1`"];
    }
    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `atualizarUsingPUT1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas-bancarias-portador/{id}"];

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
    
    bodyParam = update;
    

    
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
                              responseType: @"PierContaBancariaPortadorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaBancariaPortadorResponse*)data, error);
                           }
          ];
}

///
/// Realizar o cancelamento de uma transfer\u00EAncia banc\u00E1ria do cart\u00E3o para contas banc\u00E1rias que esteja pendente de confirma\u00E7\u00E3o.
/// Este recurso tem como objetivo permitir o canelamento de uma transfer\u00EAncia de cr\u00E9dito entre contas.
///  @param idTransferencia Id Transfer\u00EAncia 
///
///  @returns NSString*
///
-(NSNumber*) cancelarTransferenciaCreditoContaBancariaUsingPOSTWithIdTransferencia: (NSNumber*) idTransferencia
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `cancelarTransferenciaCreditoContaBancariaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/transferencias-creditos-contas-bancarias/{idTransferencia}/cancelar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idTransferencia != nil) {
        pathParams[@"idTransferencia"] = idTransferencia;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Realizar a confirma\u00E7\u00E3o de uma transfer\u00EAncia banc\u00E1ria do cart\u00E3o para contas banc\u00E1rias que esteja pendente de confirma\u00E7\u00E3o.
/// Este recurso tem como objetivo permitir a confirma\u00E7\u00E3o da transfer\u00EAncia de cr\u00E9dito entre contas.
///  @param idTransferencia Id Transfer\u00EAncia 
///
///  @returns NSString*
///
-(NSNumber*) confirmarTransferenciaCreditoContaBancariaUsingPOSTWithIdTransferencia: (NSNumber*) idTransferencia
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `confirmarTransferenciaCreditoContaBancariaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/transferencias-creditos-contas-bancarias/{idTransferencia}/confirmar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idTransferencia != nil) {
        pathParams[@"idTransferencia"] = idTransferencia;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Realiza a consulta de uma transfer\u00EAncia banc\u00E1ria de cr\u00E9dito entre contas banc\u00E1rias de um portador
/// Recurso utilizado para recuperar uma transfer\u00EAncia de cr\u00E9dito entre contas banc\u00E1ria de um portador, utiliza o ID da transfer\u00EAncia banc\u00E1riae o idConta para realizar a consulta.
///  @param idTransferencia Id Transfer\u00EAncia 
///
///  @returns PierTransferenciaCreditoContaBancariaResponse*
///
-(NSNumber*) consultarTransferenciaBancariaUsingGETWithIdTransferencia: (NSNumber*) idTransferencia
    completionHandler: (void (^)(PierTransferenciaCreditoContaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `consultarTransferenciaBancariaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/transferencias-creditos-contas-bancarias/{idTransferencia}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idTransferencia != nil) {
        pathParams[@"idTransferencia"] = idTransferencia;
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
                              responseType: @"PierTransferenciaCreditoContaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransferenciaCreditoContaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Consulta conta banc\u00E1ria portador
/// Esse recurso permite consultar uma conta banc\u00E1ria do portador a partir do seu c\u00F3digo de identifica\u00E7\u00E3o (id).
///  @param _id C\u00F3digo de identifica\u00E7\u00E3o da conta banc\u00E1ria (id). 
///
///  @returns PierContaBancariaPortadorResponse*
///
-(NSNumber*) consultarUsingGET12WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierContaBancariaPortadorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET12`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas-bancarias-portador/{id}"];

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
                              responseType: @"PierContaBancariaPortadorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaBancariaPortadorResponse*)data, error);
                           }
          ];
}

///
/// Consultar uma transfer\u00EAncia banc\u00E1ria para um banco
/// Este recurso permite consultar os detalhes de uma determinada transfer\u00EAncia de cr\u00E9dito realizada para uma conta banc\u00E1ria. De modo geral, esta opera\u00E7\u00E3o poder\u00E1 ser utilizada para uma consulta simples destes detalhes ou para realizar a montagem de um comprovante de 2\u00AA via de transfer\u00EAncia entre contas.
///  @param _id Id Conta 
///
///  @param idTransferencia Id Transfer\u00EAncia 
///
///  @param idContaBancariaDestino C\u00F3digo de identifica\u00E7\u00E3o da conta banc\u00E1ria de destino (id) (optional)
///
///  @returns PierTransferenciaBancariaResponse*
///
-(NSNumber*) consultarUsingGET41WithId: (NSNumber*) _id
    idTransferencia: (NSNumber*) idTransferencia
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    completionHandler: (void (^)(PierTransferenciaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET41`"];
    }
    
    // verify the required parameter 'idTransferencia' is set
    if (idTransferencia == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idTransferencia` when calling `consultarUsingGET41`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-contas-bancarias/{id_transferencia}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idTransferencia != nil) {
        pathParams[@"id_transferencia"] = idTransferencia;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idContaBancariaDestino != nil) {
        
        queryParams[@"id_conta_bancaria_destino"] = idContaBancariaDestino;
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
                              responseType: @"PierTransferenciaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransferenciaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Realiza a listagem das transfer\u00EAncias banc\u00E1rias de cr\u00E9dito entre contas banc\u00E1rias
/// Recurso utilizado para listar as transfer\u00EAncia de cr\u00E9dito entre contas banc\u00E1ria de um portador solicitadas.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idConta C\u00F3digo de identifica\u00E7\u00E3o da Conta. (optional)
///
///  @param dataSolicitacaoInicial Data inicial da solicita\u00E7\u00E3o de transfer\u00EAncia. (optional)
///
///  @param dataSolicitacaoFinal Data final da solicita\u00E7\u00E3o de transfer\u00EAncia (optional)
///
///  @param status C\u00F3digo do status do processamento (optional)
///
///  @returns PierPageTransferenciaCreditoContaBancariaResponse*
///
-(NSNumber*) listarTransferenciaBancariaUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idConta: (NSNumber*) idConta
    dataSolicitacaoInicial: (NSString*) dataSolicitacaoInicial
    dataSolicitacaoFinal: (NSString*) dataSolicitacaoFinal
    status: (NSNumber*) status
    completionHandler: (void (^)(PierPageTransferenciaCreditoContaBancariaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/transferencias-creditos-contas-bancarias"];

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
    if (dataSolicitacaoInicial != nil) {
        
        queryParams[@"dataSolicitacaoInicial"] = dataSolicitacaoInicial;
    }
    if (dataSolicitacaoFinal != nil) {
        
        queryParams[@"dataSolicitacaoFinal"] = dataSolicitacaoFinal;
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
                              responseType: @"PierPageTransferenciaCreditoContaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransferenciaCreditoContaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Lista contas banc\u00E1rias portador
/// Esse recurso permite listar contas banc\u00E1rias do portador.
///  @param idConta C\u00F3digo identificador da conta cart\u00E3o (optional)
///
///  @param nomeAgencia Descri\u00E7\u00E3o da ag\u00EAncia (optional)
///
///  @param numeroAgencia N\u00FAmero da ag\u00EAncia (optional)
///
///  @param numeroConta N\u00FAmero da conta (optional)
///
///  @param flagContaOrigemDoc Sinaliza se origem \u00E9 DOC (1: DOC, 0: TED) (optional)
///
///  @param idPessoaFisica C\u00F3digo da pessoa (optional)
///
///  @param favorecido Nome do favorecido (optional)
///
///  @param numeroReceiraFederal Documento do favorecido (optional)
///
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageContaBancariaPortadorResponse*
///
-(NSNumber*) listarUsingGET15WithIdConta: (NSNumber*) idConta
    nomeAgencia: (NSString*) nomeAgencia
    numeroAgencia: (NSString*) numeroAgencia
    numeroConta: (NSString*) numeroConta
    flagContaOrigemDoc: (NSNumber*) flagContaOrigemDoc
    idPessoaFisica: (NSNumber*) idPessoaFisica
    favorecido: (NSString*) favorecido
    numeroReceiraFederal: (NSString*) numeroReceiraFederal
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageContaBancariaPortadorResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas-bancarias-portador"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (nomeAgencia != nil) {
        
        queryParams[@"nomeAgencia"] = nomeAgencia;
    }
    if (numeroAgencia != nil) {
        
        queryParams[@"numeroAgencia"] = numeroAgencia;
    }
    if (numeroConta != nil) {
        
        queryParams[@"numeroConta"] = numeroConta;
    }
    if (flagContaOrigemDoc != nil) {
        
        queryParams[@"flagContaOrigemDoc"] = flagContaOrigemDoc;
    }
    if (idPessoaFisica != nil) {
        
        queryParams[@"idPessoaFisica"] = idPessoaFisica;
    }
    if (favorecido != nil) {
        
        queryParams[@"favorecido"] = favorecido;
    }
    if (numeroReceiraFederal != nil) {
        
        queryParams[@"numeroReceiraFederal"] = numeroReceiraFederal;
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
                              responseType: @"PierPageContaBancariaPortadorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageContaBancariaPortadorResponse*)data, error);
                           }
          ];
}

///
/// Listar as transfer\u00EAncias banc\u00E1rias realizadas
/// Este recurso tem como objetivo permitir que o portador de um Cart\u00E3o possa consultar uma lista das Transfer\u00EAncias Banc\u00E1rias para os Favorecidos cadastrados.
///  @param _id Id Conta 
///
///  @param idContaBancariaDestino C\u00F3digo de identifica\u00E7\u00E3o da conta banc\u00E1ria de destino (id) (optional)
///
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageTransferenciaBancariaResponse*
///
-(NSNumber*) listarUsingGET49WithId: (NSNumber*) _id
    idContaBancariaDestino: (NSNumber*) idContaBancariaDestino
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTransferenciaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET49`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-contas-bancarias"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idContaBancariaDestino != nil) {
        
        queryParams[@"id_conta_bancaria_destino"] = idContaBancariaDestino;
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
                              responseType: @"PierPageTransferenciaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTransferenciaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Cadastra uma conta banc\u00E1ria do portador
/// Esse recurso permite cadastrar contas banc\u00E1rias do portador.
///  @param persist persist 
///
///  @returns PierContaBancariaPortadorResponse*
///
-(NSNumber*) salvarUsingPOST8WithPersist: (PierContaBancariaPortadorPersist*) persist
    completionHandler: (void (^)(PierContaBancariaPortadorResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarUsingPOST8`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas-bancarias-portador"];

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
    
    bodyParam = persist;
    

    
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
                              responseType: @"PierContaBancariaPortadorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierContaBancariaPortadorResponse*)data, error);
                           }
          ];
}

///
/// Realiza a simula\u00E7\u00E3o dos planos de parcelamentos para uma transfer\u00EAncia banc\u00E1ria de cr\u00E9dito entre contas banc\u00E1rias
/// Realiza a simula\u00E7\u00E3o dos planos de parcelamentos para uma transfer\u00EAncia banc\u00E1ria de cr\u00E9dito entre contas banc\u00E1rias.
///  @param request request 
///
///  @returns PierPlanoParcelamentoTransferenciaCreditoContaBancariaResponse*
///
-(NSNumber*) simularTransferenciaBancariaUsingPOSTWithRequest: (PierPlanoParcelamentoTransferenciaCreditoContaBancariaRequest*) request
    completionHandler: (void (^)(PierPlanoParcelamentoTransferenciaCreditoContaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'request' is set
    if (request == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `request` when calling `simularTransferenciaBancariaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/simular-transferencias-creditos-contas-bancarias"];

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
    
    bodyParam = request;
    

    
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
                              responseType: @"PierPlanoParcelamentoTransferenciaCreditoContaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPlanoParcelamentoTransferenciaCreditoContaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Realizar transfer\u00EAncia banc\u00E1ria do cart\u00E3o para contas banc\u00E1rias
/// Este recurso tem como objetivo permitir que o portador de um cart\u00E3o possa realizar a transfer\u00EAncia de cr\u00E9dito para uma conta banc\u00E1ria. Assim, o valor do cr\u00E9dito somado a tarifa para transfer\u00EAncia, quando praticada pelo emissor, ser\u00E1 debitado da conta de origem, se houver saldo suficiente, e ser\u00E1 creditado na conta banc\u00E1ria de destino.
///  @param persist persist 
///
///  @returns PierTransferenciaCreditoContaBancariaResponse*
///
-(NSNumber*) transferenciaCreditoContaBancariaUsingPOSTWithPersist: (PierTransferenciaCreditoContaBancariaPersist*) persist
    completionHandler: (void (^)(PierTransferenciaCreditoContaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `transferenciaCreditoContaBancariaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/transferencias-creditos-contas-bancarias"];

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
    
    bodyParam = persist;
    

    
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
                              responseType: @"PierTransferenciaCreditoContaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransferenciaCreditoContaBancariaResponse*)data, error);
                           }
          ];
}

///
/// Realizar transfer\u00EAncia banc\u00E1ria do cart\u00E3o para contas banc\u00E1rias
/// Este recurso tem como objetivo permitir que o portador de um cart\u00E3o possa realizar a transfer\u00EAncia de cr\u00E9dito para uma conta banc\u00E1ria. Assim, o valor do cr\u00E9dito somado a tarifa para transfer\u00EAncia, quando praticada pelo emissor, ser\u00E1 debitado da conta de origem, se houver saldo suficiente, e ser\u00E1 creditado na conta banc\u00E1ria de destino.
///  @param _id Id Conta 
///
///  @param transferenciaBancariaPersist transferenciaBancariaPersist 
///
///  @returns PierTransferenciaBancariaResponse*
///
-(NSNumber*) transferirUsingPOSTWithId: (NSNumber*) _id
    transferenciaBancariaPersist: (PierTransferenciaBancariaPersist*) transferenciaBancariaPersist
    completionHandler: (void (^)(PierTransferenciaBancariaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `transferirUsingPOST`"];
    }
    
    // verify the required parameter 'transferenciaBancariaPersist' is set
    if (transferenciaBancariaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `transferenciaBancariaPersist` when calling `transferirUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/transferencias-creditos-contas-bancarias"];

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
    
    bodyParam = transferenciaBancariaPersist;
    

    
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
                              responseType: @"PierTransferenciaBancariaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTransferenciaBancariaResponse*)data, error);
                           }
          ];
}



@end
