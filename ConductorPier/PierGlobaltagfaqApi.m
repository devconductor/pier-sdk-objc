#import "PierGlobaltagfaqApi.h"
#import "PierQueryParamCollection.h"
#import "PierFaqResponse.h"
#import "PierPageFaqResponse.h"


@interface PierGlobaltagfaqApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagfaqApi

static PierGlobaltagfaqApi* singletonAPI = nil;

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

+(PierGlobaltagfaqApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagfaqApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagfaqApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagfaqApi alloc] init];
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
/// {{{faq_resource_adicionar}}}
/// {{{faq_resource_adicionar_notes}}}
///  @param pergunta {{{faq_persist_pergunta_value}}} 
///
///  @param resposta {{{faq_persist_resposta_value}}} 
///
///  @param relevancia {{{faq_persist_relevancia_value}}} (optional)
///
///  @param plataforma {{{faq_persist_plataforma_value}}} (optional)
///
///  @param categoria {{{faq_persist_categoria_value}}} (optional)
///
///  @param status {{{faq_persist_status_value}}} (optional)
///
///  @returns PierFaqResponse*
///
-(NSNumber*) adicionarUsingPOSTWithPergunta: (NSString*) pergunta
    resposta: (NSString*) resposta
    relevancia: (NSNumber*) relevancia
    plataforma: (NSString*) plataforma
    categoria: (NSString*) categoria
    status: (NSString*) status
    completionHandler: (void (^)(PierFaqResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'pergunta' is set
    if (pergunta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pergunta` when calling `adicionarUsingPOST`"];
    }
    
    // verify the required parameter 'resposta' is set
    if (resposta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resposta` when calling `adicionarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faqs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (pergunta != nil) {
        
        queryParams[@"pergunta"] = pergunta;
    }
    if (resposta != nil) {
        
        queryParams[@"resposta"] = resposta;
    }
    if (relevancia != nil) {
        
        queryParams[@"relevancia"] = relevancia;
    }
    if (plataforma != nil) {
        
        queryParams[@"plataforma"] = plataforma;
    }
    if (categoria != nil) {
        
        queryParams[@"categoria"] = categoria;
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
                              responseType: @"PierFaqResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFaqResponse*)data, error);
                           }
          ];
}

///
/// {{{faq_resource_alterar}}}
/// {{{faq_resource_alterar_notes}}}
///  @param _id {{{faq_resource_alterar_param_id_faq}}} 
///
///  @param pergunta {{{faq_persist_pergunta_value}}} 
///
///  @param resposta {{{faq_persist_resposta_value}}} 
///
///  @param relevancia {{{faq_persist_relevancia_value}}} (optional)
///
///  @param plataforma {{{faq_persist_plataforma_value}}} (optional)
///
///  @param categoria {{{faq_persist_categoria_value}}} (optional)
///
///  @param status {{{faq_persist_status_value}}} (optional)
///
///  @returns PierFaqResponse*
///
-(NSNumber*) alterarUsingPUT7WithId: (NSNumber*) _id
    pergunta: (NSString*) pergunta
    resposta: (NSString*) resposta
    relevancia: (NSNumber*) relevancia
    plataforma: (NSString*) plataforma
    categoria: (NSString*) categoria
    status: (NSString*) status
    completionHandler: (void (^)(PierFaqResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT7`"];
    }
    
    // verify the required parameter 'pergunta' is set
    if (pergunta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pergunta` when calling `alterarUsingPUT7`"];
    }
    
    // verify the required parameter 'resposta' is set
    if (resposta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resposta` when calling `alterarUsingPUT7`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faqs/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (pergunta != nil) {
        
        queryParams[@"pergunta"] = pergunta;
    }
    if (resposta != nil) {
        
        queryParams[@"resposta"] = resposta;
    }
    if (relevancia != nil) {
        
        queryParams[@"relevancia"] = relevancia;
    }
    if (plataforma != nil) {
        
        queryParams[@"plataforma"] = plataforma;
    }
    if (categoria != nil) {
        
        queryParams[@"categoria"] = categoria;
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
                              responseType: @"PierFaqResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFaqResponse*)data, error);
                           }
          ];
}

///
/// {{{faq_resource_consultar}}}
/// {{{faq_resource_consultar_notes}}}
///  @param _id {{{faq_resource_consultar_param_id_faq}}} 
///
///  @returns PierFaqResponse*
///
-(NSNumber*) consultarUsingGET20WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierFaqResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET20`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faqs/{id}"];

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
                              responseType: @"PierFaqResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFaqResponse*)data, error);
                           }
          ];
}

///
/// {{{faq_resource_listar}}}
/// {{{faq_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idFaq {{{faq_request_id_faq_value}}} (optional)
///
///  @param pergunta {{{faq_request_pergunta_value}}} (optional)
///
///  @param resposta {{{faq_request_resposta_value}}} (optional)
///
///  @param relevancia {{{faq_request_relevancia_value}}} (optional)
///
///  @param plataforma {{{faq_request_plataforma_value}}} (optional)
///
///  @param categoria {{{faq_request_categoria_value}}} (optional)
///
///  @param status {{{faq_request_status_value}}} (optional)
///
///  @returns PierPageFaqResponse*
///
-(NSNumber*) listarUsingGET26WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idFaq: (NSNumber*) idFaq
    pergunta: (NSString*) pergunta
    resposta: (NSString*) resposta
    relevancia: (NSNumber*) relevancia
    plataforma: (NSString*) plataforma
    categoria: (NSString*) categoria
    status: (NSString*) status
    completionHandler: (void (^)(PierPageFaqResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faqs"];

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
    if (idFaq != nil) {
        
        queryParams[@"idFaq"] = idFaq;
    }
    if (pergunta != nil) {
        
        queryParams[@"pergunta"] = pergunta;
    }
    if (resposta != nil) {
        
        queryParams[@"resposta"] = resposta;
    }
    if (relevancia != nil) {
        
        queryParams[@"relevancia"] = relevancia;
    }
    if (plataforma != nil) {
        
        queryParams[@"plataforma"] = plataforma;
    }
    if (categoria != nil) {
        
        queryParams[@"categoria"] = categoria;
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
                              responseType: @"PierPageFaqResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageFaqResponse*)data, error);
                           }
          ];
}



@end
