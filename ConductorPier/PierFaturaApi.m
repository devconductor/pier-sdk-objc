#import "PierFaturaApi.h"
#import "PierQueryParamCollection.h"
#import "PierPagePlanoParcelamentoResponse.h"


@interface PierFaturaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierFaturaApi

static PierFaturaApi* singletonAPI = nil;

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

+(PierFaturaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFaturaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierFaturaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFaturaApi alloc] init];
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
/// Listar planos de parcelamento
/// Lista os planos de parcelamento da fatura de uma conta.
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da conta (id). 
///
///  @param dataVencimentoPadrao Indica a data de vencimento padr\u00C3\u00A3o das faturas 
///
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPagePlanoParcelamentoResponse*
///
-(NSNumber*) consultarLancamentosFuturosFaturaUsingGET1WithId: (NSNumber*) _id
    dataVencimentoPadrao: (NSString*) dataVencimentoPadrao
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePlanoParcelamentoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarLancamentosFuturosFaturaUsingGET1`"];
    }
    
    // verify the required parameter 'dataVencimentoPadrao' is set
    if (dataVencimentoPadrao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataVencimentoPadrao` when calling `consultarLancamentosFuturosFaturaUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/faturas/planos-parcelamento"];

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
    if (dataVencimentoPadrao != nil) {
        
        queryParams[@"dataVencimentoPadrao"] = dataVencimentoPadrao;
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
                              responseType: @"PierPagePlanoParcelamentoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePlanoParcelamentoResponse*)data, error);
                           }
          ];
}



@end
