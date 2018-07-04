#import "PierGlobaltagjobApi.h"
#import "PierQueryParamCollection.h"
#import "PierJobResponse.h"
#import "PierPageJobResponse.h"


@interface PierGlobaltagjobApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagjobApi

static PierGlobaltagjobApi* singletonAPI = nil;

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

+(PierGlobaltagjobApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagjobApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagjobApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagjobApi alloc] init];
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
/// {{{job_resource_ativar_job}}}
/// {{{job_resource_ativar_job_notes}}}
///  @param _id {{{job_resource_ativar_job_param_id}}} 
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
/// {{{job_resource_atualizar}}}
/// {{{job_resource_atualizar_notes}}}
///  @param _id {{{job_resource_atualizar_param_id}}} 
///
///  @param descricao {{{job_resource_atualizar_param_descricao}}} 
///
///  @param cron {{{job_resource_atualizar_param_cron}}} 
///
///  @param groovy groovy 
///
///  @returns PierJobResponse*
///
-(NSNumber*) atualizarUsingPUT4WithId: (NSNumber*) _id
    descricao: (NSString*) descricao
    cron: (NSString*) cron
    groovy: (NSString*) groovy
    completionHandler: (void (^)(PierJobResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atualizarUsingPUT4`"];
    }
    
    // verify the required parameter 'descricao' is set
    if (descricao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `descricao` when calling `atualizarUsingPUT4`"];
    }
    
    // verify the required parameter 'cron' is set
    if (cron == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cron` when calling `atualizarUsingPUT4`"];
    }
    
    // verify the required parameter 'groovy' is set
    if (groovy == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `groovy` when calling `atualizarUsingPUT4`"];
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
/// {{{job_resource_desativar_job}}}
/// {{{job_resource_desativar_job_notes}}}
///  @param _id {{{job_resource_desativar_job_param_id}}} 
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
/// {{{job_resource_listar}}}
/// {{{job_resource_listar_notes}}}
///  @param groovy {{{job_d_t_o_groovy_value}}} (optional)
///
///  @param descricao {{{job_d_t_o_descricao_value}}} (optional)
///
///  @param cron {{{job_d_t_o_cron_value}}} (optional)
///
///  @param status {{{job_d_t_o_status_value}}} (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageJobResponse*
///
-(NSNumber*) listarUsingGET31WithGroovy: (NSString*) groovy
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
/// {{{job_resource_salvar}}}
/// {{{job_resource_salvar_notes}}}
///  @param descricao {{{job_resource_salvar_param_descricao}}} 
///
///  @param cron {{{job_resource_salvar_param_cron}}} 
///
///  @param groovy groovy 
///
///  @returns PierJobResponse*
///
-(NSNumber*) salvarUsingPOST17WithDescricao: (NSString*) descricao
    cron: (NSString*) cron
    groovy: (NSString*) groovy
    completionHandler: (void (^)(PierJobResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'descricao' is set
    if (descricao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `descricao` when calling `salvarUsingPOST17`"];
    }
    
    // verify the required parameter 'cron' is set
    if (cron == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cron` when calling `salvarUsingPOST17`"];
    }
    
    // verify the required parameter 'groovy' is set
    if (groovy == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `groovy` when calling `salvarUsingPOST17`"];
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
