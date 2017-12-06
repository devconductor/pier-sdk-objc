#import "PierDebitoRecorrenteApi.h"
#import "PierQueryParamCollection.h"
#import "PierPageTipoDebitoRecorrenteResponse.h"


@interface PierDebitoRecorrenteApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierDebitoRecorrenteApi

static PierDebitoRecorrenteApi* singletonAPI = nil;

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

+(PierDebitoRecorrenteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierDebitoRecorrenteApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierDebitoRecorrenteApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierDebitoRecorrenteApi alloc] init];
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
/// Lista os d\u00C3\u00A9bitos recorrentes de uma Conta
/// A entidade D\u00C3\u00A9bito Recorrente trata dos registros contratados por um determinado cliente (idConta) onde a cobran\u00C3\u00A7a dele se d\u00C3\u00A1 de forma cont\u00C3\u00ADnua, consistindo em uma \u00E2\u0080\u009Cassinatura\u00E2\u0080\u009D ou pagamento de mensalidades. Isso significa que, enquanto o servi\u00C3\u00A7o continuar a ser prestado, o cliente dever\u00C3\u00A1 continuar realizando os pagamentos. A determina\u00C3\u00A7\u00C3\u00A3o de quanto tempo essa rela\u00C3\u00A7\u00C3\u00A3o ir\u00C3\u00A1 durar \u00C3\u00A9 feita em contrato. Na maioria das vezes, existe um per\u00C3\u00ADodo m\u00C3\u00ADnimo e, caso o servi\u00C3\u00A7o seja cancelado ou o pagamento n\u00C3\u00A3o seja realizado, o status do D\u00C3\u00A9bito Recorrente ter\u00C3\u00A1 a FlagAtivo com valor false. Assim, este m\u00C3\u00A9todo lista todas as opera\u00C3\u00A7\u00C3\u00B5es de D\u00C3\u00A9bitos Recorrentes que um determinado idConta j\u00C3\u00A1 contratou, esteja ele ativo ou n\u00C3\u00A3o.
///  @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id) 
///
///  @param idTipoDebitoRecorrente C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id) (optional)
///
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param dataHoraInicio Data inicio do d\u00C3\u00A9bito recorrente. (optional)
///
///  @param dataHoraFim Data fim do d\u00C3\u00A9bito recorrente. (optional)
///
///  @param ativo Identifica se o d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo. (optional)
///
///  @param dataHoraUltimoPagamento Data do \u00C3\u00BAltimo pagamento efetuado. (optional)
///
///  @returns PierPageTipoDebitoRecorrenteResponse*
///
-(NSNumber*) listarUsingGET12WithIdConta: (NSNumber*) idConta
    idTipoDebitoRecorrente: (NSNumber*) idTipoDebitoRecorrente
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    dataHoraInicio: (NSString*) dataHoraInicio
    dataHoraFim: (NSString*) dataHoraFim
    ativo: (NSNumber*) ativo
    dataHoraUltimoPagamento: (NSString*) dataHoraUltimoPagamento
    completionHandler: (void (^)(PierPageTipoDebitoRecorrenteResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `listarUsingGET12`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/debitos-recorrentes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idTipoDebitoRecorrente != nil) {
        
        queryParams[@"idTipoDebitoRecorrente"] = idTipoDebitoRecorrente;
    }
    if (sort != nil) {
        
        queryParams[@"sort"] = [[PierQueryParamCollection alloc] initWithValuesAndFormat: sort format: @"multi"];
        
        
    }
    if (page != nil) {
        
        queryParams[@"page"] = page;
    }
    if (limit != nil) {
        
        queryParams[@"limit"] = limit;
    }
    if (dataHoraInicio != nil) {
        
        queryParams[@"dataHoraInicio"] = dataHoraInicio;
    }
    if (dataHoraFim != nil) {
        
        queryParams[@"dataHoraFim"] = dataHoraFim;
    }
    if (ativo != nil) {
        
        queryParams[@"ativo"] = ativo;
    }
    if (dataHoraUltimoPagamento != nil) {
        
        queryParams[@"dataHoraUltimoPagamento"] = dataHoraUltimoPagamento;
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
                              responseType: @"PierPageTipoDebitoRecorrenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoDebitoRecorrenteResponse*)data, error);
                           }
          ];
}

///
/// Listar Tipos Debitos Recorrentes
/// Para os emissores que utilizam a entidade Debitos Recorrentes precisam previamente solicitar a Conductor o cadastro de quais Tipos eles poder\u00C3\u00A3o comercializar. Por isso, este recurso tem como objetivo apresentar todos os Tipos de D\u00C3\u00A9bitos Recorrentes que est\u00C3\u00A3o cadastrados para um determinado Emissor, independente do status dele.
///  @param sort Tipo de ordena\u00C3\u00A7\u00C3\u00A3o dos registros. (optional)
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente (id). (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo de d\u00C3\u00A9bito recorrente. (optional)
///
///  @param valor Valor do tipo de d\u00C3\u00A9bito recorrente. (optional)
///
///  @param flagAtivo Flag que identifica se o tipo d\u00C3\u00A9bito recorrente est\u00C3\u00A1 ativo. (optional)
///
///  @returns PierPageTipoDebitoRecorrenteResponse*
///
-(NSNumber*) listarUsingGET36WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    valor: (NSNumber*) valor
    flagAtivo: (NSNumber*) flagAtivo
    completionHandler: (void (^)(PierPageTipoDebitoRecorrenteResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-debitos-recorrentes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

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
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (valor != nil) {
        
        queryParams[@"valor"] = valor;
    }
    if (flagAtivo != nil) {
        
        queryParams[@"flagAtivo"] = flagAtivo;
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
                              responseType: @"PierPageTipoDebitoRecorrenteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoDebitoRecorrenteResponse*)data, error);
                           }
          ];
}



@end
