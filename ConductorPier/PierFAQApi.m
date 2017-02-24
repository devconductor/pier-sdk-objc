#import "PierFAQApi.h"
#import "PierQueryParamCollection.h"
#import "PierFAQ.h"
#import "PierPageFaqs.h"


@interface PierFAQApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierFAQApi

static PierFAQApi* singletonAPI = nil;

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

+(PierFAQApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFAQApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierFAQApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFAQApi alloc] init];
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
/// Adiciona uma nova FAQ para um determinado Emissor.
/// 
///  @param pergunta Conte\u00C3\u00BAdo da pergunta. 
///
///  @param resposta Conte\u00C3\u00BAdo da resposta. 
///
///  @param relevancia N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
///
///  @param plataforma Plataforma em que a FAQ se encaixa. (optional)
///
///  @param categoria Categoria de assunto do qual a FAQ se trata. (optional)
///
///  @param status Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)
///
///  @returns PierFAQ*
///
-(NSNumber*) adicionarUsingPOSTWithPergunta: (NSString*) pergunta
    resposta: (NSString*) resposta
    relevancia: (NSNumber*) relevancia
    plataforma: (NSString*) plataforma
    categoria: (NSString*) categoria
    status: (NSString*) status
    completionHandler: (void (^)(PierFAQ* output, NSError* error)) handler {

    
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
    NSArray *authSettings = @[@"access_token"];

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
                              responseType: @"PierFAQ*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFAQ*)data, error);
                           }
          ];
}

///
/// Altera os par\u00C3\u00A2metros de uma FAQ existente.
/// 
///  @param _id Id 
///
///  @param pergunta Conte\u00C3\u00BAdo da pergunta. 
///
///  @param resposta Conte\u00C3\u00BAdo da resposta. 
///
///  @param relevancia N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
///
///  @param plataforma Plataforma em que a FAQ se encaixa. (optional)
///
///  @param categoria Categoria de assunto do qual a FAQ se trata. (optional)
///
///  @param status Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)
///
///  @returns PierFAQ*
///
-(NSNumber*) alterarUsingPUT2WithId: (NSNumber*) _id
    pergunta: (NSString*) pergunta
    resposta: (NSString*) resposta
    relevancia: (NSNumber*) relevancia
    plataforma: (NSString*) plataforma
    categoria: (NSString*) categoria
    status: (NSString*) status
    completionHandler: (void (^)(PierFAQ* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT2`"];
    }
    
    // verify the required parameter 'pergunta' is set
    if (pergunta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pergunta` when calling `alterarUsingPUT2`"];
    }
    
    // verify the required parameter 'resposta' is set
    if (resposta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `resposta` when calling `alterarUsingPUT2`"];
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
    NSArray *authSettings = @[@"access_token"];

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
                              responseType: @"PierFAQ*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFAQ*)data, error);
                           }
          ];
}

///
/// Consulta os detalhes de uma determinada FAQ relacionada a um Emissor.
/// 
///  @param _id Id 
///
///  @returns PierFAQ*
///
-(NSNumber*) consultarUsingGET5WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierFAQ* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET5`"];
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
    NSArray *authSettings = @[@"access_token"];

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
                              responseType: @"PierFAQ*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierFAQ*)data, error);
                           }
          ];
}

///
/// Lista todas as FAQs de um determinado emissor.
/// 
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param idFaq C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da FAQ (id). (optional)
///
///  @param pergunta Conte\u00C3\u00BAdo da pergunta. (optional)
///
///  @param resposta Conte\u00C3\u00BAdo da resposta. (optional)
///
///  @param relevancia N\u00C3\u00ADvel de relev\u00C3\u00A2ncia da pergunta. (optional)
///
///  @param plataforma Plataforma em que a FAQ se encaixa. (optional)
///
///  @param categoria Categoria de assunto do qual a FAQ se trata. (optional)
///
///  @param status Status descrevendo a situa\u00C3\u00A7\u00C3\u00A3o atual da FAQ. (optional)
///
///  @returns PierPageFaqs*
///
-(NSNumber*) listarUsingGET5WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idFaq: (NSNumber*) idFaq
    pergunta: (NSString*) pergunta
    resposta: (NSString*) resposta
    relevancia: (NSNumber*) relevancia
    plataforma: (NSString*) plataforma
    categoria: (NSString*) categoria
    status: (NSString*) status
    completionHandler: (void (^)(PierPageFaqs* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/faqs"];

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
    NSArray *authSettings = @[@"access_token"];

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
                              responseType: @"PierPageFaqs*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageFaqs*)data, error);
                           }
          ];
}



@end
