#import "PierOportunidadesApi.h"
#import "PierQueryParamCollection.h"
#import "PierStatusOportunidadeResponse.h"
#import "PierStatusOportunidade.h"
#import "PierOportunidadeUpdate.h"
#import "PierOportunidadeResponse.h"
#import "PierTipoOportunidadeResponse.h"
#import "PierTipoOportunidade.h"
#import "PierPageStatusOprtunidadesAUD.h"
#import "PierPageOprtunidadeAUD.h"
#import "PierPageTipoOprtunidadesAUD.h"
#import "PierPageStatusOprtunidades.h"
#import "PierPageOprtunidadesResponse.h"
#import "PierPageTipoOprtunidades.h"
#import "PierOportunidadePersist.h"


@interface PierOportunidadesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierOportunidadesApi

static PierOportunidadesApi* singletonAPI = nil;

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

+(PierOportunidadesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierOportunidadesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierOportunidadesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierOportunidadesApi alloc] init];
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
/// Altera o status do tipo oportunidade
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o do status do tipo oportunidade.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (id). 
///
///  @param idStatus C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do status do tipo oportunidade (id). 
///
///  @param persist persist 
///
///  @returns PierStatusOportunidadeResponse*
///
-(NSNumber*) alterarStatusUsingPUTWithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    persist: (PierStatusOportunidade*) persist
    completionHandler: (void (^)(PierStatusOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarStatusUsingPUT`"];
    }
    
    // verify the required parameter 'idStatus' is set
    if (idStatus == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatus` when calling `alterarStatusUsingPUT`"];
    }
    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `alterarStatusUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades/{id}/status/{idStatus}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idStatus != nil) {
        pathParams[@"idStatus"] = idStatus;
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
    
    bodyParam = persist;
    

    
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
                              responseType: @"PierStatusOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Altera as oportunidades
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o das oportunidades.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da oportunidade (id). 
///
///  @param update update 
///
///  @returns PierOportunidadeResponse*
///
-(NSNumber*) alterarUsingPUT3WithId: (NSNumber*) _id
    update: (PierOportunidadeUpdate*) update
    completionHandler: (void (^)(PierOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT3`"];
    }
    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `alterarUsingPUT3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/oportunidades/{id}"];

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
                              responseType: @"PierOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Altera os tipos oportunidades
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos tipos oportunidades.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (id). 
///
///  @param persist persist 
///
///  @returns PierTipoOportunidadeResponse*
///
-(NSNumber*) alterarUsingPUT7WithId: (NSNumber*) _id
    persist: (PierTipoOportunidade*) persist
    completionHandler: (void (^)(PierTipoOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT7`"];
    }
    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `alterarUsingPUT7`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades/{id}"];

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
    
    bodyParam = persist;
    

    
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
                              responseType: @"PierTipoOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Apresenta dados de um determinado status do tipo oportunidade
