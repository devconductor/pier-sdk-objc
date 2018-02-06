#import "PierEstabelecimentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierOrigemComercialResponse.h"
#import "PierOrigemComercialUpdate.h"
#import "PierMaquinetaResponse.h"
#import "PierMaquinetaUpdate.h"
#import "PierOperacaoCredorUpdate.h"
#import "PierOperacaoCredorResponse.h"
#import "PierTelefoneEstabelecimentoResponse.h"
#import "PierTerminalResponse.h"
#import "PierTerminalUpdate.h"
#import "PierEstabelecimentoUpdate.h"
#import "PierEstabelecimentoResponse.h"
#import "PierGrupoEconomicoResponse.h"
#import "PierGrupoEconomicoDTO.h"
#import "PierOrigemComercialPersist.h"
#import "PierEstabelecimentoPersist.h"
#import "PierDetalheOperacaoResponse.h"
#import "PierVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierVinculoOperacaoPersist.h"
#import "PierPageOperacaoResponse.h"
#import "PierPageMCCResponse.h"
#import "PierPageOrigemComercialResponse.h"
#import "PierPageEntidadeResponse.h"
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierPageTipoTerminalResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPageGrupoEconomicoResponse.h"
#import "PierPageMaquinetaResponse.h"
#import "PierPageMoedaResponse.h"
#import "PierPageOperacaoCredorResponse.h"
#import "PierPageTelefoneEstabelecimentoResponse.h"
#import "PierPageTerminalResponse.h"
#import "PierPageVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierPageVinculoOperacaoResponse.h"
#import "PierMaquinetaPersist.h"
#import "PierOperacaoCredorPersist.h"
#import "PierTerminalPersist.h"
#import "PierVinculoEstabelecimentoAdquirentePersist.h"


@interface PierEstabelecimentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierEstabelecimentoApi

static PierEstabelecimentoApi* singletonAPI = nil;

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

+(PierEstabelecimentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEstabelecimentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierEstabelecimentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEstabelecimentoApi alloc] init];
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
/// Alterar Origem Comercial
/// Altera uma origem comercial.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da origem comercial 
///
///  @param origemComercialUpdate origemComercialUpdate 
///
///  @returns PierOrigemComercialResponse*
///
-(NSNumber*) alterarOrigemComercialUsingPUTWithId: (NSNumber*) _id
    origemComercialUpdate: (PierOrigemComercialUpdate*) origemComercialUpdate
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarOrigemComercialUsingPUT`"];
    }
    
    // verify the required parameter 'origemComercialUpdate' is set
    if (origemComercialUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `origemComercialUpdate` when calling `alterarOrigemComercialUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/origens-comerciais/{id}"];

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
    
    bodyParam = origemComercialUpdate;
    

    
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
                              responseType: @"PierOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// Altera uma Maquineta
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o das maquinetas dos estabelecimentos.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Maquineta (id). 
///
///  @param maquinetaUpdate maquinetaUpdate 
///
///  @returns PierMaquinetaResponse*
///
-(NSNumber*) alterarUsingPUT10WithId: (NSNumber*) _id
    maquinetaUpdate: (PierMaquinetaUpdate*) maquinetaUpdate
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT10`"];
    }
    
    // verify the required parameter 'maquinetaUpdate' is set
    if (maquinetaUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `maquinetaUpdate` when calling `alterarUsingPUT10`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/maquinetas/{id}"];

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
    
    bodyParam = maquinetaUpdate;
    

    
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
                              responseType: @"PierMaquinetaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierMaquinetaResponse*)data, error);
                           }
          ];
}

///
/// Altera uma Regra Opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o de uma regra opera\u00C3\u00A7\u00C3\u00A3o.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Regra Opera\u00C3\u00A7\u00C3\u00A3o (id). 
///
///  @param operacaoCredorUpdate operacaoCredorUpdate 
///
///  @returns PierOperacaoCredorResponse*
///
-(NSNumber*) alterarUsingPUT11WithId: (NSNumber*) _id
    operacaoCredorUpdate: (PierOperacaoCredorUpdate*) operacaoCredorUpdate
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT11`"];
    }
    
    // verify the required parameter 'operacaoCredorUpdate' is set
    if (operacaoCredorUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `operacaoCredorUpdate` when calling `alterarUsingPUT11`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/regras-operacoes-estabelecimentos/{id}"];

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
    
    bodyParam = operacaoCredorUpdate;
    

    
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
                              responseType: @"PierOperacaoCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOperacaoCredorResponse*)data, error);
                           }
          ];
}

///
/// Altera um Telefone do estabelecimento
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos telefones dos estabelecimentos.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone Estabelecimento (id). 
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). 
///
///  @param telefone N\u00C3\u00BAmero do telefone. 
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) alterarUsingPUT15WithId: (NSNumber*) _id
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT15`"];
    }
    
    // verify the required parameter 'ddd' is set
    if (ddd == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `ddd` when calling `alterarUsingPUT15`"];
    }
    
    // verify the required parameter 'telefone' is set
    if (telefone == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `telefone` when calling `alterarUsingPUT15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
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
                              responseType: @"PierTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Altera um Terminal
/// Este m\u00C3\u00A9todo realiza a altera\u00C3\u00A7\u00C3\u00A3o dos Terminais.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal (id). 
///
///  @param terminalUpdate terminalUpdate 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) alterarUsingPUT17WithId: (NSNumber*) _id
    terminalUpdate: (PierTerminalUpdate*) terminalUpdate
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT17`"];
    }
    
    // verify the required parameter 'terminalUpdate' is set
    if (terminalUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `terminalUpdate` when calling `alterarUsingPUT17`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais/{id}"];

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
    
    bodyParam = terminalUpdate;
    

    
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
                              responseType: @"PierTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminalResponse*)data, error);
                           }
          ];
}

///
/// Alterar um estabelecimento
/// Altera um estabelecimento
///  @param _id Id 
///
///  @param update update 
///
///  @returns PierEstabelecimentoResponse*
///
-(NSNumber*) alterarUsingPUT6WithId: (NSNumber*) _id
    update: (PierEstabelecimentoUpdate*) update
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT6`"];
    }
    
    // verify the required parameter 'update' is set
    if (update == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `update` when calling `alterarUsingPUT6`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}"];

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
                              responseType: @"PierEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Alterar Grupo Econ\u00C3\u00B4mico
