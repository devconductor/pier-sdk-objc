#import "PierGlobaltagestabelecimentoApi.h"
#import "PierQueryParamCollection.h"
#import "PierOrigemComercialResponse.h"
#import "PierOrigemComercialUpdate.h"
#import "PierMaquinetaResponse.h"
#import "PierMaquinetaUpdate.h"
#import "PierOperacaoCredorUpdate.h"
#import "PierOperacaoCredorResponse.h"
#import "PierTelefoneEstabelecimentoResponse.h"
#import "PierTelefoneEstabelecimentoUpdate.h"
#import "PierTerminalUpdateValue_.h"
#import "PierTerminalResponse.h"
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
#import "PierPageTipoEstabelecimentoResponse.h"
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierPageTipoOrigemComercialResponse.h"
#import "PierPageTipoTerminalResponse.h"
#import "PierPageEstabelecimentoResponse.h"
#import "PierPageGrupoEconomicoResponse.h"
#import "PierPageGrupoOrigemComercialResponse.h"
#import "PierPageMaquinetaResponse.h"
#import "PierPageMoedaResponse.h"
#import "PierPageOperacaoCredorResponse.h"
#import "PierPageTelefoneEstabelecimentoResponse.h"
#import "PierPageTerminalResponse.h"
#import "PierPageVinculoEstabelecimentoAdquirenteResponse.h"
#import "PierPageVinculoOperacaoResponse.h"
#import "PierMaquinetaPersist.h"
#import "PierOperacaoCredorPersist.h"
#import "PierTelefoneEstabelecimentoPersist.h"
#import "PierTerminalPersist.h"
#import "PierVinculoEstabelecimentoAdquirentePersist.h"


@interface PierGlobaltagestabelecimentoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagestabelecimentoApi

static PierGlobaltagestabelecimentoApi* singletonAPI = nil;

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

+(PierGlobaltagestabelecimentoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagestabelecimentoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagestabelecimentoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagestabelecimentoApi alloc] init];
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
/// {{{origem_comercial_resource_alterar_origem_comercial}}}
/// {{{origem_comercial_resource_alterar_origem_comercial_notes}}}
///  @param _id {{{origem_comercial_resource_alterar_origem_comercial_param_id}}} 
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
/// {{{maquineta_resource_alterar}}}
/// {{{maquineta_resource_alterar_notes}}}
///  @param _id {{{maquineta_resource_alterar_param_id}}} 
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
/// {{{operacao_credor_resource_alterar}}}
/// {{{operacao_credor_resource_alterar_notes}}}
///  @param _id {{{operacao_credor_resource_alterar_param_id}}} 
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
/// {{{telefone_estabelecimento_resource_alterar}}}
/// {{{telefone_estabelecimento_resource_alterar_notes}}}
///  @param _id {{{telefone_estabelecimento_resource_alterar_param_id}}} 
///
///  @param telefoneEstabelecimentoUpdate telefoneEstabelecimentoUpdate 
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) alterarUsingPUT17WithId: (NSNumber*) _id
    telefoneEstabelecimentoUpdate: (PierTelefoneEstabelecimentoUpdate*) telefoneEstabelecimentoUpdate
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT17`"];
    }
    
    // verify the required parameter 'telefoneEstabelecimentoUpdate' is set
    if (telefoneEstabelecimentoUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `telefoneEstabelecimentoUpdate` when calling `alterarUsingPUT17`"];
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
    
    bodyParam = telefoneEstabelecimentoUpdate;
    

    
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
/// {{{terminal_resource_alterar}}}
/// {{{terminal_resource_alterar_notes}}}
///  @param _id {{{terminal_resource_alterar_param_id}}} 
///
///  @param terminalUpdate terminalUpdate 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) alterarUsingPUT19WithId: (NSNumber*) _id
    terminalUpdate: (PierTerminalUpdateValue_*) terminalUpdate
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT19`"];
    }
    
    // verify the required parameter 'terminalUpdate' is set
    if (terminalUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `terminalUpdate` when calling `alterarUsingPUT19`"];
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
/// {{{estabelecimento_resource_alterar}}}
/// {{{estabelecimento_resource_alterar_notes}}}
///  @param _id {{{estabelecimento_resource_alterar_param_id_estabelecimento}}} 
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
/// {{{grupo_economico_resource_alterar}}}
/// {{{grupo_economico_resource_alterar_notes}}}
///  @param _id {{{grupo_economico_resource_alterar_param_id}}} 
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
/// {{{origem_comercial_resource_cadastrar_origem_comercial}}}
/// {{{origem_comercial_resource_cadastrar_origem_comercial_notes}}}
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
/// {{{estabelecimento_resource_cadastrar}}}
/// {{{estabelecimento_resource_cadastrar_notes}}}
///  @param persist persist 
///
///  @returns PierEstabelecimentoResponse*
///
-(NSNumber*) cadastrarUsingPOST3WithPersist: (PierEstabelecimentoPersist*) persist
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `cadastrarUsingPOST3`"];
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
/// {{{grupo_economico_resource_cadastrar}}}
/// {{{grupo_economico_resource_cadastrar_notes}}}
///  @param grupoEconomicoDTO GrupoEconomicoDTO 
///
///  @returns PierGrupoEconomicoResponse*
///
-(NSNumber*) cadastrarUsingPOST4WithGrupoEconomicoDTO: (PierGrupoEconomicoDTO*) grupoEconomicoDTO
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'grupoEconomicoDTO' is set
    if (grupoEconomicoDTO == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `grupoEconomicoDTO` when calling `cadastrarUsingPOST4`"];
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
/// {{{operacao_resource_consulta_operacao}}}
/// {{{operacao_resource_consulta_operacao_notes}}}
///  @param _id {{{operacao_resource_consulta_operacao_param_id_operacao}}} 
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
/// {{{origem_comercial_resource_consultar_origem_comercial}}}
/// {{{origem_comercial_resource_consultar_origem_comercial_notes}}}
///  @param _id {{{origem_comercial_resource_consultar_origem_comercial_param_id}}} 
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
/// {{{estabelecimento_resource_consultar}}}
/// {{{estabelecimento_resource_consultar_notes}}}
///  @param _id {{{estabelecimento_resource_consultar_param_id_estabelecimento}}} 
///
///  @returns PierEstabelecimentoResponse*
///
-(NSNumber*) consultarUsingGET22WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET22`"];
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
/// {{{grupo_economico_resource_consultar}}}
/// {{{grupo_economico_resource_consultar_notes}}}
///  @param _id {{{grupo_economico_resource_consultar_param_id}}} 
///
///  @returns PierGrupoEconomicoResponse*
///
-(NSNumber*) consultarUsingGET24WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierGrupoEconomicoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET24`"];
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
/// {{{maquineta_resource_consultar}}}
/// {{{maquineta_resource_consultar_notes}}}
///  @param _id {{{maquineta_resource_consultar_param_id}}} 
///
///  @returns PierMaquinetaResponse*
///
-(NSNumber*) consultarUsingGET26WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET26`"];
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
/// {{{operacao_credor_resource_consultar}}}
/// {{{operacao_credor_resource_consultar_notes}}}
///  @param _id {{{operacao_credor_resource_consultar_param_id}}} 
///
///  @returns PierOperacaoCredorResponse*
///
-(NSNumber*) consultarUsingGET27WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET27`"];
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
/// {{{telefone_estabelecimento_resource_consultar}}}
/// {{{telefone_estabelecimento_resource_consultar_notes}}}
///  @param _id {{{telefone_estabelecimento_resource_consultar_param_id}}} 
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) consultarUsingGET40WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET40`"];
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
/// {{{terminal_resource_consultar}}}
/// {{{terminal_resource_consultar_notes}}}
///  @param _id {{{terminal_resource_consultar_param_id}}} 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) consultarUsingGET42WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET42`"];
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
/// {{{vinculo_estabelecimento_adquirente_resource_consultar}}}
/// {{{vinculo_estabelecimento_adquirente_resource_consultar_notes}}}
///  @param _id {{{vinculo_estabelecimento_adquirente_resource_consultar_param_id}}} 
///
///  @returns PierVinculoEstabelecimentoAdquirenteResponse*
///
-(NSNumber*) consultarUsingGET54WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET54`"];
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
/// {{{vinculo_estabelecimento_adquirente_resource_desabilitar_vinculo}}}
/// {{{vinculo_estabelecimento_adquirente_resource_desabilitar_vinculo_notes}}}
///  @param _id {{{vinculo_estabelecimento_adquirente_resource_desabilitar_vinculo_param_id}}} 
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
/// {{{vinculo_operacao_resource_desabilitar_vinculo}}}
/// {{{vinculo_operacao_resource_desabilitar_vinculo_notes}}}
///  @param _id {{{vinculo_operacao_resource_desabilitar_vinculo_param_id}}} 
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
/// {{{vinculo_estabelecimento_adquirente_resource_habilitar_vinculo}}}
/// {{{vinculo_estabelecimento_adquirente_resource_habilitar_vinculo_notes}}}
///  @param _id {{{vinculo_estabelecimento_adquirente_resource_habilitar_vinculo_param_id}}} 
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
/// {{{vinculo_operacao_resource_habilitar_vinculo}}}
/// {{{vinculo_operacao_resource_habilitar_vinculo_notes}}}
///  @param _id {{{vinculo_operacao_resource_habilitar_vinculo_param_id}}} 
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
/// {{{operacao_resource_lista_operacao}}}
/// {{{operacao_resource_lista_operacao_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idOperacao {{{operacao_request_id_operacao_value}}} (optional)
///
///  @param codigoProcessamento {{{operacao_request_codigo_processamento_value}}} (optional)
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
/// {{{m_c_c_resource_listar_m_c_c}}}
/// {{{m_c_c_resource_listar_m_c_c_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
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
/// {{{origem_comercial_resource_listar_origens_comerciais}}}
/// {{{origem_comercial_resource_listar_origens_comerciais_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{origem_comercial_request_id_value}}} (optional)
///
///  @param nome {{{origem_comercial_request_nome_value}}} (optional)
///
///  @param status {{{origem_comercial_request_status_value}}} (optional)
///
///  @param idEstabelecimento {{{origem_comercial_request_id_estabelecimento_value}}} (optional)
///
///  @param idProduto {{{origem_comercial_request_id_produto_value}}} (optional)
///
///  @param descricao {{{origem_comercial_request_descricao_value}}} (optional)
///
///  @param idTipoOrigemComercial {{{origem_comercial_request_id_tipo_origem_comercial_value}}} (optional)
///
///  @param idGrupoOrigemComercial {{{origem_comercial_request_id_grupo_origem_comercial_value}}} (optional)
///
///  @param flagPreAprovado {{{origem_comercial_request_flag_pre_aprovado_value}}} (optional)
///
///  @param flagAprovacaoImediata {{{origem_comercial_request_flag_aprovacao_imediata_value}}} (optional)
///
///  @param nomeFantasiaPlastico {{{origem_comercial_request_nome_fantasia_plastico_value}}} (optional)
///
///  @param flagCartaoProvisorio {{{origem_comercial_request_flag_cartao_provisorio_value}}} (optional)
///
///  @param flagCartaoDefinitivo {{{origem_comercial_request_flag_cartao_definitivo_value}}} (optional)
///
///  @param usuario {{{origem_comercial_request_usuario_value}}} (optional)
///
///  @param senha {{{origem_comercial_request_senha_value}}} (optional)
///
///  @param flagOrigemExterna {{{origem_comercial_request_flag_origem_externa_value}}} (optional)
///
///  @param flagModificado {{{origem_comercial_request_flag_modificado_value}}} (optional)
///
///  @param flagEnviaFaturaUsuario {{{origem_comercial_request_flag_envia_fatura_usuario_value}}} (optional)
///
///  @param flagCreditoFaturamento {{{origem_comercial_request_flag_credito_faturamento_value}}} (optional)
///
///  @param flagConcedeLimiteProvisorio {{{origem_comercial_request_flag_concede_limite_provisorio_value}}} (optional)
///
///  @param flagDigitalizarDoc {{{origem_comercial_request_flag_digitalizar_doc_value}}} (optional)
///
///  @param flagEmbossingLoja {{{origem_comercial_request_flag_embossing_loja_value}}} (optional)
///
///  @param flagConsultaPrevia {{{origem_comercial_request_flag_consulta_previa_value}}} (optional)
///
///  @param tipoPessoa {{{origem_comercial_request_tipo_pessoa_value}}} (optional)
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
/// {{{vinculo_estabelecimento_adquirente_resource_listar_tipos_adquirentes}}}
/// {{{vinculo_estabelecimento_adquirente_resource_listar_tipos_adquirentes_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
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
/// {{{tipo_estabelecimento_resource_listar_tipos_estabelecimentos}}}
/// {{{tipo_estabelecimento_resource_listar_tipos_estabelecimentos_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param descricao {{{tipo_estabelecimento_request_descricao_value}}} (optional)
///
///  @returns PierPageTipoEstabelecimentoResponse*
///
-(NSNumber*) listarTiposEstabelecimentosUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoEstabelecimentoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-estabelecimentos"];

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
                              responseType: @"PierPageTipoEstabelecimentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoEstabelecimentoResponse*)data, error);
                           }
          ];
}

///
/// {{{maquineta_resource_listar_tipos_maquinetas}}}
/// {{{maquineta_resource_listar_tipos_maquinetas_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
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
/// {{{tipo_origem_comercial_resource_listar_tipos_origens_comerciais}}}
/// {{{tipo_origem_comercial_resource_listar_tipos_origens_comerciais_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param nome {{{tipo_origem_comercial_request_nome_value}}} (optional)
///
///  @returns PierPageTipoOrigemComercialResponse*
///
-(NSNumber*) listarTiposOrigensComerciaisUsingGETWithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageTipoOrigemComercialResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-origens-comerciais"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
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
                              responseType: @"PierPageTipoOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// {{{terminal_resource_listar_tipos_terminais}}}
/// {{{terminal_resource_listar_tipos_terminais_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
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
/// {{{estabelecimento_resource_listar}}}
/// {{{estabelecimento_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{estabelecimento_request_id_value}}} (optional)
///
///  @param idGrupoEconomico {{{estabelecimento_request_id_grupo_economico_value}}} (optional)
///
///  @param numeroReceitaFederal {{{estabelecimento_request_numero_receita_federal_value}}} (optional)
///
///  @param nome {{{estabelecimento_request_nome_value}}} (optional)
///
///  @param descricao {{{estabelecimento_request_descricao_value}}} (optional)
///
///  @param nomeFantasia {{{estabelecimento_request_nome_fantasia_value}}} (optional)
///
///  @param cep {{{estabelecimento_request_cep_value}}} (optional)
///
///  @param nomeLogradouro {{{estabelecimento_request_nome_logradouro_value}}} (optional)
///
///  @param numeroEndereco {{{estabelecimento_request_numero_endereco_value}}} (optional)
///
///  @param complemento {{{estabelecimento_request_complemento_value}}} (optional)
///
///  @param bairro {{{estabelecimento_request_bairro_value}}} (optional)
///
///  @param cidade {{{estabelecimento_request_cidade_value}}} (optional)
///
///  @param uf {{{estabelecimento_request_uf_value}}} (optional)
///
///  @param pais {{{estabelecimento_request_pais_value}}} (optional)
///
///  @param dataCadastramento {{{estabelecimento_request_data_cadastramento_value}}} (optional)
///
///  @param contato {{{estabelecimento_request_contato_value}}} (optional)
///
///  @param email {{{estabelecimento_request_email_value}}} (optional)
///
///  @param flagArquivoSecrFazenda {{{estabelecimento_request_flag_arquivo_secr_fazenda_value}}} (optional)
///
///  @param flagCartaoDigitado {{{estabelecimento_request_flag_cartao_digitado_value}}} (optional)
///
///  @param inativo {{{estabelecimento_request_inativo_value}}} (optional)
///
///  @param idPais {{{estabelecimento_request_id_pais_value}}} (optional)
///
///  @param mcc {{{estabelecimento_request_mcc_value}}} (optional)
///
///  @param idTipoEstabelecimento {{{estabelecimento_request_id_tipo_estabelecimento_value}}} (optional)
///
///  @param correspondencia {{{estabelecimento_request_correspondencia_value}}} (optional)
///
///  @param idMoeda {{{estabelecimento_request_id_moeda_value}}} (optional)
///
///  @param tipoPagamento {{{estabelecimento_request_tipo_pagamento_value}}} (optional)
///
///  @param numeroEstabelecimento {{{estabelecimento_request_numero_estabelecimento_value}}} (optional)
///
///  @param cep2 {{{estabelecimento_request_cep2_value}}} (optional)
///
///  @param nomeLogradouro2 {{{estabelecimento_request_nome_logradouro2_value}}} (optional)
///
///  @param numeroEndereco2 {{{estabelecimento_request_numero_endereco2_value}}} (optional)
///
///  @param complemento2 {{{estabelecimento_request_complemento2_value}}} (optional)
///
///  @param bairro2 {{{estabelecimento_request_bairro2_value}}} (optional)
///
///  @param cidade2 {{{estabelecimento_request_cidade2_value}}} (optional)
///
///  @param uf2 {{{estabelecimento_request_uf2_value}}} (optional)
///
///  @param flagMatriz {{{estabelecimento_request_flag_matriz_value}}} (optional)
///
///  @returns PierPageEstabelecimentoResponse*
///
-(NSNumber*) listarUsingGET26WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idGrupoEconomico: (NSNumber*) idGrupoEconomico
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
    correspondencia: (NSNumber*) correspondencia
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
    if (idGrupoEconomico != nil) {
        
        queryParams[@"idGrupoEconomico"] = idGrupoEconomico;
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
    if (correspondencia != nil) {
        
        queryParams[@"correspondencia"] = correspondencia;
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
/// {{{grupo_economico_resource_listar}}}
/// {{{grupo_economico_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param razaoSocial {{{grupo_economico_request_razao_social_value}}} (optional)
///
///  @param nomeCredor {{{grupo_economico_request_nome_credor_value}}} (optional)
///
///  @param numeroReceitaFederal {{{grupo_economico_request_numero_receita_federal_value}}} (optional)
///
///  @param inscricaoEstadual {{{grupo_economico_request_inscricao_estadual_value}}} (optional)
///
///  @param contato {{{grupo_economico_request_contato_value}}} (optional)
///
///  @param banco {{{grupo_economico_request_banco_value}}} (optional)
///
///  @param agencia {{{grupo_economico_request_agencia_value}}} (optional)
///
///  @param digitoAgencia {{{grupo_economico_request_digito_agencia_value}}} (optional)
///
///  @param contaCorrente {{{grupo_economico_request_conta_corrente_value}}} (optional)
///
///  @param digitoContaCorrente {{{grupo_economico_request_digito_conta_corrente_value}}} (optional)
///
///  @param periodicidade {{{grupo_economico_request_periodicidade_value}}} (optional)
///
///  @param pagamentoSemanal {{{grupo_economico_request_pagamento_semanal_value}}} (optional)
///
///  @param pagamentoMensal {{{grupo_economico_request_pagamento_mensal_value}}} (optional)
///
///  @param pagamentoDecendialPrimeiro {{{grupo_economico_request_pagamento_decendial_primeiro_value}}} (optional)
///
///  @param pagamentoDecendialSegundo {{{grupo_economico_request_pagamento_decendial_segundo_value}}} (optional)
///
///  @param pagamentoDecendialTerceiro {{{grupo_economico_request_pagamento_decendial_terceiro_value}}} (optional)
///
///  @param pagamentoQuinzenalPrimeiro {{{grupo_economico_request_pagamento_quinzenal_primeiro_value}}} (optional)
///
///  @param pagamentoQuinzenalSegundo {{{grupo_economico_request_pagamento_quinzenal_segundo_value}}} (optional)
///
///  @param percentualRAV {{{grupo_economico_request_percentual_r_a_v_value}}} (optional)
///
///  @param recebeRAV {{{grupo_economico_request_recebe_r_a_v_value}}} (optional)
///
///  @param percentualMultiplica {{{grupo_economico_request_percentual_multiplica_value}}} (optional)
///
///  @param taxaAdm {{{grupo_economico_request_taxa_adm_value}}} (optional)
///
///  @param taxaBanco {{{grupo_economico_request_taxa_banco_value}}} (optional)
///
///  @param limiteRAV {{{grupo_economico_request_limite_r_a_v_value}}} (optional)
///
///  @param idCredorRAV {{{grupo_economico_request_id_credor_r_a_v_value}}} (optional)
///
///  @returns PierPageGrupoEconomicoResponse*
///
-(NSNumber*) listarUsingGET29WithSort: (NSArray* /* NSString */) sort
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
/// {{{grupo_origem_comercial_resource_listar}}}
/// {{{grupo_origem_comercial_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param nome {{{grupo_origem_comercial_request_nome_value}}} (optional)
///
///  @returns PierPageGrupoOrigemComercialResponse*
///
-(NSNumber*) listarUsingGET30WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageGrupoOrigemComercialResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/grupos-origens-comerciais"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
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
                              responseType: @"PierPageGrupoOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageGrupoOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// {{{maquineta_resource_listar}}}
/// {{{maquineta_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idEstabelecimento {{{maquineta_request_id_estabelecimento_value}}} (optional)
///
///  @returns PierPageMaquinetaResponse*
///
-(NSNumber*) listarUsingGET33WithSort: (NSArray* /* NSString */) sort
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
/// {{{moeda_resource_listar}}}
/// {{{moeda_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param codigoMoeda {{{moeda_request_codigo_moeda_value}}} (optional)
///
///  @param simbolo {{{moeda_request_simbolo_value}}} (optional)
///
///  @param descricao {{{moeda_request_descricao_value}}} (optional)
///
///  @returns PierPageMoedaResponse*
///
-(NSNumber*) listarUsingGET34WithSort: (NSArray* /* NSString */) sort
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
/// {{{operacao_credor_resource_listar}}}
/// {{{operacao_credor_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idOperacao {{{operacao_credor_request_id_operacao_value}}} (optional)
///
///  @param idCredor {{{operacao_credor_request_id_credor_value}}} (optional)
///
///  @param idProduto {{{operacao_credor_request_id_produto_value}}} (optional)
///
///  @returns PierPageOperacaoCredorResponse*
///
-(NSNumber*) listarUsingGET35WithSort: (NSArray* /* NSString */) sort
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
/// {{{telefone_estabelecimento_resource_listar}}}
/// {{{telefone_estabelecimento_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idEstabelecimento {{{telefone_estabelecimento_request_id_estabelecimento_value}}} (optional)
///
///  @returns PierPageTelefoneEstabelecimentoResponse*
///
-(NSNumber*) listarUsingGET52WithSort: (NSArray* /* NSString */) sort
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
/// {{{terminal_resource_listar}}}
/// {{{terminal_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{terminal_request_id_value}}} (optional)
///
///  @param terminal {{{terminal_request_terminal_value}}} (optional)
///
///  @param numeroEstabelecimento {{{terminal_request_numero_estabelecimento_value}}} (optional)
///
///  @param idEstabelecimento {{{terminal_request_id_estabelecimento_value}}} (optional)
///
///  @returns PierPageTerminalResponse*
///
-(NSNumber*) listarUsingGET54WithSort: (NSArray* /* NSString */) sort
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
/// {{{vinculo_estabelecimento_adquirente_resource_listar}}}
/// {{{vinculo_estabelecimento_adquirente_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idAdquirente {{{vinculo_estabelecimento_adquirente_request_id_adquirente_value}}} (optional)
///
///  @param idEstabelecimento {{{vinculo_estabelecimento_adquirente_request_id_estabelecimento_value}}} (optional)
///
///  @param codigoEstabelecimentoAdquirente {{{vinculo_estabelecimento_adquirente_request_codigo_estabelecimento_adquirente_value}}} (optional)
///
///  @returns PierPageVinculoEstabelecimentoAdquirenteResponse*
///
-(NSNumber*) listarUsingGET67WithSort: (NSArray* /* NSString */) sort
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
/// {{{vinculo_operacao_resource_listar}}}
/// {{{vinculo_operacao_resource_listar_notes}}}
///  @param _id {{{vinculo_operacao_resource_listar_param_id}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idProduto {{{vinculo_operacao_request_id_produto_value}}} (optional)
///
///  @param idOperacao {{{vinculo_operacao_request_id_operacao_value}}} (optional)
///
///  @param codigoMCC {{{vinculo_operacao_request_codigo_m_c_c_value}}} (optional)
///
///  @returns PierPageVinculoOperacaoResponse*
///
-(NSNumber*) listarUsingGET68WithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idProduto: (NSNumber*) idProduto
    idOperacao: (NSNumber*) idOperacao
    codigoMCC: (NSNumber*) codigoMCC
    completionHandler: (void (^)(PierPageVinculoOperacaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET68`"];
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
/// {{{maquineta_resource_salvar}}}
/// {{{maquineta_resource_salvar_notes}}}
///  @param maquinetaPersist maquinetaPersist 
///
///  @returns PierMaquinetaResponse*
///
-(NSNumber*) salvarUsingPOST20WithMaquinetaPersist: (PierMaquinetaPersist*) maquinetaPersist
    completionHandler: (void (^)(PierMaquinetaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'maquinetaPersist' is set
    if (maquinetaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `maquinetaPersist` when calling `salvarUsingPOST20`"];
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
/// {{{operacao_credor_resource_salvar}}}
/// {{{operacao_credor_resource_salvar_notes}}}
///  @param operacaoCredorPersist operacaoCredorPersist 
///
///  @returns PierOperacaoCredorResponse*
///
-(NSNumber*) salvarUsingPOST21WithOperacaoCredorPersist: (PierOperacaoCredorPersist*) operacaoCredorPersist
    completionHandler: (void (^)(PierOperacaoCredorResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'operacaoCredorPersist' is set
    if (operacaoCredorPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `operacaoCredorPersist` when calling `salvarUsingPOST21`"];
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
    
    bodyParam = operacaoCredorPersist;
    

    
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
/// {{{telefone_estabelecimento_resource_salvar}}}
/// {{{telefone_estabelecimento_resource_salvar_notes}}}
///  @param telefoneEstabelecimentoPersist telefoneEstabelecimentoPersist 
///
///  @returns PierTelefoneEstabelecimentoResponse*
///
-(NSNumber*) salvarUsingPOST28WithTelefoneEstabelecimentoPersist: (PierTelefoneEstabelecimentoPersist*) telefoneEstabelecimentoPersist
    completionHandler: (void (^)(PierTelefoneEstabelecimentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'telefoneEstabelecimentoPersist' is set
    if (telefoneEstabelecimentoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `telefoneEstabelecimentoPersist` when calling `salvarUsingPOST28`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones-estabelecimentos"];

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
    
    bodyParam = telefoneEstabelecimentoPersist;
    

    
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
/// {{{terminal_resource_salvar}}}
/// {{{terminal_resource_salvar_notes}}}
///  @param terminalPersist terminalPersist 
///
///  @returns PierTerminalResponse*
///
-(NSNumber*) salvarUsingPOST30WithTerminalPersist: (PierTerminalPersist*) terminalPersist
    completionHandler: (void (^)(PierTerminalResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'terminalPersist' is set
    if (terminalPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `terminalPersist` when calling `salvarUsingPOST30`"];
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
/// {{{vinculo_estabelecimento_adquirente_resource_salvar}}}
/// {{{vinculo_estabelecimento_adquirente_resource_salvar_notes}}}
///  @param vinculoEstabelecimentoAdquirentePersist vinculoEstabelecimentoAdquirentePersist 
///
///  @returns PierVinculoEstabelecimentoAdquirenteResponse*
///
-(NSNumber*) salvarUsingPOST35WithVinculoEstabelecimentoAdquirentePersist: (PierVinculoEstabelecimentoAdquirentePersist*) vinculoEstabelecimentoAdquirentePersist
    completionHandler: (void (^)(PierVinculoEstabelecimentoAdquirenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'vinculoEstabelecimentoAdquirentePersist' is set
    if (vinculoEstabelecimentoAdquirentePersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `vinculoEstabelecimentoAdquirentePersist` when calling `salvarUsingPOST35`"];
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
