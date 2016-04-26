#import "CaaSContaApi.h"
#import "CaaSQueryParamCollection.h"
#import "CaaSContaResponse.h"


@interface CaaSContaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation CaaSContaApi

static CaaSContaApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        CaaSConfiguration *config = [CaaSConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[CaaSApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(CaaSApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(CaaSContaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[CaaSContaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(CaaSContaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[CaaSContaApi alloc] init];
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
    return [CaaSApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// /contas/{idConta}
/// Consulte informaÃ§Ãµes de uma determinada conta
///  @param idEmissor ID do Emissor
///
///  @param idConta ID da Conta
///
///  @returns CaaSContaResponse*
///
-(NSNumber*) consultarContaUsingGETWithCompletionBlock: (NSNumber*) idEmissor
         idConta: (NSNumber*) idConta
        
        completionHandler: (void (^)(CaaSContaResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'idEmissor' is set
    if (idEmissor == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idEmissor` when calling `consultarContaUsingGET`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `consultarContaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/v1/contas/{idConta}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        pathParams[@"idConta"] = idConta;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    if (idEmissor != nil) {
        headerParams[@"idEmissor"] = idEmissor;
    }
    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [CaaSApiClient selectHeaderAccept:@[@"application/json"]];
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
    NSString *requestContentType = [CaaSApiClient selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"access_token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"CaaSContaResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((CaaSContaResponse*)data, error);
              }
          ];
}



@end