/// Altera um grupo econ\u00C3\u00B4mico.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do grupo econ\u00C3\u00B4mico 
///
///  @param grupoEconomicoDTO grupoEconomicoDTO 
///
///  @returns PierGrupoEconomicoResponse*
///
-(NSNumber*) alterarUsingPUT8WithId: (NSNumber*) _id
    grupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT8`"];
    }
    
    // verify the required parameter 'grupoEconomicoDTO' is set
    if (grupoEconomicoDTO == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `grupoEconomicoDTO` when calling `alterarUsingPUT8`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/grupos-economicos/{id}"];

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
    
    bodyParam = grupoEconomicoDTO;
    

    
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
                              responseType: @"PierGrupoEconomicoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierGrupoEconomicoResponse*)data, error);
                           }
          ];
}

///
/// Cadastrar Origem Comercial
/// Cadastra uma origem comercial.
///  @param origemComercialPersist origemComercialPersist 
///
///  @returns PierOrigemComercialResponse*
///
-(NSNumber*) cadastrarOrigemComercialUsingPOSTWithOrigemComercialPersist: (PierOrigemComercialPersist*) origemComercialPersist
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'origemComercialPersist' is set
    if (origemComercialPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `origemComercialPersist` when calling `cadastrarOrigemComercialUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/origens-comerciais"];

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
    
    bodyParam = origemComercialPersist;
    

    
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
                              responseType: @"PierOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// Cadastrar um estabelecimento
/// Cadastra um novo estabelecimento
///  @param persist persist 
///
///  @returns PierEstabelecimentoResponse*
///
-(NSNumber*) cadastrarUsingPOST2WithPersist: (PierEstabelecimentoPersist*) persist
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `cadastrarUsingPOST2`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos"];

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
                              responseType: @"PierEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Cadastrar Grupo Econ\u00C3\u00B4mico
/// Cadastra um grupo econ\u00C3\u00B4mico.
///  @param grupoEconomicoDTO GrupoEconomicoDTO 
///
///  @returns PierGrupoEconomicoResponse*
///
-(NSNumber*) cadastrarUsingPOST3WithGrupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'grupoEconomicoDTO' is set
    if (grupoEconomicoDTO == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `grupoEconomicoDTO` when calling `cadastrarUsingPOST3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/grupos-economicos"];

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
    
    bodyParam = grupoEconomicoDTO;
    

    
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
                              responseType: @"PierGrupoEconomicoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierGrupoEconomicoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta dados de um determinado tipo de opera\u00C3\u00A7\u00C3\u00A3o
/// Este recurso permite consultar dados de um determinado tipo opera\u00C3\u00A7\u00C3\u00A3o a partir do idoperacao
///  @param _id C\u00C3\u00B3digo de processamento da opera\u00C3\u00A7\u00C3\u00A3o (idOperacao). 
///
///  @returns PierDetalheOperacaoResponse*
///
-(NSNumber*) consultaOperacaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierDetalheOperacaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultaOperacaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-operacoes-estabelecimentos/{id}"];

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
                              responseType: @"PierDetalheOperacaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierDetalheOperacaoResponse*)data, error);
                           }
          ];
}

///
/// Consultar Origem Comercial
/// Consulta uma origem comercial atrav\u00C3\u00A9s do seu identificador.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da origem comercial 
///
///  @returns PierOrigemComercialResponse*
///
-(NSNumber*) consultarOrigemComercialUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarOrigemComercialUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/origens-comerciais/{id}"];

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
                              responseType: @"PierOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// Consultar estabelecimento por id
/// Consulta os detalhes de um determinado estabelecimento
///  @param _id Id 
///
///  @returns PierEstabelecimentoResponse*
///
-(NSNumber*) consultarUsingGET15WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}"];

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
                              responseType: @"PierEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Consultar grupo econ\u00C3\u00B4mico
/// Consulta um grupo econ\u00C3\u00B4mico atrav\u00C3\u00A9s do seu identificador.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do grupo econ\u00C3\u00B4mico 
///
///  @returns PierGrupoEconomicoResponse*
///
-(NSNumber*) consultarUsingGET17WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET17`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/grupos-economicos/{id}"];

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
                              responseType: @"PierGrupoEconomicoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierGrupoEconomicoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de uma determinada maquineta
/// Este m\u00C3\u00A9todo permite consultar uma determinada maquineta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Maquineta (id). 
///
///  @returns PierMaquinetaResponse*
///
-(NSNumber*) consultarUsingGET19WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/maquinetas/{id}"];

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
                              responseType: @"PierMaquinetaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierMaquinetaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de uma determinada Regra Opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar uma determinada regra opera\u00C3\u00A7\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Regra Opera\u00C3\u00A7\u00C3\u00A3o (id). 
///
///  @returns PierOperacaoCredorResponse*
///
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET20`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/regras-operacoes-estabelecimentos/{id}"];

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
                              responseType: @"PierOperacaoCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOperacaoCredorResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado telefone de um estabelecimento
/// Este m\u00C3\u00A9todo permite consultar um determinado telefone de um estabelecimento a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone Estabelecimento (id). 
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) consultarUsingGET28WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET28`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos/{id}"];

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
                              responseType: @"PierTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Terminal
/// Este m\u00C3\u00A9todo permite consultar um determinado Terminal a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) consultarUsingGET30WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET30`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais/{id}"];

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
                              responseType: @"PierTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminalResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado V\u00C3\u00ADnculo
/// Este m\u00C3\u00A9todo permite consultar um determinado V\u00C3\u00ADnculo a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do V\u00C3\u008Dnculo (id). 
///
///  @returns PierVinculoEstabelecimentoAdquirenteResponse*
///
-(NSNumber*) consultarUsingGET42WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET42`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/adquirentes-estabelecimento/{id}"];

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
                              responseType: @"PierVinculoEstabelecimentoAdquirenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierVinculoEstabelecimentoAdquirenteResponse*)data, error);
                           }
          ];
}

///
/// Desabilitar um V\u00C3\u00ADnculo
/// Este m\u00C3\u00A9todo realiza a desativa\u00C3\u00A7\u00C3\u00A3o de um v\u00C3\u00ADnculo.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do V\u00C3\u00ADnculo (id). 
///
///  @returns NSObject*
///
-(NSNumber*) desabilitarVinculoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desabilitarVinculoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/adquirentes-estabelecimento/{id}/desabilitar"];

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}

///
/// Desabilitar um v\u00C3\u00ADnculo opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite desabilitar um v\u00C3\u00ADnculo.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id). 
///
///  @param vinculoOperacaoPersist vinculoOperacaoPersist 
///
///  @returns NSObject*
///
-(NSNumber*) desabilitarVinculoUsingPOST1WithId: (NSNumber*) _id
    vinculoOperacaoPersist: (PierVinculoOperacaoPersist*) vinculoOperacaoPersist
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desabilitarVinculoUsingPOST1`"];
    }
    
    // verify the required parameter 'vinculoOperacaoPersist' is set
    if (vinculoOperacaoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `vinculoOperacaoPersist` when calling `desabilitarVinculoUsingPOST1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}/desabilitar-operacao"];

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
    
    bodyParam = vinculoOperacaoPersist;
    

    
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
/// Habilitar um V\u00C3\u00ADnculo
/// Este m\u00C3\u00A9todo realiza a ativa\u00C3\u00A7\u00C3\u00A3o de um v\u00C3\u00ADnculo.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do V\u00C3\u00ADnculo (id). 
///
///  @returns NSObject*
///
-(NSNumber*) habilitarVinculoUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `habilitarVinculoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/adquirentes-estabelecimento/{id}/habilitar"];

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}

