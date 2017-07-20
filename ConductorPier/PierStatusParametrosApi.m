#import "PierStatusParametrosApi.h"
#import "PierQueryParamCollection.h"
#import "PierEstagioCartaoResponse.h"
#import "PierStatusCartaoResponse.h"
#import "PierStatusContaResponse.h"
#import "PierStatusImpressaoResponse.h"
#import "PierPageEstagioCartaoResponse.h"
#import "PierPageStatusCartaoResponse.h"
#import "PierPageStatusContaResponse.h"
#import "PierPageStatusImpressaoResponse.h"


@interface PierStatusParametrosApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierStatusParametrosApi

static PierStatusParametrosApi* singletonAPI = nil;

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

+(PierStatusParametrosApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierStatusParametrosApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierStatusParametrosApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierStatusParametrosApi alloc] init];
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
/// Apresenta os dados de um determinado Estagio Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
///
///  @returns PierEstagioCartaoResponse*
///
-(NSNumber*) consultarEstagioCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstagioCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarEstagioCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estagios-cartoes/{id}"];

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
                              responseType: @"PierEstagioCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstagioCartaoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Status Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Est\u00C3\u00A1gio de Entrega do Cart\u00C3\u00A3o (id). 
///
///  @returns PierStatusCartaoResponse*
///
-(NSNumber*) consultarStatusCartaoUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusCartaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarStatusCartaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes/{id}"];

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
                              responseType: @"PierStatusCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusCartaoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Status Conta
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status Conta a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). 
///
///  @returns PierStatusContaResponse*
///
-(NSNumber*) consultarUsingGET14WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusContaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET14`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-contas/{id}"];

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
                              responseType: @"PierStatusContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusContaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Status Impress\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status de Impress\u00C3\u00A3o do Cart\u00C3\u00A3o (id). 
///
///  @returns PierStatusImpressaoResponse*
///
-(NSNumber*) consultarUsingGET15WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierStatusImpressaoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET15`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-impressoes/{id}"];

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
                              responseType: @"PierStatusImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierStatusImpressaoResponse*)data, error);
                           }
          ];
}

///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gios do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Est\u00C3\u00A1gio de Entrega que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
///
///  @param nome Nome do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
///
///  @returns PierPageEstagioCartaoResponse*
///
-(NSNumber*) listarEstagiosCartoesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageEstagioCartaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estagios-cartoes"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
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
                              responseType: @"PierPageEstagioCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEstagioCartaoResponse*)data, error);
                           }
          ];
}

