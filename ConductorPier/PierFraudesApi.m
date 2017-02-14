#import "PierFraudesApi.h"
#import "PierQueryParamCollection.h"
#import "PierAtendimentoCliente.h"


@interface PierFraudesApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierFraudesApi

static PierFraudesApi* singletonAPI = nil;

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

+(PierFraudesApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFraudesApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierFraudesApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierFraudesApi alloc] init];
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
/// Apresenta os dados de um determinado Atendimento
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Atendimento a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (idAtendimento).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do atendimento cliente (id). 
///
///  @returns PierAtendimentoCliente*
///
-(NSNumber*) consultarUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAtendimentoCliente* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/atendimento-clientes/{id}"];

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
                              responseType: @"PierAtendimentoCliente*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAtendimentoCliente*)data, error);
                           }
          ];
}

///
/// Lista todos os atendimentos
/// Este m\u00C3\u00A9todo permite que sejam listados todos os Registro de Atendimento, independente do Tipo.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @param idAtendimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Atendimento (id) (optional)
///
///  @param idTipoAtendimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo de Atendimento (id) (optional)
///
///  @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id). (optional)
///
///  @param nomeAtendente Apresenta o nome do Atendente que registrou o Atendimento. (optional)
///
///  @param dataAtendimento Apresenta a data em que o Atendimento foi realizado. (optional)
///
///  @returns PierAtendimentoCliente*
///
-(NSNumber*) listarUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idAtendimento: (NSNumber*) idAtendimento
    idTipoAtendimento: (NSNumber*) idTipoAtendimento
    idConta: (NSNumber*) idConta
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSDate*) dataAtendimento
    completionHandler: (void (^)(PierAtendimentoCliente* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/atendimento-clientes"];

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
    if (idAtendimento != nil) {
        
        queryParams[@"idAtendimento"] = idAtendimento;
    }
    if (idTipoAtendimento != nil) {
        
        queryParams[@"idTipoAtendimento"] = idTipoAtendimento;
    }
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (nomeAtendente != nil) {
        
        queryParams[@"nomeAtendente"] = nomeAtendente;
    }
    if (dataAtendimento != nil) {
        
        queryParams[@"dataAtendimento"] = dataAtendimento;
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
                              responseType: @"PierAtendimentoCliente*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAtendimentoCliente*)data, error);
                           }
          ];
}

///
/// Cadastro um novo Atendimento do tipo Gen\u00C3\u00A9rico para uma Conta
/// 
///  @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o Atendimento est\u00C3\u00A1 associado (optional)
///
///  @param conteudoAtendimento Apresenta as informa\u00C3\u00A7\u00C3\u00B5es que foram utilizadas para consultar, cadastrar ou alterar informa\u00C3\u00A7\u00C3\u00B5es relacionadas ao Atendimento. (optional)
///
///  @param detalhesAtendimento Apresenta os detalhes lan\u00C3\u00A7ados pelo sistema ou pelo Atendente durante relacionados ao Atendimento. (optional)
///
///  @param nomeAtendente Apresenta o nome do Atendente que registrou o Atendimento. (optional)
///
///  @param dataAtendimento Apresenta a data em que o Atendimento foi realizado. (optional)
///
///  @param dataAgendamento Quando utilizado, de acordo com o Tipo de Atendimento, apresenta a data para processamento ou a data para retorno do Atendimento. (optional)
///
///  @param dataHoraInicioAtendimento Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos. (optional)
///
///  @param dataHoraFimAtendimento Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos. (optional)
///
///  @returns PierAtendimentoCliente*
///
-(NSNumber*) salvarUsingPOSTWithIdConta: (NSNumber*) idConta
    conteudoAtendimento: (NSString*) conteudoAtendimento
    detalhesAtendimento: (NSString*) detalhesAtendimento
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSDate*) dataAtendimento
    dataAgendamento: (NSDate*) dataAgendamento
    dataHoraInicioAtendimento: (NSDate*) dataHoraInicioAtendimento
    dataHoraFimAtendimento: (NSDate*) dataHoraFimAtendimento
    completionHandler: (void (^)(PierAtendimentoCliente* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/atendimento-clientes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (conteudoAtendimento != nil) {
        
        queryParams[@"conteudoAtendimento"] = conteudoAtendimento;
    }
    if (detalhesAtendimento != nil) {
        
        queryParams[@"detalhesAtendimento"] = detalhesAtendimento;
    }
    if (nomeAtendente != nil) {
        
        queryParams[@"nomeAtendente"] = nomeAtendente;
    }
    if (dataAtendimento != nil) {
        
        queryParams[@"dataAtendimento"] = dataAtendimento;
    }
    if (dataAgendamento != nil) {
        
        queryParams[@"dataAgendamento"] = dataAgendamento;
    }
    if (dataHoraInicioAtendimento != nil) {
        
        queryParams[@"dataHoraInicioAtendimento"] = dataHoraInicioAtendimento;
    }
    if (dataHoraFimAtendimento != nil) {
        
        queryParams[@"dataHoraFimAtendimento"] = dataHoraFimAtendimento;
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
                              responseType: @"PierAtendimentoCliente*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAtendimentoCliente*)data, error);
                           }
          ];
}



@end
