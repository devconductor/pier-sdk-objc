#import "PierEstabelecimentosApi.h"
#import "PierQueryParamCollection.h"
#import "PierTerminal.h"
#import "PierEstabelecimento.h"
#import "PierPageTerminal.h"
#import "PierPageEstabelecimentos.h"


@interface PierEstabelecimentosApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierEstabelecimentosApi

static PierEstabelecimentosApi* singletonAPI = nil;

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

+(PierEstabelecimentosApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEstabelecimentosApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierEstabelecimentosApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierEstabelecimentosApi alloc] init];
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
/// Apresenta os dados de um determinado Terminal
/// Este m\u00C3\u00A9todo permite consultar um determinado Terminal a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). 
///
///  @returns PierTerminal*
///
-(NSNumber*) consultarUsingGET16WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTerminal* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET16`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais/{id}"];

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
                              responseType: @"PierTerminal*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTerminal*)data, error);
                           }
          ];
}

///
/// Consultar estabelecimento por id
/// Consulta os detalhes de um determinado estabelecimento
///  @param _id Id 
///
///  @returns PierEstabelecimento*
///
-(NSNumber*) consultarUsingGET6WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEstabelecimento* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET6`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos/{id}"];

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
                              responseType: @"PierEstabelecimento*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEstabelecimento*)data, error);
                           }
          ];
}

///
/// Lista os Terminais cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os terminais existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Terminal (id). (optional)
///
///  @param terminal C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do terminal. (optional)
///
///  @param numeroEstabelecimento N\u00C3\u00BAmero do estabelecimento a qual o terminal pertence. (optional)
///
///  @param idEstabelecimento N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento a qual o terminal pertence. (optional)
///
///  @returns PierPageTerminal*
///
-(NSNumber*) listarUsingGET22WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    terminal: (NSString*) terminal
    numeroEstabelecimento: (NSNumber*) numeroEstabelecimento
    idEstabelecimento: (NSNumber*) idEstabelecimento
    completionHandler: (void (^)(PierPageTerminal* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/terminais"];

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
    if (terminal != nil) {
        
        queryParams[@"terminal"] = terminal;
    }
    if (numeroEstabelecimento != nil) {
        
        queryParams[@"numeroEstabelecimento"] = numeroEstabelecimento;
    }
    if (idEstabelecimento != nil) {
        
        queryParams[@"idEstabelecimento"] = idEstabelecimento;
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
                              responseType: @"PierPageTerminal*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTerminal*)data, error);
                           }
          ];
}

///
/// Lista Estabelecimentos
/// Lista todas os Estabelecimentos
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do estabelecimento (id). (optional)
///
///  @param numeroReceitaFederal Apresenta o n\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do Estabelecimento na Receita Federal. (optional)
///
///  @param nome Nome do Estabelecimento. (optional)
///
///  @param descricao Raz\u00C3\u00A3o Social do Estabelecimento. (optional)
///
///  @param nomeFantasia T\u00C3\u00ADtulo Comercial do Estabelecimento. (optional)
///
///  @param cep C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP). (optional)
///
///  @param nomeLogradouro Nome do Logradouro. (optional)
///
///  @param numeroEndereco N\u00C3\u00BAmero do endere\u00C3\u00A7o. (optional)
///
///  @param complemento Descri\u00C3\u00A7\u00C3\u00B5es complementares referente ao endere\u00C3\u00A7o. (optional)
///
///  @param bairro Nome do bairro do endere\u00C3\u00A7o. (optional)
///
///  @param cidade Nome da cidade do endere\u00C3\u00A7o. (optional)
///
///  @param uf Sigla de identifica\u00C3\u00A7\u00C3\u00A3o da Unidade Federativa do endere\u00C3\u00A7o. (optional)
///
///  @param pais Nome do pa\u00C3\u00ADs. (optional)
///
///  @param dataCadastramento Data de Cadastro do Estabelecimento, no formato yyyy-MM-dd. (optional)
///
///  @param contato Nome da pessoa para contato com o Estabelecimento. (optional)
///
///  @param email E-mail da pessoa para contato com o Estabelecimento. (optional)
///
///  @param flagArquivoSecrFazenda Indica se o estabelecimento ser\u00C3\u00A1 inclu\u00C3\u00ADdo no arquivo de registro para a Secretaria da Fazenda Estadual. (optional)
///
///  @param flagCartaoDigitado Indica se o estabelecimento poder\u00C3\u00A1 originar transa\u00C3\u00A7\u00C3\u00B5es sem a leitura da tarja ou do chip do cart\u00C3\u00A3o. (optional)
///
///  @param inativo Indica se o estabelecimento est\u00C3\u00A1 inativo. (optional)
///
///  @returns PierPageEstabelecimentos*
///
-(NSNumber*) listarUsingGET9WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    numeroReceitaFederal: (NSNumber*) numeroReceitaFederal
    nome: (NSString*) nome
    descricao: (NSString*) descricao
    nomeFantasia: (NSString*) nomeFantasia
    cep: (NSString*) cep
    nomeLogradouro: (NSString*) nomeLogradouro
    numeroEndereco: (NSNumber*) numeroEndereco
    complemento: (NSString*) complemento
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    dataCadastramento: (NSString*) dataCadastramento
    contato: (NSString*) contato
    email: (NSString*) email
    flagArquivoSecrFazenda: (NSNumber*) flagArquivoSecrFazenda
    flagCartaoDigitado: (NSNumber*) flagCartaoDigitado
    inativo: (NSNumber*) inativo
    completionHandler: (void (^)(PierPageEstabelecimentos* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estabelecimentos"];

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
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (nomeFantasia != nil) {
        
        queryParams[@"nomeFantasia"] = nomeFantasia;
    }
    if (cep != nil) {
        
        queryParams[@"cep"] = cep;
    }
    if (nomeLogradouro != nil) {
        
        queryParams[@"nomeLogradouro"] = nomeLogradouro;
    }
    if (numeroEndereco != nil) {
        
        queryParams[@"numeroEndereco"] = numeroEndereco;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
    }
    if (bairro != nil) {
        
        queryParams[@"bairro"] = bairro;
    }
    if (cidade != nil) {
        
        queryParams[@"cidade"] = cidade;
    }
    if (uf != nil) {
        
        queryParams[@"uf"] = uf;
    }
    if (pais != nil) {
        
        queryParams[@"pais"] = pais;
    }
    if (dataCadastramento != nil) {
        
        queryParams[@"dataCadastramento"] = dataCadastramento;
    }
    if (contato != nil) {
        
        queryParams[@"contato"] = contato;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (flagArquivoSecrFazenda != nil) {
        
        queryParams[@"flagArquivoSecrFazenda"] = flagArquivoSecrFazenda;
    }
    if (flagCartaoDigitado != nil) {
        
        queryParams[@"flagCartaoDigitado"] = flagCartaoDigitado;
    }
    if (inativo != nil) {
        
        queryParams[@"inativo"] = inativo;
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
                              responseType: @"PierPageEstabelecimentos*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEstabelecimentos*)data, error);
                           }
          ];
}



@end
