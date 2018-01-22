#import "PierEnderecoNacionalApi.h"
#import "PierQueryParamCollection.h"
#import "PierEnderecoResponse.h"


@interface PierEnderecoNacionalApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierEnderecoNacionalApi

static PierEnderecoNacionalApi* singletonAPI = nil;

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

+(PierEnderecoNacionalApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEnderecoNacionalApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierEnderecoNacionalApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEnderecoNacionalApi alloc] init];
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
/// Consultar Endere\u00C3\u00A7o
/// Este recurso permite consultar endere\u00C3\u00A7os atrav\u00C3\u00A9s do CEP.
///  @param cEP CEP 
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) consultarEnderecoUsingGETWithCEP: (NSString*) cEP
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'cEP' is set
    if (cEP == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `cEP` when calling `consultarEnderecoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/ceps"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (cEP != nil) {
        
        queryParams[@"CEP"] = cEP;
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
                              responseType: @"PierEnderecoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEnderecoResponse*)data, error);
                           }
          ];
}



@end
