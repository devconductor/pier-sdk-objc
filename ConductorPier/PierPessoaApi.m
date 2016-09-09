#import "PierPessoaApi.h"
#import "PierQueryParamCollection.h"
#import "PierPessoa.h"
#import "PierPagePessoas.h"


@interface PierPessoaApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierPessoaApi

static PierPessoaApi* singletonAPI = nil;

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

+(PierPessoaApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierPessoaApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierPessoaApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierPessoaApi alloc] init];
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
/// Apresenta os dados de uma determinada Pessoa.
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///  @param idPessoa ID da Origem Comercial 
///
///  @returns PierPessoa*
///
-(NSNumber*) consultarUsingGET1WithIdPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierPessoa* output, NSError* error)) handler {

    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `consultarUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas/{id_pessoa}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (idPessoa != nil) {
        pathParams[@"id_pessoa"] = idPessoa;
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
                              responseType: @"PierPessoa*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoa*)data, error);
                           }
          ];
}

///
/// Lista as Pessoas cadastradas no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). (optional)
///
///  @param nome Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)'. (optional)
///
///  @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\"PF\": Pessoa F\u00C3\u00ADsica), (\"PJ\": Pessoa Jur\u00C3\u00ADdica). (optional)
///
///  @param cpf N\u00C3\u00BAmero do CPF, quando PF. (optional)
///
///  @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
///
///  @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. (optional)
///
///  @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00C3\u00A3o Especificado). (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 100, Max = 100) (optional)
///
///  @returns PierPagePessoas*
///
-(NSNumber*) listarUsingGET1WithId: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSDate*) dataNascimento
    sexo: (NSString*) sexo
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePessoas* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (tipo != nil) {
        
        queryParams[@"tipo"] = tipo;
    }
    if (cpf != nil) {
        
        queryParams[@"cpf"] = cpf;
    }
    if (cnpj != nil) {
        
        queryParams[@"cnpj"] = cnpj;
    }
    if (dataNascimento != nil) {
        
        queryParams[@"dataNascimento"] = dataNascimento;
    }
    if (sexo != nil) {
        
        queryParams[@"sexo"] = sexo;
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
                              responseType: @"PierPagePessoas*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePessoas*)data, error);
                           }
          ];
}



@end
