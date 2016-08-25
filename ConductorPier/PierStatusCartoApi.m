#import "PierStatusCartoApi.h"
#import "PierQueryParamCollection.h"
#import "PierEstGioCartO.h"
#import "PierListaDeStatusCartEs.h"


@interface PierStatusCartoApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierStatusCartoApi

static PierStatusCartoApi* singletonAPI = nil;

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

+(PierStatusCartoApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierStatusCartoApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierStatusCartoApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierStatusCartoApi alloc] init];
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
/// Apresenta os dados de um determinado Status Cart\u00C3\u00A3o 
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).  
///  @param idStatusCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
///
///  @returns PierEstGioCartO*
///
-(NSNumber*) consultarStatusCartaoUsingGETWithIdStatusCartao: (NSNumber*) idStatusCartao
    completionHandler: (void (^)(PierEstGioCartO* output, NSError* error)) handler {

    
    // verify the required parameter 'idStatusCartao' is set
    if (idStatusCartao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idStatusCartao` when calling `consultarStatusCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes/{id_status_cartao}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idStatusCartao != nil) {
        pathParams[@"id_status_cartao"] = idStatusCartao;
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
                              responseType: @"PierEstGioCartO*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstGioCartO*)data, error);
                           }
          ];
}

///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o 
/// Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///  @param idStatusCartao C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id). (optional)
///
///  @param nome Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
///
///  @param idStatusDestinoDesbloqueio Indica qual o idStatusCartao que deve ser atribu\u00C3\u00ADdo a um idCartao quando ele for desbloqueado. (optional)
///
///  @param cancelaConta Indica que Cart\u00C3\u00B5es com este idStatusCartao podem ter a sua conta Cancelada. (optional)
///
///  @param permiteDesbloqueio Indica que Cart\u00C3\u00B5es com este idStatusCartao podem ser Desbloqueados. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @returns PierListaDeStatusCartEs*
///
-(NSNumber*) listarStatusCartoesUsingGETWithIdStatusCartao: (NSNumber*) idStatusCartao
    nome: (NSString*) nome
    idStatusDestinoDesbloqueio: (NSNumber*) idStatusDestinoDesbloqueio
    cancelaConta: (NSString*) cancelaConta
    permiteDesbloqueio: (NSString*) permiteDesbloqueio
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierListaDeStatusCartEs* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idStatusCartao != nil) {
        
        queryParams[@"id_status_cartao"] = idStatusCartao;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (idStatusDestinoDesbloqueio != nil) {
        
        queryParams[@"id_status_destino_desbloqueio"] = idStatusDestinoDesbloqueio;
    }
    if (cancelaConta != nil) {
        
        queryParams[@"cancela_conta"] = cancelaConta;
    }
    if (permiteDesbloqueio != nil) {
        
        queryParams[@"permite_desbloqueio"] = permiteDesbloqueio;
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
                              responseType: @"PierListaDeStatusCartEs*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierListaDeStatusCartEs*)data, error);
                           }
          ];
}



@end