/// Este recurso permite consultar dados de um determinado status do tipo oportunidade a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (idStatus).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (id). 
///
///  @param idStatus C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do status (idStatus). 
///
///  @returns PierStatusOportunidadeResponse*
///
-(NSNumber*) consultarStatusUsingGETWithId: (NSNumber*) _id
    idStatus: (NSNumber*) idStatus
    completionHandler: (void (^)(PierStatusOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarStatusUsingGET`"];
    }
    
    // verify the required parameter 'idStatus' is set
    if (idStatus == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatus` when calling `consultarStatusUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades/{id}/status/{idStatus}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idStatus != nil) {
        pathParams[@"idStatus"] = idStatus;
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
                              responseType: @"PierStatusOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Apresenta dados de um determinado tipo oportunidade
/// Este recurso permite consultar dados de um determinado tipo oportunidade a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (id). 
///
///  @returns PierTipoOportunidadeResponse*
///
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET20`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades/{id}"];

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
                              responseType: @"PierTipoOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Apresenta dados de uma determinada oportunidade
/// Este recurso permite consultar dados de uma determinada oportunidade a partir de seu codigo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da oportunidade (id). 
///
///  @returns PierOportunidadeResponse*
///
-(NSNumber*) consultarUsingGET8WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET8`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/oportunidades/{id}"];

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
                              responseType: @"PierOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Lista as auditorias dos status oportunidades
/// Este recurso permite listar os status oportunidades.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param revType C\u00C3\u00B3digo que representa o tipo de a\u00C3\u00A7\u00C3\u00A3o realizada no recurso de tipos oportunidades (optional)
///
///  @param revDate Data da a\u00C3\u00A7\u00C3\u00A3o realizada no recurso de tipos oportunidades (optional)
///
///  @param _id C\u00C3\u00B3digo identificador do status oportunidade (optional)
///
///  @param idTipoOportunidade C\u00C3\u00B3digo identificador do tipo oportunidade (optional)
///
///  @param nome Nome do status oportunidade (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do status oportunidade (optional)
///
///  @param flagAtivo Flag de verifica\u00C3\u00A7\u00C3\u00A3o se o status oportunidade est\u00C3\u00A1 ativo (optional)
///
///  @param revUser Usu\u00C3\u00A1rio da auditoria (optional)
///
///  @returns PierPageStatusOprtunidadesAUD*
///
-(NSNumber*) listarAuditoriasStatusUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    revType: (NSNumber*) revType
    revDate: (NSString*) revDate
    _id: (NSNumber*) _id
    idTipoOportunidade: (NSNumber*) idTipoOportunidade
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    flagAtivo: (NSNumber*) flagAtivo
    revUser: (NSString*) revUser
    completionHandler: (void (^)(PierPageStatusOprtunidadesAUD* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/auditorias-status-oportunidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (revType != nil) {
        
        queryParams[@"revType"] = revType;
    }
    if (revDate != nil) {
        
        queryParams[@"revDate"] = revDate;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (idTipoOportunidade != nil) {
        
        queryParams[@"idTipoOportunidade"] = idTipoOportunidade;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (flagAtivo != nil) {
        
        queryParams[@"flagAtivo"] = flagAtivo;
    }
    if (revUser != nil) {
        
        queryParams[@"revUser"] = revUser;
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
                              responseType: @"PierPageStatusOprtunidadesAUD*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusOprtunidadesAUD*)data, error);
                           }
          ];
}

///
/// Lista as auditorias das oportunidades
/// Este recurso permite listar as auditorias das oportunidades.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idStatusOportunidade C\u00C3\u00B3digo identificador do status oportunidade (optional)
///
///  @param dataCadastro Data do cadastro da oportunidade (optional)
///
///  @param dataAtualizacao Data da atualiza\u00C3\u00A7\u00C3\u00A3o da oportunidade (optional)
///
///  @param numeroReceitaFederal N\u00C3\u00BAmero receita federal do cliente ao qual ser\u00C3\u00A1 ofertada a oportunidade (optional)
///
///  @param dataInicioVigencia In\u00C3\u00ADcio da vig\u00C3\u00AAncia da oportunidade (optional)
///
///  @param datatFimVigencia Fim da vig\u00C3\u00AAncia da oportunidade (optional)
///
///  @param flagAtivo Flag de verifica\u00C3\u00A7\u00C3\u00A3o se a oportunidade est\u00C3\u00A1 ativa (optional)
///
///  @param revDate Data da auditoria (optional)
///
///  @param revType Tipo da auditoria (optional)
///
///  @param revUser Usu\u00C3\u00A1rio da auditoria (optional)
///
///  @returns PierPageOprtunidadeAUD*
///
-(NSNumber*) listarAuditoriasUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idStatusOportunidade: (NSNumber*) idStatusOportunidade
    dataCadastro: (NSString*) dataCadastro
    dataAtualizacao: (NSString*) dataAtualizacao
    numeroReceitaFederal: (NSString*) numeroReceitaFederal
    dataInicioVigencia: (NSString*) dataInicioVigencia
    datatFimVigencia: (NSString*) datatFimVigencia
    flagAtivo: (NSNumber*) flagAtivo
    revDate: (NSString*) revDate
    revType: (NSString*) revType
    revUser: (NSString*) revUser
    completionHandler: (void (^)(PierPageOprtunidadeAUD* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/auditorias-oportunidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (idStatusOportunidade != nil) {
        
        queryParams[@"idStatusOportunidade"] = idStatusOportunidade;
    }
    if (dataCadastro != nil) {
        
        queryParams[@"dataCadastro"] = dataCadastro;
    }
    if (dataAtualizacao != nil) {
        
        queryParams[@"dataAtualizacao"] = dataAtualizacao;
    }
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
    }
    if (dataInicioVigencia != nil) {
        
        queryParams[@"dataInicioVigencia"] = dataInicioVigencia;
    }
    if (datatFimVigencia != nil) {
        
        queryParams[@"datatFimVigencia"] = datatFimVigencia;
    }
    if (flagAtivo != nil) {
        
        queryParams[@"flagAtivo"] = flagAtivo;
    }
    if (revDate != nil) {
        
        queryParams[@"revDate"] = revDate;
    }
    if (revType != nil) {
        
        queryParams[@"revType"] = revType;
    }
    if (revUser != nil) {
        
        queryParams[@"revUser"] = revUser;
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
                              responseType: @"PierPageOprtunidadeAUD*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageOprtunidadeAUD*)data, error);
                           }
          ];
}

///
/// Lista as auditorias dos tipos oportunidades
/// Este recurso permite listar os tipos oportunidades.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param revType C\u00C3\u00B3digo que representa o tipo de a\u00C3\u00A7\u00C3\u00A3o realizada no recurso de tipos oportunidades (optional)
///
///  @param revDate Data da a\u00C3\u00A7\u00C3\u00A3o realizada no recurso de tipos oportunidades (optional)
///
///  @param _id C\u00C3\u00B3digo identificador do tipo oportunidade no qual foi realizado a a\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade no qual foi realizado a a\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param flagAtivo Atributo que representa se o tipo oportunidade est\u00C3\u00A1 ativo (optional)
///
///  @param revUser Usu\u00C3\u00A1rio da auditoria (optional)
///
///  @returns PierPageTipoOprtunidadesAUD*
///
-(NSNumber*) listarAuditoriasUsingGET1WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    revType: (NSNumber*) revType
    revDate: (NSString*) revDate
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    flagAtivo: (NSNumber*) flagAtivo
    revUser: (NSString*) revUser
    completionHandler: (void (^)(PierPageTipoOprtunidadesAUD* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/auditorias-tipos-oportunidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (revType != nil) {
        
        queryParams[@"revType"] = revType;
    }
    if (revDate != nil) {
        
        queryParams[@"revDate"] = revDate;
    }
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (flagAtivo != nil) {
        
        queryParams[@"flagAtivo"] = flagAtivo;
    }
    if (revUser != nil) {
        
        queryParams[@"revUser"] = revUser;
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
                              responseType: @"PierPageTipoOprtunidadesAUD*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoOprtunidadesAUD*)data, error);
                           }
          ];
}

///
/// Lista os status do tipo oportunidades
/// Este recurso permite listar os status do tipo oportunidades.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (id). 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param nome Nome do status oportunidade (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do status oportunidade (optional)
///
///  @param flagAtivo Flag de verifica\u00C3\u00A7\u00C3\u00A3o se o status oportunidade est\u00C3\u00A1 ativo (optional)
///
///  @returns PierPageStatusOprtunidades*
///
-(NSNumber*) listarStatusUsingGETWithId: (NSNumber*) _id
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageStatusOprtunidades* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarStatusUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades/{id}/status"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
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
                              responseType: @"PierPageStatusOprtunidades*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusOprtunidades*)data, error);
                           }
          ];
}

///
/// Lista as oportunidades
/// Este recurso permite listar as oportunidades.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idStatusOportunidade C\u00C3\u00B3digo identificador do status oportunidade (optional)
///
///  @param dataCadastro Data do cadastro da oportunidade (optional)
///
///  @param dataAtualizacao Data da atualiza\u00C3\u00A7\u00C3\u00A3o da oportunidade (optional)
///
///  @param numeroReceitaFederal N\u00C3\u00BAmero receita federal do cliente ao qual ser\u00C3\u00A1 ofertada a oportunidade (optional)
///
///  @param dataInicioVigencia Data de in\u00C3\u00ADcio da vig\u00C3\u00AAncia da oportunidade (optional)
///
///  @param dataFimVigencia Data do fim da vig\u00C3\u00AAncia da oportunidade (optional)
///
///  @param flagAtivo Flag de verifica\u00C3\u00A7\u00C3\u00A3o se a oportunidade est\u00C3\u00A1 ativa (optional)
///
///  @returns PierPageOprtunidadesResponse*
///
-(NSNumber*) listarUsingGET12WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idStatusOportunidade: (NSNumber*) idStatusOportunidade
    dataCadastro: (NSString*) dataCadastro
    dataAtualizacao: (NSString*) dataAtualizacao
    numeroReceitaFederal: (NSString*) numeroReceitaFederal
    dataInicioVigencia: (NSString*) dataInicioVigencia
    dataFimVigencia: (NSString*) dataFimVigencia
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageOprtunidadesResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/oportunidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (idStatusOportunidade != nil) {
        
        queryParams[@"idStatusOportunidade"] = idStatusOportunidade;
    }
    if (dataCadastro != nil) {
        
        queryParams[@"dataCadastro"] = dataCadastro;
    }
    if (dataAtualizacao != nil) {
        
        queryParams[@"dataAtualizacao"] = dataAtualizacao;
    }
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
    }
    if (dataInicioVigencia != nil) {
        
        queryParams[@"dataInicioVigencia"] = dataInicioVigencia;
    }
    if (dataFimVigencia != nil) {
        
        queryParams[@"dataFimVigencia"] = dataFimVigencia;
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
                              responseType: @"PierPageOprtunidadesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageOprtunidadesResponse*)data, error);
                           }
          ];
}

///
/// Lista os tipos oportunidades
/// Este recurso permite listar os tipos oportunidades.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (optional)
///
///  @param flagAtivo Flag de verifica\u00C3\u00A7\u00C3\u00A3o se o tipo oportunidade est\u00C3\u00A1 ativo (optional)
///
///  @returns PierPageTipoOprtunidades*
///
-(NSNumber*) listarUsingGET24WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    descricao: (NSString*) descricao
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageTipoOprtunidades* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
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
                              responseType: @"PierPageTipoOprtunidades*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoOprtunidades*)data, error);
                           }
          ];
}

///
/// Cadastra status para o tipo oportunidade
/// Esse recurso permite cadastrar status para o tipo oportunidade.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo oportunidade (id). 
///
///  @param persist persist 
///
///  @returns PierStatusOportunidadeResponse*
///
-(NSNumber*) salvarStatusUsingPOSTWithId: (NSNumber*) _id
    persist: (PierStatusOportunidade*) persist
    completionHandler: (void (^)(PierStatusOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `salvarStatusUsingPOST`"];
    }
    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarStatusUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades/{id}/status"];

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
                              responseType: @"PierStatusOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Cadastra tipos oportunidades
/// Esse recurso permite cadastrar tipos oportunidades.
///  @param persist persist 
///
///  @returns PierTipoOportunidadeResponse*
///
-(NSNumber*) salvarUsingPOST11WithPersist: (PierTipoOportunidade*) persist
    completionHandler: (void (^)(PierTipoOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarUsingPOST11`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-oportunidades"];

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
                              responseType: @"PierTipoOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoOportunidadeResponse*)data, error);
                           }
          ];
}

///
/// Cadastra as oportunidade
/// Esse recurso permite cadastrar oportunidades.
///  @param persist persist 
///
///  @returns PierOportunidadeResponse*
///
-(NSNumber*) salvarUsingPOST6WithPersist: (PierOportunidadePersist*) persist
    completionHandler: (void (^)(PierOportunidadeResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `salvarUsingPOST6`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/oportunidades"];

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
                              responseType: @"PierOportunidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOportunidadeResponse*)data, error);
                           }
          ];
}



@end