///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status do Cart\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as possibilidades de Status que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status do Cart\u00C3\u00A3o (id)  (optional)
///
///  @param nome Nome atribu\u00C3\u00ADdo ao Status de Entrega do Cart\u00C3\u00A3o. (optional)
///
///  @param flagCancelaCartao Quando ativa, indica que ao ser atribu\u00C3\u00ADdo um idStatusCartao com essa caracter\u00C3\u00ADstica, o cart\u00C3\u00A3o ter\u00C3\u00A1 o seu idStatusCartao alterado para o que fora escolhido. Caso contr\u00C3\u00A1rio, o idStatusCartao s\u00C3\u00B3 ser\u00C3\u00A1 alterado ap\u00C3\u00B3s o desbloqueio de um novo cart\u00C3\u00A3o do mesmo Portador e Conta. (optional)
///
///  @param flagCancelaNoDesbloqueio Quando ativa, indica que o cart\u00C3\u00A3o ativo que o portador possuir na mesma conta do cart\u00C3\u00A3o a ser desbloqueado, e que o status dele possua essa caracter\u00C3\u00ADstica, dever\u00C3\u00A1 ser cancelado quando um novo cart\u00C3\u00A3o for desbloqueado. (optional)
///
///  @param idStatusDestinoDesbloqueio Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo aos cart\u00C3\u00B5es que forem cancelados devido ao desbloqueio de um novo cart\u00C3\u00A3o. (optional)
///
///  @param idStatusDestinoConta Indica qual o idStatusCartao que ser\u00C3\u00A1 atribu\u00C3\u00ADdo a conta, caso ela seja cancelada devido ao bloqueio de um cart\u00C3\u00A3o quando for utilizado um idStatusCartao no processo de Bloqueio que possua essa caracter\u00C3\u00ADstica. (optional)
///
///  @param flagCobraTarifa Quando ativa, indica que cart\u00C3\u00B5es que tiverem um idStatusCartao atribu\u00C3\u00ADdo com essa caracter\u00C3\u00ADstica, incluir\u00C3\u00A3o a cobran\u00C3\u00A7a de uma tarifa para a conta de acordo com os valores definidos nos par\u00C3\u00A2metros do emissor. (optional)
///
///  @param flagPermiteNovaViaCartao Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a solicita\u00C3\u00A7\u00C3\u00A3o de uma nova via, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagPermiteDesbloqueio Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite o desbloqueio, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagCancelamento Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite o cancelamento, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagPermiteBloqueio Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite o Bloqueio, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagReativar Par\u00C3\u00A2metro que define se o status do cart\u00C3\u00A3o permite a reativa\u00C3\u00A7\u00C3\u00A3o do cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @returns PierPageStatusCartaoResponse*
///
-(NSNumber*) listarStatusCartoesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    flagCancelaCartao: (NSNumber*) flagCancelaCartao
    flagCancelaNoDesbloqueio: (NSNumber*) flagCancelaNoDesbloqueio
    idStatusDestinoDesbloqueio: (NSNumber*) idStatusDestinoDesbloqueio
    idStatusDestinoConta: (NSNumber*) idStatusDestinoConta
    flagCobraTarifa: (NSNumber*) flagCobraTarifa
    flagPermiteNovaViaCartao: (NSNumber*) flagPermiteNovaViaCartao
    flagPermiteDesbloqueio: (NSNumber*) flagPermiteDesbloqueio
    flagCancelamento: (NSNumber*) flagCancelamento
    flagPermiteBloqueio: (NSNumber*) flagPermiteBloqueio
    flagReativar: (NSNumber*) flagReativar
    completionHandler: (void (^)(PierPageStatusCartaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-cartoes"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (flagCancelaCartao != nil) {
        
        queryParams[@"flagCancelaCartao"] = flagCancelaCartao;
    }
    if (flagCancelaNoDesbloqueio != nil) {
        
        queryParams[@"flagCancelaNoDesbloqueio"] = flagCancelaNoDesbloqueio;
    }
    if (idStatusDestinoDesbloqueio != nil) {
        
        queryParams[@"idStatusDestinoDesbloqueio"] = idStatusDestinoDesbloqueio;
    }
    if (idStatusDestinoConta != nil) {
        
        queryParams[@"idStatusDestinoConta"] = idStatusDestinoConta;
    }
    if (flagCobraTarifa != nil) {
        
        queryParams[@"flagCobraTarifa"] = flagCobraTarifa;
    }
    if (flagPermiteNovaViaCartao != nil) {
        
        queryParams[@"flagPermiteNovaViaCartao"] = flagPermiteNovaViaCartao;
    }
    if (flagPermiteDesbloqueio != nil) {
        
        queryParams[@"flagPermiteDesbloqueio"] = flagPermiteDesbloqueio;
    }
    if (flagCancelamento != nil) {
        
        queryParams[@"flagCancelamento"] = flagCancelamento;
    }
    if (flagPermiteBloqueio != nil) {
        
        queryParams[@"flagPermiteBloqueio"] = flagPermiteBloqueio;
    }
    if (flagReativar != nil) {
        
        queryParams[@"flagReativar"] = flagReativar;
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
                              responseType: @"PierPageStatusCartaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusCartaoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Status Contas cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Status Contas existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Status da Conta (id). (optional)
///
///  @param nome Nome atribu\u00C3\u00ADdo ao Status da Conta. (optional)
///
///  @param flagAlteraLimite Par\u00C3\u00A2metro que define se o Status da Conta permite realizar a Altera\u00C3\u00A7\u00C3\u00A3o de Limites do Portador, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param mensagemConsultaNegada Apresenta o texto com o motivo que ser\u00C3\u00A1 apresentado na resposta as opera\u00C3\u00A7\u00C3\u00B5es de Listar e Consultar LimitesDisponibilidades. (optional)
///
///  @param flagPermiteNovaViaCartao Par\u00C3\u00A2metro que define se o Status da conta permite a solicita\u00C3\u00A7\u00C3\u00A3o de um novo cart\u00C3\u00A3o, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagFazTransferencia Par\u00C3\u00A2metro que define se o Status da conta permite fazer transferencia, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagRecebeTransferencia Par\u00C3\u00A2metro que define se o Status da conta permite receber transferencia, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagPermiteBloqueio Par\u00C3\u00A2metro que define se o Status da conta permite receber bloqueio, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagPermiteDesbloqueio Par\u00C3\u00A2metro que define se o Status da conta permite receber desbloqueio, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @param flagCancelaConta Par\u00C3\u00A2metro que define se o Status da conta permite receber cancelamento, sendo: 0: Inativo e 1: Ativo. (optional)
///
///  @returns PierPageStatusContaResponse*
///
-(NSNumber*) listarUsingGET20WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    flagAlteraLimite: (NSNumber*) flagAlteraLimite
    mensagemConsultaNegada: (NSString*) mensagemConsultaNegada
    flagPermiteNovaViaCartao: (NSNumber*) flagPermiteNovaViaCartao
    flagFazTransferencia: (NSNumber*) flagFazTransferencia
    flagRecebeTransferencia: (NSNumber*) flagRecebeTransferencia
    flagPermiteBloqueio: (NSNumber*) flagPermiteBloqueio
    flagPermiteDesbloqueio: (NSNumber*) flagPermiteDesbloqueio
    flagCancelaConta: (NSNumber*) flagCancelaConta
    completionHandler: (void (^)(PierPageStatusContaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-contas"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (flagAlteraLimite != nil) {
        
        queryParams[@"flagAlteraLimite"] = flagAlteraLimite;
    }
    if (mensagemConsultaNegada != nil) {
        
        queryParams[@"mensagemConsultaNegada"] = mensagemConsultaNegada;
    }
    if (flagPermiteNovaViaCartao != nil) {
        
        queryParams[@"flagPermiteNovaViaCartao"] = flagPermiteNovaViaCartao;
    }
    if (flagFazTransferencia != nil) {
        
        queryParams[@"flagFazTransferencia"] = flagFazTransferencia;
    }
    if (flagRecebeTransferencia != nil) {
        
        queryParams[@"flagRecebeTransferencia"] = flagRecebeTransferencia;
    }
    if (flagPermiteBloqueio != nil) {
        
        queryParams[@"flagPermiteBloqueio"] = flagPermiteBloqueio;
    }
    if (flagPermiteDesbloqueio != nil) {
        
        queryParams[@"flagPermiteDesbloqueio"] = flagPermiteDesbloqueio;
    }
    if (flagCancelaConta != nil) {
        
        queryParams[@"flagCancelaConta"] = flagCancelaConta;
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
                              responseType: @"PierPageStatusContaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusContaResponse*)data, error);
                           }
          ];
}

///
/// Lista as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o
/// Este m\u00C3\u00A9todo permite que sejam listadas as op\u00C3\u00A7\u00C3\u00B5es de Status Impress\u00C3\u00A3o que podem ser atribu\u00C3\u00ADdas aos Cart\u00C3\u00B5es.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id Id do est\u00C3\u00A1gio cart\u00C3\u00A3o (optional)
///
///  @param nome Nome do status impress\u00C3\u00A3o (optional)
///
///  @returns PierPageStatusImpressaoResponse*
///
-(NSNumber*) listarUsingGET21WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageStatusImpressaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/status-impressoes"];

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
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
                              responseType: @"PierPageStatusImpressaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageStatusImpressaoResponse*)data, error);
                           }
          ];
}



@end
