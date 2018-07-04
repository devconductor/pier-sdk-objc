#import "PierGlobaltaglogApi.h"
#import "PierQueryParamCollection.h"
#import "PierLogAcessoUsuarioPersistencia_.h"
#import "PierLogAcessoUsuarioResposta_.h"


@interface PierGlobaltaglogApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltaglogApi

static PierGlobaltaglogApi* singletonAPI = nil;

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

+(PierGlobaltaglogApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltaglogApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltaglogApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltaglogApi alloc] init];
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
/// {{{log_acesso_usuario_recurso_salvar}}}
/// {{{log_acesso_usuario_recurso_salvar_notas}}}
///  @param logAcessoUsuarioPersist logAcessoUsuarioPersist 
///
///  @returns PierLogAcessoUsuarioResposta_*
///
-(NSNumber*) salvarUsingPOST18WithLogAcessoUsuarioPersist: (PierLogAcessoUsuarioPersistencia_*) logAcessoUsuarioPersist
    completionHandler: (void (^)(PierLogAcessoUsuarioResposta_* output, NSError* error)) handler {

    
    // verify the required parameter 'logAcessoUsuarioPersist' is set
    if (logAcessoUsuarioPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `logAcessoUsuarioPersist` when calling `salvarUsingPOST18`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/logs/log-acessos-usuario"];

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
    
    bodyParam = logAcessoUsuarioPersist;
    

    
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
                              responseType: @"PierLogAcessoUsuarioResposta_*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierLogAcessoUsuarioResposta_*)data, error);
                           }
          ];
}



@end
