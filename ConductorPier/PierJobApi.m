#import "PierJobApi.h"
#import "PierQueryParamCollection.h"
#import "PierJobResponse.h"
#import "PierPageJobResponse.h"


@interface PierJobApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierJobApi

static PierJobApi* singletonAPI = nil;

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

+(PierJobApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierJobApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierJobApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierJobApi alloc] init];
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
/// Ativar Job
/// Este recurso adiciona o job ao agendador de tarefas.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Job (id). 
///
///  @returns PierJobResponse*
///
-(NSNumber*) ativarJobUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierJobResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `ativarJobUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/jobs/{id}/ativar-job"];

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
                              responseType: @"PierJobResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierJobResponse*)data, error);
                           }
          ];
}

///
/// Atualizar Job
/// Este recurso permite atualizar os dados de um job cadastrado.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Job (id). 
///
///  @param descricao descricao. 
///
///  @param cron Cron do Job. 
///
///  @param groovy groovy 
///
///  @returns PierJobResponse*
///
-(NSNumber*) atualizarUsingPUT3WithId: (NSNumber*) _id
    descricao: (NSString*) descricao
    cron: (NSString*) cron
    groovy: (NSString*) groovy
    completionHandler: (void (^)(PierJobResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atualizarUsingPUT3`"];
    }
    
    // verify the required parameter 'descricao' is set
    if (descricao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `descricao` when calling `atualizarUsingPUT3`"];
    }
    
    // verify the required parameter 'cron' is set
    if (cron == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cron` when calling `atualizarUsingPUT3`"];
    }
    
    // verify the required parameter 'groovy' is set
    if (groovy == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `groovy` when calling `atualizarUsingPUT3`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/jobs/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (cron != nil) {
        
        queryParams[@"cron"] = cron;
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
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"text/plain"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = groovy;
    

    
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
                              responseType: @"PierJobResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierJobResponse*)data, error);
                           }
          ];
}

///
/// Desativar Job
/// Este recurso retira o job do agendador de tarefas.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Job (id). 
///
///  @returns PierJobResponse*
///
-(NSNumber*) desativarJobUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierJobResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarJobUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/jobs/{id}/desativar-job"];

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
                              responseType: @"PierJobResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierJobResponse*)data, error);
                           }
          ];
}

///
/// Listar Jobs
/// Este recurso permite que sejam listados os jobs existentes na base do PIER.
///  @param groovy Script Groovy do Job (optional)
///
///  @param descricao Descri\u00E7\u00E3o do Job (optional)
///
///  @param cron Cron do Job (optional)
///
///  @param status Status do Job (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageJobResponse*
///
-(NSNumber*) listarUsingGET26WithGroovy: (NSString*) groovy
    descricao: (NSString*) descricao
    cron: (NSString*) cron
    status: (NSString*) status
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageJobResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/jobs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (groovy != nil) {
        
        queryParams[@"groovy"] = groovy;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (cron != nil) {
        
        queryParams[@"cron"] = cron;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
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
                              responseType: @"PierPageJobResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageJobResponse*)data, error);
                           }
          ];
}

///
/// Cadastrar Job
/// Esse recurso permite cadastrar jobs.
///  @param descricao descricao. 
///
///  @param cron Cron do Job. 
///
///  @param groovy groovy 
///
///  @returns PierJobResponse*
///
-(NSNumber*) salvarUsingPOST15WithDescricao: (NSString*) descricao
    cron: (NSString*) cron
    groovy: (NSString*) groovy
    completionHandler: (void (^)(PierJobResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'descricao' is set
    if (descricao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `descricao` when calling `salvarUsingPOST15`"];
    }
    
    // verify the required parameter 'cron' is set
    if (cron == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cron` when calling `salvarUsingPOST15`"];
    }
    
    // verify the required parameter 'groovy' is set
    if (groovy == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `groovy` when calling `salvarUsingPOST15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/jobs"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (cron != nil) {
        
        queryParams[@"cron"] = cron;
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
    NSString *requestContentType = [PierApiClient selectHeaderContentType:@[@"text/plain"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    
    bodyParam = groovy;
    

    
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
                              responseType: @"PierJobResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierJobResponse*)data, error);
                           }
          ];
}



@end
