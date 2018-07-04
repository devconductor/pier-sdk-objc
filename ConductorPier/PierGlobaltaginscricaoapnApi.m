#import "PierGlobaltaginscricaoapnApi.h"
#import "PierQueryParamCollection.h"
#import "PierInscricaoAPNResponse.h"
#import "PierPageInscricaoAPNResponse.h"
#import "PierInscricaoApnPersistencia_.h"


@interface PierGlobaltaginscricaoapnApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltaginscricaoapnApi

static PierGlobaltaginscricaoapnApi* singletonAPI = nil;

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

+(PierGlobaltaginscricaoapnApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltaginscricaoapnApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltaginscricaoapnApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltaginscricaoapnApi alloc] init];
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
/// {{{inscricao_apn_recurso_desativar}}}
/// {{{inscricao_apn_recurso_desativar_notas}}}
///  @param _id id 
///
///  @returns PierInscricaoAPNResponse*
///
-(NSNumber*) desativarUsingPUTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierInscricaoAPNResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/inscricoes-apn/{id}/desativar"];

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
                              responseType: @"PierInscricaoAPNResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierInscricaoAPNResponse*)data, error);
                           }
          ];
}

///
/// {{{inscricao_apn_recurso_listar}}}
/// {{{inscricao_apn_recurso_listar_notas}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param idCartoes {{{inscricao_apn_requisicao_id_cartoes_descricao}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param deviceToken {{{inscricao_apn_requisicao_device_token_descricao}}} (optional)
///
///  @param dataCriacao {{{inscricao_apn_requisicao_data_criacao_descricao}}} (optional)
///
///  @param dataDesativacao {{{inscricao_apn_requisicao_data_desativacao_descricao}}} (optional)
///
///  @param ativo {{{inscricao_apn_requisicao_ativo_descricao}}} (optional)
///
///  @param idAplicacaoMobile {{{inscricao_apn_requisicao_id_aplicacao_mobile_descricao}}} (optional)
///
///  @returns PierPageInscricaoAPNResponse*
///
-(NSNumber*) listarUsingGET30WithSort: (NSArray* /* NSString */) sort
    idCartoes: (NSArray* /* NSNumber */) idCartoes
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    deviceToken: (NSString*) deviceToken
    dataCriacao: (NSString*) dataCriacao
    dataDesativacao: (NSString*) dataDesativacao
    ativo: (NSNumber*) ativo
    idAplicacaoMobile: (NSNumber*) idAplicacaoMobile
    completionHandler: (void (^)(PierPageInscricaoAPNResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/inscricoes-apn"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (idCartoes != nil) {
        
        queryParams[@"idCartoes"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: idCartoes format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (deviceToken != nil) {
        
        queryParams[@"deviceToken"] = deviceToken;
    }
    if (dataCriacao != nil) {
        
        queryParams[@"dataCriacao"] = dataCriacao;
    }
    if (dataDesativacao != nil) {
        
        queryParams[@"dataDesativacao"] = dataDesativacao;
    }
    if (ativo != nil) {
        
        queryParams[@"ativo"] = ativo;
    }
    if (idAplicacaoMobile != nil) {
        
        queryParams[@"idAplicacaoMobile"] = idAplicacaoMobile;
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
                              responseType: @"PierPageInscricaoAPNResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageInscricaoAPNResponse*)data, error);
                           }
          ];
}

///
/// {{{inscricao_apn_recurso_salvar}}}
/// {{{inscricao_apn_recurso_salvar_notas}}}
///  @param inscricaoPersist inscricaoPersist 
///
///  @returns NSArray<PierInscricaoAPNResponse>*
///
-(NSNumber*) salvarUsingPOST14WithInscricaoPersist: (PierInscricaoApnPersistencia_*) inscricaoPersist
    completionHandler: (void (^)(NSArray<PierInscricaoAPNResponse>* output, NSError* error)) handler {

    
    // verify the required parameter 'inscricaoPersist' is set
    if (inscricaoPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `inscricaoPersist` when calling `salvarUsingPOST14`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/inscricoes-apn"];

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
    
    bodyParam = inscricaoPersist;
    

    
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
                              responseType: @"NSArray<PierInscricaoAPNResponse>*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSArray<PierInscricaoAPNResponse>*)data, error);
                           }
          ];
}



@end