///
/// Habilitar um v\u00C3\u00ADnculo opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite habilitar um v\u00C3\u00ADnculo.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id). 
///
///  @param vinculoOperacaoPersist vinculoOperacaoPersist 
///
///  @returns NSObject*
///
-(NSNumber*) habilitarVinculoUsingPOST1WithId: (NSNumber*) _id
    vinculoOperacaoPersist: (PierVinculoOperacaoPersist*) vinculoOperacaoPersist
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `habilitarVinculoUsingPOST1`"];
    }
    
    // verify the required parameter 'vinculoOperacaoPersist' is set
    if (vinculoOperacaoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `vinculoOperacaoPersist` when calling `habilitarVinculoUsingPOST1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}/habilitar-operacao"];

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
    
    bodyParam = vinculoOperacaoPersist;
    

    
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
/// Apresenta dados de opera\u00C3\u00A7\u00C3\u00B5es em uma lista
/// Este recurso permite listar as opera\u00C3\u00A7\u00C3\u00A3o
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idOperacao C\u00C3\u00B3digo que identifica a opera\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param codigoProcessamento C\u00C3\u00B3digo de processamento usado em transa\u00C3\u00A7\u00C3\u00B5es com o autorizador (optional)
///
///  @returns PierPageOperacaoResponse*
///
-(NSNumber*) listaOperacaoUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idOperacao: (NSNumber*) idOperacao
    codigoProcessamento: (NSString*) codigoProcessamento
    completionHandler: (void (^)(PierPageOperacaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-operacoes-estabelecimentos"];

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
    if (idOperacao != nil) {
        
        queryParams[@"idOperacao"] = idOperacao;
    }
    if (codigoProcessamento != nil) {
        
        queryParams[@"codigoProcessamento"] = codigoProcessamento;
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
                              responseType: @"PierPageOperacaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageOperacaoResponse*)data, error);
                           }
          ];
}

///
/// Lista os MCCs
/// Este m\u00C3\u00A9todo permite que sejam listados os MCCs existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageMCCResponse*
///
-(NSNumber*) listarMCCUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageMCCResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/mcc-estabelecimentos"];

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
                              responseType: @"PierPageMCCResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageMCCResponse*)data, error);
                           }
          ];
}

///
/// Listar Origens Comerciais
/// Lista origens comerciais cadastradas.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id Id da origem comercial (optional)
///
///  @param nome Nome da origem comercial (optional)
///
///  @param status Indica o status da origem comercial (optional)
///
///  @param idEstabelecimento Identificador do estabelecimento (optional)
///
///  @param idProduto Identificador do produto (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o da origem comercial (optional)
///
///  @param idTipoOrigemComercial Identificador do tipo de origem comercial (optional)
///
///  @param idGrupoOrigemComercial Identificador do grupo de origem comercial (optional)
///
///  @param flagPreAprovado Indica se permite pr\u00C3\u00A9 aprova\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param flagAprovacaoImediata Indica se permite aprova\u00C3\u00A7\u00C3\u00A3o imediata (optional)
///
///  @param nomeFantasiaPlastico Nome fantasia impresso no pl\u00C3\u00A1stico (optional)
///
///  @param flagCartaoProvisorio Indica se permite cart\u00C3\u00A3o provis\u00C3\u00B3rio (optional)
///
///  @param flagCartaoDefinitivo Indica se permite cart\u00C3\u00A3o definitivo (optional)
///
///  @param usuario Usu\u00C3\u00A1rio para autentica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param senha Senha para autentica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param flagOrigemExterna Indica se \u00C3\u00A9 origem externa (optional)
///
///  @param flagModificado Indica se h\u00C3\u00A1 modifica\u00C3\u00A7\u00C3\u00A3o (optional)
///
///  @param flagEnviaFaturaUsuario Indica se envia fatura (optional)
///
///  @param flagCreditoFaturamento Indica se permite cr\u00C3\u00A9dito de faturamento (optional)
///
///  @param flagConcedeLimiteProvisorio Indica se concede limite provis\u00C3\u00B3rio (optional)
///
///  @param flagDigitalizarDoc Indica se digitaliza documento (optional)
///
///  @param flagEmbossingLoja Indica se realiza embossing em loja (optional)
///
///  @param flagConsultaPrevia Indica se realiza consulta pr\u00C3\u00A9via (optional)
///
///  @param tipoPessoa Tipo de pessoa (optional)
///
///  @returns PierPageOrigemComercialResponse*
///
-(NSNumber*) listarOrigensComerciaisUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    status: (NSNumber*) status
    idEstabelecimento: (NSNumber*) idEstabelecimento
    idProduto: (NSNumber*) idProduto
    descricao: (NSString*) descricao
    idTipoOrigemComercial: (NSNumber*) idTipoOrigemComercial
    idGrupoOrigemComercial: (NSNumber*) idGrupoOrigemComercial
    flagPreAprovado: (NSNumber*) flagPreAprovado
    flagAprovacaoImediata: (NSNumber*) flagAprovacaoImediata
    nomeFantasiaPlastico: (NSString*) nomeFantasiaPlastico
    flagCartaoProvisorio: (NSNumber*) flagCartaoProvisorio
    flagCartaoDefinitivo: (NSNumber*) flagCartaoDefinitivo
    usuario: (NSString*) usuario
    senha: (NSString*) senha
    flagOrigemExterna: (NSNumber*) flagOrigemExterna
    flagModificado: (NSNumber*) flagModificado
    flagEnviaFaturaUsuario: (NSNumber*) flagEnviaFaturaUsuario
    flagCreditoFaturamento: (NSNumber*) flagCreditoFaturamento
    flagConcedeLimiteProvisorio: (NSNumber*) flagConcedeLimiteProvisorio
    flagDigitalizarDoc: (NSNumber*) flagDigitalizarDoc
    flagEmbossingLoja: (NSNumber*) flagEmbossingLoja
    flagConsultaPrevia: (NSNumber*) flagConsultaPrevia
    tipoPessoa: (NSString*) tipoPessoa
    completionHandler: (void (^)(PierPageOrigemComercialResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/origens-comerciais"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (idTipoOrigemComercial != nil) {
        
        queryParams[@"idTipoOrigemComercial"] = idTipoOrigemComercial;
    }
    if (idGrupoOrigemComercial != nil) {
        
        queryParams[@"idGrupoOrigemComercial"] = idGrupoOrigemComercial;
    }
    if (flagPreAprovado != nil) {
        
        queryParams[@"flagPreAprovado"] = flagPreAprovado;
    }
    if (flagAprovacaoImediata != nil) {
        
        queryParams[@"flagAprovacaoImediata"] = flagAprovacaoImediata;
    }
    if (nomeFantasiaPlastico != nil) {
        
        queryParams[@"nomeFantasiaPlastico"] = nomeFantasiaPlastico;
    }
    if (flagCartaoProvisorio != nil) {
        
        queryParams[@"flagCartaoProvisorio"] = flagCartaoProvisorio;
    }
    if (flagCartaoDefinitivo != nil) {
        
        queryParams[@"flagCartaoDefinitivo"] = flagCartaoDefinitivo;
    }
    if (usuario != nil) {
        
        queryParams[@"usuario"] = usuario;
    }
    if (senha != nil) {
        
        queryParams[@"senha"] = senha;
    }
    if (flagOrigemExterna != nil) {
        
        queryParams[@"flagOrigemExterna"] = flagOrigemExterna;
    }
    if (flagModificado != nil) {
        
        queryParams[@"flagModificado"] = flagModificado;
    }
    if (flagEnviaFaturaUsuario != nil) {
        
        queryParams[@"flagEnviaFaturaUsuario"] = flagEnviaFaturaUsuario;
    }
    if (flagCreditoFaturamento != nil) {
        
        queryParams[@"flagCreditoFaturamento"] = flagCreditoFaturamento;
    }
    if (flagConcedeLimiteProvisorio != nil) {
        
        queryParams[@"flagConcedeLimiteProvisorio"] = flagConcedeLimiteProvisorio;
    }
    if (flagDigitalizarDoc != nil) {
        
        queryParams[@"flagDigitalizarDoc"] = flagDigitalizarDoc;
    }
    if (flagEmbossingLoja != nil) {
        
        queryParams[@"flagEmbossingLoja"] = flagEmbossingLoja;
    }
    if (flagConsultaPrevia != nil) {
        
        queryParams[@"flagConsultaPrevia"] = flagConsultaPrevia;
    }
    if (tipoPessoa != nil) {
        
        queryParams[@"tipoPessoa"] = tipoPessoa;
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
                              responseType: @"PierPageOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// Lista os Tipos de adquirentes
/// Este m\u00C3\u00A9todo permite que sejam listados os tipos de adquirentes.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageEntidadeResponse*
///
-(NSNumber*) listarTiposAdquirentesUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageEntidadeResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-adquirentes"];

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
                              responseType: @"PierPageEntidadeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEntidadeResponse*)data, error);
                           }
          ];
}

///
/// Lista os Tipos de  Maquinetas
/// Este m\u00C3\u00A9todo permite que sejam listadas os Tipos de maquinetas existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageCampoCodificadoDescricaoResponse*
///
-(NSNumber*) listarTiposMaquinetasUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-maquinetas"];

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
                              responseType: @"PierPageCampoCodificadoDescricaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCampoCodificadoDescricaoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Tipos Terminais
/// Este m\u00C3\u00A9todo permite que sejam listados os tipos de terminais existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageTipoTerminalResponse*
///
-(NSNumber*) listarTiposTerminaisUsingGET1WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageTipoTerminalResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-terminais-estabelecimento"];

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
                              responseType: @"PierPageTipoTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoTerminalResponse*)data, error);
                           }
          ];
}

///
/// Lista Estabelecimentos
/// Lista todas os Estabelecimentos
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id). (optional)
///
///  @param idCredor Apresenta o n\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Credor. (optional)
///
///  @param numeroReceitaFederal Apresenta o n\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento na Receita Federal. (optional)
///
///  @param nome Nome do Estabelecimento. (optional)
///
///  @param descricao Raz\u00C3\u00A3o Social do Estabelecimento. (optional)
///
///  @param nomeFantasia T\u00C3\u00ADtulo Comercial do Estabelecimento. (optional)
///
///  @param cep C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP). (optional)
///
///  @param nomeLogradouro Nome do Logradouro. (optional)
///
///  @param numeroEndereco N\u00C3\u00BAmero do endere\u00C3\u00A7o. (optional)
///
///  @param complemento Descri\u00C3\u00A7\u00C3\u00B5es complementares referente ao endere\u00C3\u00A7o. (optional)
///
///  @param bairro Nome do bairro do endere\u00C3\u00A7o. (optional)
///
///  @param cidade Nome da cidade do endere\u00C3\u00A7o. (optional)
///
///  @param uf Sigla de identifica\u00C3\u00A7\u00C3\u00A3o da Unidade Federativa do endere\u00C3\u00A7o. (optional)
///
///  @param pais Nome do pa\u00C3\u00ADs. (optional)
///
///  @param dataCadastramento Data de Cadastro do Estabelecimento, no formato yyyy-MM-dd. (optional)
///
///  @param contato Nome da pessoa para contato com o Estabelecimento. (optional)
///
///  @param email E-mail da pessoa para contato com o Estabelecimento. (optional)
///
///  @param flagArquivoSecrFazenda Indica se o estabelecimento ser\u00C3\u00A1 inclu\u00C3\u00ADdo no arquivo de registro para a Secretaria da Fazenda Estadual. (optional)
///
///  @param flagCartaoDigitado Indica se o estabelecimento poder\u00C3\u00A1 originar transa\u00C3\u00A7\u00C3\u00B5es sem a leitura da tarja ou do chip do cart\u00C3\u00A3o. (optional)
///
///  @param inativo Indica se o estabelecimento est\u00C3\u00A1 inativo. (optional)
///
///  @param idPais Identificador de Pa\u00C3\u00ADs. (optional)
///
///  @param mcc C\u00C3\u00B3digo de Categoria de Mercado (optional)
///
///  @param idTipoEstabelecimento C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento. (optional)
///
///  @param idMoeda C\u00C3\u00B3digo identificador da moeda. (optional)
///
///  @param tipoPagamento Tipo do regime de pagamento do estabelecimento. (optional)
///
///  @param numeroEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento na Conductor. (optional)
///
///  @param cep2 C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP). (optional)
///
///  @param nomeLogradouro2 Nome do Logradouro. (optional)
///
///  @param numeroEndereco2 N\u00C3\u00BAmero do endere\u00C3\u00A7o. (optional)
///
///  @param complemento2 Descri\u00C3\u00A7\u00C3\u00B5es complementares referente ao endere\u00C3\u00A7o. (optional)
///
///  @param bairro2 Nome do bairro do endere\u00C3\u00A7o. (optional)
///
///  @param cidade2 Nome da cidade do endere\u00C3\u00A7o. (optional)
///
///  @param uf2 Sigla de identifica\u00C3\u00A7\u00C3\u00A3o da Unidade Federativa do endere\u00C3\u00A7o. (optional)
///
///  @param flagMatriz Indica se \u00C3\u00A9 matriz ou filial. (optional)
///
///  @returns PierPageEstabelecimentoResponse*
///
-(NSNumber*) listarUsingGET19WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idCredor: (NSNumber*) idCredor
    numeroReceitaFederal: (NSString*) numeroReceitaFederal
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    nomeFantasia: (NSString*) nomeFantasia
    cep: (NSString*) cep
    nomeLogradouro: (NSString*) nomeLogradouro
    numeroEndereco: (NSNumber*) numeroEndereco
    complemento: (NSString*) complemento
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    dataCadastramento: (NSString*) dataCadastramento
    contato: (NSString*) contato
    email: (NSString*) email
    flagArquivoSecrFazenda: (NSNumber*) flagArquivoSecrFazenda
    flagCartaoDigitado: (NSNumber*) flagCartaoDigitado
    inativo: (NSNumber*) inativo
    idPais: (NSNumber*) idPais
    mcc: (NSNumber*) mcc
    idTipoEstabelecimento: (NSNumber*) idTipoEstabelecimento
    idMoeda: (NSNumber*) idMoeda
    tipoPagamento: (NSString*) tipoPagamento
    numeroEstabelecimento: (NSString*) numeroEstabelecimento
    cep2: (NSString*) cep2
    nomeLogradouro2: (NSString*) nomeLogradouro2
    numeroEndereco2: (NSNumber*) numeroEndereco2
    complemento2: (NSString*) complemento2
    bairro2: (NSString*) bairro2
    cidade2: (NSString*) cidade2
    uf2: (NSString*) uf2
    flagMatriz: (NSNumber*) flagMatriz
    completionHandler: (void (^)(PierPageEstabelecimentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (idCredor != nil) {
        
        queryParams[@"idCredor"] = idCredor;
    }
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (nomeFantasia != nil) {
        
        queryParams[@"nomeFantasia"] = nomeFantasia;
    }
    if (cep != nil) {
        
        queryParams[@"cep"] = cep;
    }
    if (nomeLogradouro != nil) {
        
        queryParams[@"nomeLogradouro"] = nomeLogradouro;
    }
    if (numeroEndereco != nil) {
        
        queryParams[@"numeroEndereco"] = numeroEndereco;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
    }
    if (bairro != nil) {
        
        queryParams[@"bairro"] = bairro;
    }
    if (cidade != nil) {
        
        queryParams[@"cidade"] = cidade;
    }
    if (uf != nil) {
        
        queryParams[@"uf"] = uf;
    }
    if (pais != nil) {
        
        queryParams[@"pais"] = pais;
    }
    if (dataCadastramento != nil) {
        
        queryParams[@"dataCadastramento"] = dataCadastramento;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (flagArquivoSecrFazenda != nil) {
        
        queryParams[@"flagArquivoSecrFazenda"] = flagArquivoSecrFazenda;
    }
    if (flagCartaoDigitado != nil) {
        
        queryParams[@"flagCartaoDigitado"] = flagCartaoDigitado;
    }
    if (inativo != nil) {
        
        queryParams[@"inativo"] = inativo;
    }
    if (idPais != nil) {
        
        queryParams[@"idPais"] = idPais;
    }
    if (mcc != nil) {
        
        queryParams[@"mcc"] = mcc;
    }
    if (idTipoEstabelecimento != nil) {
        
        queryParams[@"idTipoEstabelecimento"] = idTipoEstabelecimento;
    }
    if (idMoeda != nil) {
        
        queryParams[@"idMoeda"] = idMoeda;
    }
    if (tipoPagamento != nil) {
        
        queryParams[@"tipoPagamento"] = tipoPagamento;
    }
    if (numeroEstabelecimento != nil) {
        
        queryParams[@"numeroEstabelecimento"] = numeroEstabelecimento;
    }
    if (cep2 != nil) {
        
        queryParams[@"cep2"] = cep2;
    }
    if (nomeLogradouro2 != nil) {
        
        queryParams[@"nomeLogradouro2"] = nomeLogradouro2;
    }
    if (numeroEndereco2 != nil) {
        
        queryParams[@"numeroEndereco2"] = numeroEndereco2;
    }
    if (complemento2 != nil) {
        
        queryParams[@"complemento2"] = complemento2;
    }
    if (bairro2 != nil) {
        
        queryParams[@"bairro2"] = bairro2;
    }
    if (cidade2 != nil) {
        
        queryParams[@"cidade2"] = cidade2;
    }
    if (uf2 != nil) {
        
        queryParams[@"uf2"] = uf2;
    }
    if (flagMatriz != nil) {
        
        queryParams[@"flagMatriz"] = flagMatriz;
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
                              responseType: @"PierPageEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Listar grupos econ\u00C3\u00B4micos
/// Lista grupos econ\u00C3\u00B4micos cadastrados. 
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param razaoSocial Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param nomeCredor Nome do credor (optional)
///
///  @param numeroReceitaFederal N\u00C3\u00BAmero da Receita Federal (optional)
///
///  @param inscricaoEstadual N\u00C3\u00BAmero da inscri\u00C3\u00A7\u00C3\u00A3o estadual (optional)
///
///  @param contato Nome da pessoa para entrar em contato (optional)
///
///  @param banco C\u00C3\u00B3digo do banco (optional)
///
///  @param agencia Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica (optional)
///
///  @param digitoAgencia D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia (optional)
///
///  @param contaCorrente C\u00C3\u00B3digo da Conta Corrente (optional)
///
///  @param digitoContaCorrente D\u00C3\u00ADgito Verificador da Conta Corrente (optional)
///
///  @param periodicidade Periodicidade do pagamento (optional)
///
///  @param pagamentoSemanal Dia para pagamento semanal (optional)
///
///  @param pagamentoMensal Dia da data para o pagamento mensal (optional)
///
///  @param pagamentoDecendialPrimeiro Dia da data para o primeiro pagamento decendial (optional)
///
///  @param pagamentoDecendialSegundo Dia da data para o segundo pagamento decendial (optional)
///
///  @param pagamentoDecendialTerceiro Dia da data para o terceiro pagamento decendial (optional)
///
///  @param pagamentoQuinzenalPrimeiro Dia da data para o primeiro pagamento quinzenal (optional)
///
///  @param pagamentoQuinzenalSegundo Dia da data para o segundo pagamento quinzenal (optional)
///
///  @param percentualRAV Valor percentual do RAV do credor (optional)
///
///  @param recebeRAV Indica se o credor recebe RAV e o tipo (optional)
///
///  @param percentualMultiplica Percentual Multiplica (optional)
///
///  @param taxaAdm Taxa Administrativa (optional)
///
///  @param taxaBanco Taxa do Banco (optional)
///
///  @param limiteRAV Valor limite do RAV (optional)
///
///  @param idCredorRAV C\u00C3\u00B3digo identificador do credor RAV (optional)
///
///  @returns PierPageGrupoEconomicoResponse*
///
-(NSNumber*) listarUsingGET21WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    razaoSocial: (NSString*) razaoSocial
    nomeCredor: (NSString*) nomeCredor
    numeroReceitaFederal: (NSString*) numeroReceitaFederal
    inscricaoEstadual: (NSString*) inscricaoEstadual
    contato: (NSString*) contato
    banco: (NSNumber*) banco
    agencia: (NSNumber*) agencia
    digitoAgencia: (NSString*) digitoAgencia
    contaCorrente: (NSString*) contaCorrente
    digitoContaCorrente: (NSString*) digitoContaCorrente
    periodicidade: (NSString*) periodicidade
    pagamentoSemanal: (NSString*) pagamentoSemanal
    pagamentoMensal: (NSNumber*) pagamentoMensal
    pagamentoDecendialPrimeiro: (NSNumber*) pagamentoDecendialPrimeiro
    pagamentoDecendialSegundo: (NSNumber*) pagamentoDecendialSegundo
    pagamentoDecendialTerceiro: (NSNumber*) pagamentoDecendialTerceiro
    pagamentoQuinzenalPrimeiro: (NSNumber*) pagamentoQuinzenalPrimeiro
    pagamentoQuinzenalSegundo: (NSNumber*) pagamentoQuinzenalSegundo
    percentualRAV: (NSNumber*) percentualRAV
    recebeRAV: (NSString*) recebeRAV
    percentualMultiplica: (NSNumber*) percentualMultiplica
    taxaAdm: (NSNumber*) taxaAdm
    taxaBanco: (NSNumber*) taxaBanco
    limiteRAV: (NSNumber*) limiteRAV
    idCredorRAV: (NSNumber*) idCredorRAV
    completionHandler: (void (^)(PierPageGrupoEconomicoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/grupos-economicos"];

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
    if (razaoSocial != nil) {
        
        queryParams[@"razaoSocial"] = razaoSocial;
    }
    if (nomeCredor != nil) {
        
        queryParams[@"nomeCredor"] = nomeCredor;
    }
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
    }
    if (inscricaoEstadual != nil) {
        
        queryParams[@"inscricaoEstadual"] = inscricaoEstadual;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
    }
    if (agencia != nil) {
        
        queryParams[@"agencia"] = agencia;
    }
    if (digitoAgencia != nil) {
        
        queryParams[@"digitoAgencia"] = digitoAgencia;
    }
    if (contaCorrente != nil) {
        
        queryParams[@"contaCorrente"] = contaCorrente;
    }
    if (digitoContaCorrente != nil) {
        
        queryParams[@"digitoContaCorrente"] = digitoContaCorrente;
    }
    if (periodicidade != nil) {
        
        queryParams[@"periodicidade"] = periodicidade;
    }
    if (pagamentoSemanal != nil) {
        
        queryParams[@"pagamentoSemanal"] = pagamentoSemanal;
    }
    if (pagamentoMensal != nil) {
        
        queryParams[@"pagamentoMensal"] = pagamentoMensal;
    }
    if (pagamentoDecendialPrimeiro != nil) {
        
        queryParams[@"pagamentoDecendialPrimeiro"] = pagamentoDecendialPrimeiro;
    }
    if (pagamentoDecendialSegundo != nil) {
        
        queryParams[@"pagamentoDecendialSegundo"] = pagamentoDecendialSegundo;
    }
    if (pagamentoDecendialTerceiro != nil) {
        
        queryParams[@"pagamentoDecendialTerceiro"] = pagamentoDecendialTerceiro;
    }
    if (pagamentoQuinzenalPrimeiro != nil) {
        
        queryParams[@"pagamentoQuinzenalPrimeiro"] = pagamentoQuinzenalPrimeiro;
    }
    if (pagamentoQuinzenalSegundo != nil) {
        
        queryParams[@"pagamentoQuinzenalSegundo"] = pagamentoQuinzenalSegundo;
    }
    if (percentualRAV != nil) {
        
        queryParams[@"percentualRAV"] = percentualRAV;
    }
    if (recebeRAV != nil) {
        
        queryParams[@"recebeRAV"] = recebeRAV;
    }
    if (percentualMultiplica != nil) {
        
        queryParams[@"percentualMultiplica"] = percentualMultiplica;
    }
    if (taxaAdm != nil) {
        
        queryParams[@"taxaAdm"] = taxaAdm;
    }
    if (taxaBanco != nil) {
        
        queryParams[@"taxaBanco"] = taxaBanco;
    }
    if (limiteRAV != nil) {
        
        queryParams[@"limiteRAV"] = limiteRAV;
    }
    if (idCredorRAV != nil) {
        
        queryParams[@"idCredorRAV"] = idCredorRAV;
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
                              responseType: @"PierPageGrupoEconomicoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageGrupoEconomicoResponse*)data, error);
                           }
          ];
}

///
/// Lista as Maquinetas
/// Este m\u00C3\u00A9todo permite que sejam listadas as maquinetas existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Estabelecimento (id). (optional)
///
///  @returns PierPageMaquinetaResponse*
///
-(NSNumber*) listarUsingGET23WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageMaquinetaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/maquinetas"];

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
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
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
                              responseType: @"PierPageMaquinetaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageMaquinetaResponse*)data, error);
                           }
          ];
}

///
/// Lista os tipos de moedas do emissor 
/// Este recurso permite que sejam listados os tipos de moedas existentes na base de dados do emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param codigoMoeda C\u00C3\u00B3digo identificador do tipo de moeda. (optional)
///
///  @param simbolo S\u00C3\u00ADmbolo da Moeda. (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo da moeda. (optional)
///
///  @returns PierPageMoedaResponse*
///
-(NSNumber*) listarUsingGET24WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    codigoMoeda: (NSString*) codigoMoeda
    simbolo: (NSString*) simbolo
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageMoedaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-moedas"];

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
    if (codigoMoeda != nil) {
        
        queryParams[@"codigoMoeda"] = codigoMoeda;
    }
    if (simbolo != nil) {
        
        queryParams[@"simbolo"] = simbolo;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
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
                              responseType: @"PierPageMoedaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageMoedaResponse*)data, error);
                           }
          ];
}

///
/// Lista as Regras Opera\u00C3\u00A7\u00C3\u00B5es
/// Este m\u00C3\u00A9todo permite que sejam listados as Regras opera\u00C3\u00A7\u00C3\u00B5es existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idOperacao Apresenta o id da Opera\u00C3\u00A7\u00C3\u00A3o. (optional)
///
///  @param idCredor Apresenta o id do Credor. (optional)
///
///  @param idProduto Apresenta o id do produto que vai ser alterado. (optional)
///
///  @returns PierPageOperacaoCredorResponse*
///
-(NSNumber*) listarUsingGET25WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idOperacao: (NSNumber*) idOperacao
    idCredor: (NSNumber*) idCredor
    idProduto: (NSNumber*) idProduto
    completionHandler: (void (^)(PierPageOperacaoCredorResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/regras-operacoes-estabelecimentos"];

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
    if (idOperacao != nil) {
        
        queryParams[@"idOperacao"] = idOperacao;
    }
    if (idCredor != nil) {
        
        queryParams[@"idCredor"] = idCredor;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
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
                              responseType: @"PierPageOperacaoCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageOperacaoCredorResponse*)data, error);
                           }
          ];
}

///
/// Lista os Telefones Estabelecimentos
/// Este m\u00C3\u00A9todo permite que sejam listados os telefones dos estabelecimentos existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Estabelecimento (id). (optional)
///
///  @returns PierPageTelefoneEstabelecimentoResponse*
///
-(NSNumber*) listarUsingGET36WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos"];

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
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
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
                              responseType: @"PierPageTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Terminais cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os terminais existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). (optional)
///
///  @param terminal C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal. (optional)
///
///  @param numeroEstabelecimento N\u00C3\u00BAmero do estabelecimento a qual o terminal pertence. (optional)
///
///  @param idEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento a qual o terminal pertence. (optional)
///
///  @returns PierPageTerminalResponse*
///
-(NSNumber*) listarUsingGET38WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    terminal: (NSString*) terminal
    numeroEstabelecimento: (NSNumber*) numeroEstabelecimento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTerminalResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (terminal != nil) {
        
        queryParams[@"terminal"] = terminal;
    }
    if (numeroEstabelecimento != nil) {
        
        queryParams[@"numeroEstabelecimento"] = numeroEstabelecimento;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
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
                              responseType: @"PierPageTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTerminalResponse*)data, error);
                           }
          ];
}

///
/// Lista os V\u00C3\u00ADnculos dos estabelecimento com os adquirentes
/// Este m\u00C3\u00A9todo permite que sejam listados os V\u00C3\u00ADnculos dos estabelecimento com os adquirentes.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idAdquirente C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do adquirente (id). (optional)
///
///  @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento. (optional)
///
///  @param codigoEstabelecimentoAdquirente C\u00C3\u00B3digo do v\u00C3\u00ADnculo entre o estabelecimento e o adquirente. (optional)
///
///  @returns PierPageVinculoEstabelecimentoAdquirenteResponse*
///
-(NSNumber*) listarUsingGET49WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idAdquirente: (NSNumber*) idAdquirente
    idEstabelecimento: (NSNumber*) idEstabelecimento
    codigoEstabelecimentoAdquirente: (NSString*) codigoEstabelecimentoAdquirente
    completionHandler: (void (^)(PierPageVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/adquirentes-estabelecimento"];

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
    if (idAdquirente != nil) {
        
        queryParams[@"idAdquirente"] = idAdquirente;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
    }
    if (codigoEstabelecimentoAdquirente != nil) {
        
        queryParams[@"codigoEstabelecimentoAdquirente"] = codigoEstabelecimentoAdquirente;
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
                              responseType: @"PierPageVinculoEstabelecimentoAdquirenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageVinculoEstabelecimentoAdquirenteResponse*)data, error);
                           }
          ];
}

///
/// Lista os v\u00C3\u00ADnculos cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os v\u00C3\u00ADnculos opera\u00C3\u00A7\u00C3\u00B5es existentes na base de dados do Emissor.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id). 
///
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). (optional)
///
///  @param idOperacao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Opera\u00C3\u00A7\u00C3\u00A3o (id). (optional)
///
///  @param codigoMCC C\u00C3\u00B3digo MCC. (optional)
///
///  @returns PierPageVinculoOperacaoResponse*
///
-(NSNumber*) listarUsingGET50WithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    idOperacao: (NSNumber*) idOperacao
    codigoMCC: (NSNumber*) codigoMCC
    completionHandler: (void (^)(PierPageVinculoOperacaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET50`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}/operacoes"];

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
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idOperacao != nil) {
        
        queryParams[@"idOperacao"] = idOperacao;
    }
    if (codigoMCC != nil) {
        
        queryParams[@"codigoMCC"] = codigoMCC;
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
                              responseType: @"PierPageVinculoOperacaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageVinculoOperacaoResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de uma nova maquineta para um estabelecimento 
/// Este m\u00C3\u00A9todo permite que seja cadastrada uma nova maquineta para um estabelecimento.
///  @param maquinetaPersist maquinetaPersist 
///
///  @returns PierMaquinetaResponse*
///
-(NSNumber*) salvarUsingPOST15WithMaquinetaPersist: (PierMaquinetaPersist*) maquinetaPersist
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'maquinetaPersist' is set
    if (maquinetaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `maquinetaPersist` when calling `salvarUsingPOST15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/maquinetas"];

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
    
    bodyParam = maquinetaPersist;
    

    
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
                              responseType: @"PierMaquinetaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierMaquinetaResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de uma nova Regra Opera\u00C3\u00A7\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que seja cadastrada uma nova Regra Opera\u00C3\u00A7\u00C3\u00A3o.
///  @param oprecaoCredorPersist oprecaoCredorPersist 
///
///  @returns PierOperacaoCredorResponse*
///
-(NSNumber*) salvarUsingPOST16WithOprecaoCredorPersist: (PierOperacaoCredorPersist*) oprecaoCredorPersist
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'oprecaoCredorPersist' is set
    if (oprecaoCredorPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `oprecaoCredorPersist` when calling `salvarUsingPOST16`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/regras-operacoes-estabelecimentos"];

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
    
    bodyParam = oprecaoCredorPersist;
    

    
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
                              responseType: @"PierOperacaoCredorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOperacaoCredorResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo telefone para um estabelecimento 
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo telefone para um estabelecimento.
///  @param idEstabelecimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento (id). 
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). 
///
///  @param telefone N\u00C3\u00BAmero do telefone. 
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) salvarUsingPOST21WithIdEstabelecimento: (NSNumber*) idEstabelecimento
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idEstabelecimento' is set
    if (idEstabelecimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEstabelecimento` when calling `salvarUsingPOST21`"];
    }
    
    // verify the required parameter 'ddd' is set
    if (ddd == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `ddd` when calling `salvarUsingPOST21`"];
    }
    
    // verify the required parameter 'telefone' is set
    if (telefone == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `telefone` when calling `salvarUsingPOST21`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
    }
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
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
                              responseType: @"PierTelefoneEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo Terminal
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Terminal.
///  @param terminalPersist terminalPersist 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) salvarUsingPOST23WithTerminalPersist: (PierTerminalPersist*) terminalPersist
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'terminalPersist' is set
    if (terminalPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `terminalPersist` when calling `salvarUsingPOST23`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais"];

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
    
    bodyParam = terminalPersist;
    

    
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
                              responseType: @"PierTerminalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminalResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo VinculoEstabelecimentoAdquirente
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo VinculoEstabelecimentoAdquirente.
///  @param vinculoEstabelecimentoAdquirentePersist vinculoEstabelecimentoAdquirentePersist 
///
///  @returns PierVinculoEstabelecimentoAdquirenteResponse*
///
-(NSNumber*) salvarUsingPOST28WithVinculoEstabelecimentoAdquirentePersist: (PierVinculoEstabelecimentoAdquirentePersist*) vinculoEstabelecimentoAdquirentePersist
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'vinculoEstabelecimentoAdquirentePersist' is set
    if (vinculoEstabelecimentoAdquirentePersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `vinculoEstabelecimentoAdquirentePersist` when calling `salvarUsingPOST28`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/adquirentes-estabelecimento"];

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
    
    bodyParam = vinculoEstabelecimentoAdquirentePersist;
    

    
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
                              responseType: @"PierVinculoEstabelecimentoAdquirenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierVinculoEstabelecimentoAdquirenteResponse*)data, error);
                           }
          ];
}



@end
