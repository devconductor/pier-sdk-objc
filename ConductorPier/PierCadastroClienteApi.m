#import "PierCadastroClienteApi.h"
#import "PierQueryParamCollection.h"
#import "PierAdicionalDetalheResponse.h"
#import "PierAdicionalUpdate.h"
#import "PierPessoaDetalheResponse.h"
#import "PierPessoaResponse.h"
#import "PierTelefoneResponse.h"
#import "PierEnderecoResponse.h"
#import "PierAtribuirAssinaturaClientePersist.h"
#import "PierIntegracaoEmissorPersist.h"
#import "PierIntegracaoEmissorResponse.h"
#import "PierAdicionalPersist.h"
#import "PierPagePessoaResponse.h"
#import "PierAdicionalResponse.h"
#import "PierPageEnderecoResponse.h"
#import "PierPagePessoaDetalheResponse.h"
#import "PierPageTelefoneResponse.h"
#import "PierPessoaFisicaAprovadaPersist.h"
#import "PierPessoaFisicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaPersist.h"


@interface PierCadastroClienteApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierCadastroClienteApi

static PierCadastroClienteApi* singletonAPI = nil;

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

+(PierCadastroClienteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCadastroClienteApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierCadastroClienteApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCadastroClienteApi alloc] init];
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
/// Altera Adicional de uma Conta
/// Este m\u00E9todo permite que seja alterado um portador Adicional de uma determinada Conta.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da conta (id). 
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da pessoa (id). 
///
///  @param adicionalUpdate adicionalUpdate 
///
///  @returns PierAdicionalDetalheResponse*
///
-(NSNumber*) alterarUsingPUTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    adicionalUpdate: (PierAdicionalUpdate*) adicionalUpdate
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `alterarUsingPUT`"];
    }
    
    // verify the required parameter 'adicionalUpdate' is set
    if (adicionalUpdate == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `adicionalUpdate` when calling `alterarUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/adicionais/{idPessoa}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idPessoa != nil) {
        pathParams[@"idPessoa"] = idPessoa;
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
    
    bodyParam = adicionalUpdate;
    

    
    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierAdicionalDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAdicionalDetalheResponse*)data, error);
                           }
          ];
}

///
/// Atualiza os detalhes de uma determinada Pessoa
/// Este m\u00E9todo permite que seja alterado na base do emissor os detalhes de uma determinada Pessoa.
///  @param _id ID da Pessoa 
///
///  @param nomeMae Apresenta o nome da m\u00E3e da pessoa fisica (optional)
///
///  @param idEstadoCivil Id Estado civil da pessoa fisica (optional)
///
///  @param idProfissao Profiss\u00E3o da pessoa fisica (optional)
///
///  @param idNaturezaOcupacao Id Natureza Ocupa\u00E7\u00E3o da pessoa fisica (optional)
///
///  @param idNacionalidade Id Nacionalidade da pessoa fisica (optional)
///
///  @param numeroBanco N\u00FAmero do banco. (optional)
///
///  @param numeroAgencia N\u00FAmero da ag\u00EAncia. (optional)
///
///  @param numeroContaCorrente N\u00FAmero da conta corrente. (optional)
///
///  @param email Email da pessoa fisica (optional)
///
///  @param nomeEmpresa Nome que deve ser impresso no cart\u00E3o (optional)
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) alterarUsingPUT13WithId: (NSNumber*) _id
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroBanco: (NSNumber*) numeroBanco
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT13`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-detalhes/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (nomeMae != nil) {
        
        queryParams[@"nomeMae"] = nomeMae;
    }
    if (idEstadoCivil != nil) {
        
        queryParams[@"idEstadoCivil"] = idEstadoCivil;
    }
    if (idProfissao != nil) {
        
        queryParams[@"idProfissao"] = idProfissao;
    }
    if (idNaturezaOcupacao != nil) {
        
        queryParams[@"idNaturezaOcupacao"] = idNaturezaOcupacao;
    }
    if (idNacionalidade != nil) {
        
        queryParams[@"idNacionalidade"] = idNacionalidade;
    }
    if (numeroBanco != nil) {
        
        queryParams[@"numeroBanco"] = numeroBanco;
    }
    if (numeroAgencia != nil) {
        
        queryParams[@"numeroAgencia"] = numeroAgencia;
    }
    if (numeroContaCorrente != nil) {
        
        queryParams[@"numeroContaCorrente"] = numeroContaCorrente;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (nomeEmpresa != nil) {
        
        queryParams[@"nomeEmpresa"] = nomeEmpresa;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierPessoaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Atualiza os dados de uma determinada Pessoa
/// Este m\u00E9todo permite que seja alterado na base do emissor um registro de determinada Pessoa.
///  @param _id ID da Pessoa 
///
///  @param nome Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00E3o Social (Nome Empresarial)'. 
///
///  @param tipo C\u00F3digo de identifica\u00E7\u00E3o do tipo da Pessoa, sendo: (\"PF\": Pessoa F\u00EDsica), (\"PJ\": Pessoa Jur\u00EDdica). 
///
///  @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. Essa data deve ser informada no formato aaaa-MM-dd. 
///
///  @param cpf N\u00FAmero do CPF, quando PF. (optional)
///
///  @param cnpj N\u00FAmero do CNPJ, quando PJ. (optional)
///
///  @param sexo C\u00F3digo de identifica\u00E7\u00E3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00E3o Especificado). (optional)
///
///  @param numeroIdentidade N\u00FAmero da Identidade. (optional)
///
///  @param orgaoExpedidorIdentidade Org\u00E3o expedidor do Identidade. (optional)
///
///  @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade (optional)
///
///  @param dataEmissaoIdentidade Data emiss\u00E3o da Identidade. (optional)
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) alterarUsingPUT14WithId: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    dataNascimento: (NSString*) dataNascimento
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT14`"];
    }
    
    // verify the required parameter 'nome' is set
    if (nome == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nome` when calling `alterarUsingPUT14`"];
    }
    
    // verify the required parameter 'tipo' is set
    if (tipo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipo` when calling `alterarUsingPUT14`"];
    }
    
    // verify the required parameter 'dataNascimento' is set
    if (dataNascimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataNascimento` when calling `alterarUsingPUT14`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas/{id}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    if (numeroIdentidade != nil) {
        
        queryParams[@"numeroIdentidade"] = numeroIdentidade;
    }
    if (orgaoExpedidorIdentidade != nil) {
        
        queryParams[@"orgaoExpedidorIdentidade"] = orgaoExpedidorIdentidade;
    }
    if (unidadeFederativaIdentidade != nil) {
        
        queryParams[@"unidadeFederativaIdentidade"] = unidadeFederativaIdentidade;
    }
    if (dataEmissaoIdentidade != nil) {
        
        queryParams[@"dataEmissaoIdentidade"] = dataEmissaoIdentidade;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierPessoaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaResponse*)data, error);
                           }
          ];
}

///
/// Realiza a altera\u00E7\u00E3o de um determinado Telefone
/// Este m\u00E9todo permite que seja alterado um determinado Telefone na base de dados do Emissor.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Telefone (id). 
///
///  @param idTipoTelefone C\u00F3digo de Identifica\u00E7\u00E3o do Tipo do Telefone (id). (optional)
///
///  @param ddd C\u00F3digo DDD do telefone (id). (optional)
///
///  @param telefone N\u00FAmero do telefone. (optional)
///
///  @param ramal N\u00FAmero do ramal. (optional)
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) alterarUsingPUT16WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT16`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (idTipoTelefone != nil) {
        
        queryParams[@"idTipoTelefone"] = idTipoTelefone;
    }
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
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
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PierTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneResponse*)data, error);
                           }
          ];
}

///
/// Atualiza os dados de um determinado Endere\u00E7o
/// Este m\u00E9todo permite que seja alterado na base do emissor um ou mais registros ligados a um determinado Endere\u00E7o.
///  @param _id id 
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa a qual o endere\u00E7o pertence (id) (optional)
///
///  @param idTipoEndereco C\u00F3digo de Identifica\u00E7\u00E3o da Tipo Endere\u00E7o (id) (optional)
///
///  @param cep Apresenta o C\u00F3digo de Endere\u00E7amento Postal (CEP) no formaro '58800000' (optional)
///
///  @param logradouro Apresenta o nome do Logradouro (optional)
///
///  @param numero Apresenta o n\u00FAmero do endere\u00E7o (optional)
///
///  @param complemento Apresenta descri\u00E7oes complementares referente ao endere\u00E7o (optional)
///
///  @param pontoReferencia Apresenta a descri\u00E7\u00E3o de ponto de refer\u00EAncia do endere\u00E7o (optional)
///
///  @param bairro Apresenta nome do bairro (optional)
///
///  @param cidade Apresenta nome da cidade (optional)
///
///  @param uf Apresenta sigla da Unidade Federativa (optional)
///
///  @param pais Apresenta nome do Pais (optional)
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) alterarUsingPUT5WithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    idTipoEndereco: (NSNumber*) idTipoEndereco
    cep: (NSString*) cep
    logradouro: (NSString*) logradouro
    numero: (NSNumber*) numero
    complemento: (NSString*) complemento
    pontoReferencia: (NSString*) pontoReferencia
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT5`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/enderecos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        
        queryParams[@"id"] = _id;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idTipoEndereco != nil) {
        
        queryParams[@"idTipoEndereco"] = idTipoEndereco;
    }
    if (cep != nil) {
        
        queryParams[@"cep"] = cep;
    }
    if (logradouro != nil) {
        
        queryParams[@"logradouro"] = logradouro;
    }
    if (numero != nil) {
        
        queryParams[@"numero"] = numero;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
    }
    if (pontoReferencia != nil) {
        
        queryParams[@"pontoReferencia"] = pontoReferencia;
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
                                    method: @"PUT"
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

///
/// Permite atribuir um documento para uma Conta
/// Este m\u00E9todo permite que seja atribu\u00EDdo a uma determinada Conta um documento que esteja armazenado no PIER Cloud, informando qual o tipo do documento e o seu respectivo id.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da Conta 
///
///  @param body C\u00F3digo de Identifica\u00E7\u00E3o do Arquivo 
///
///  @returns NSObject*
///
-(NSNumber*) atribuirAssinaturaClienteUsingPOSTWithId: (NSNumber*) _id
    body: (PierAtribuirAssinaturaClientePersist*) body
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atribuirAssinaturaClienteUsingPOST`"];
    }
    
    // verify the required parameter 'body' is set
    if (body == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `body` when calling `atribuirAssinaturaClienteUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/atribuir-assinatura-cliente"];

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
    
    bodyParam = body;
    

    
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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSObject*)data, error);
                           }
          ];
}

///
/// Atualiza conta integrada com o emissor
/// Este recurso permite a atualiza\u00E7\u00E3o de uma conta integrada com o emissor.
///  @param _id C\u00F3digo de identifica\u00E7\u00E3o da conta (id). 
///
///  @param body Descri\u00E7\u00E3o do canal de entrada (optional)
///
///  @returns PierIntegracaoEmissorResponse*
///
-(NSNumber*) atualizarUsingPOSTWithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atualizarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/atualizar-registro-integracao"];

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
    
    bodyParam = body;
    

    
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
                              responseType: @"PierIntegracaoEmissorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierIntegracaoEmissorResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de Adicionais para uma Conta
/// Este m\u00E9todo permite que sejam cadastrados um portador Adicional para uma determinada Conta.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da conta (id). 
///
///  @param persist persist 
///
///  @returns PierAdicionalDetalheResponse*
///
-(NSNumber*) cadastrarUsingPOSTWithId: (NSNumber*) _id
    persist: (PierAdicionalPersist*) persist
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cadastrarUsingPOST`"];
    }
    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `cadastrarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/cadastrar-adicional"];

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
    
    bodyParam = persist;
    

    
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
                              responseType: @"PierAdicionalDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAdicionalDetalheResponse*)data, error);
                           }
          ];
}

///
/// Consulta Adicional de uma Conta
/// Este m\u00E9todo permite que seja consultado um portador Adicional de uma determinada Conta.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da conta (id). 
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da pessoa (id). 
///
///  @returns PierAdicionalDetalheResponse*
///
-(NSNumber*) consultarUsingGET1WithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET1`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `consultarUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/adicionais/{idPessoa}"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idPessoa != nil) {
        pathParams[@"idPessoa"] = idPessoa;
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
                              responseType: @"PierAdicionalDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAdicionalDetalheResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Endere\u00E7o
/// Este m\u00E9todo permite consultar um determinado Endere\u00E7o a partir do seu c\u00F3digo de identifica\u00E7\u00E3o (id).
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Endere\u00E7o (id). 
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) consultarUsingGET16WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET16`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/enderecos/{id}"];

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
                              responseType: @"PierEnderecoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEnderecoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os detalhes de uma determinada Pessoa
/// Este m\u00E9todo permite a consulta dos detalhes de uma Pessoa existentes na base de dados do Emissor.
///  @param _id ID da Pessoa 
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) consultarUsingGET24WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET24`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-detalhes/{id}"];

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
                              responseType: @"PierPessoaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de uma determinada Pessoa
/// Este m\u00E9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///  @param _id ID da Pessoa 
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) consultarUsingGET25WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET25`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas/{id}"];

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
                              responseType: @"PierPessoaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Telefone
/// Este m\u00E9todo permite consultar um determinado Telefone a partir do seu c\u00F3digo de identifica\u00E7\u00E3o (id).
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Telefone (id). 
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) consultarUsingGET31WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET31`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones/{id}"];

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
                              responseType: @"PierTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneResponse*)data, error);
                           }
          ];
}

///
/// Inativa Adicional de uma Conta
/// Este m\u00E9todo permite que seja inativado um portador Adicional de uma determinada Conta.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da conta (id). 
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da pessoa (id). 
///
///  @returns NSString*
///
-(NSNumber*) inativarUsingPOSTWithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `inativarUsingPOST`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `inativarUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/adicionais/{idPessoa}/inativar"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (idPessoa != nil) {
        pathParams[@"idPessoa"] = idPessoa;
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
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((NSString*)data, error);
                           }
          ];
}

///
/// Listar s\u00F3cios de uma pessoa jur\u00EDdica
/// Lista os s\u00F3cios vinculados \u00E0 uma Pessoa Jur\u00EDdica cadastrada.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa Jur\u00EDdica 
///
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPagePessoaResponse*
///
-(NSNumber*) listarSociosUsingGETWithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPagePessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarSociosUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/clientes-pessoas-juridicas/{id}/socios"];

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
                              responseType: @"PierPagePessoaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePessoaResponse*)data, error);
                           }
          ];
}

///
/// Lista os Adicionais de uma Conta
/// Este m\u00E9todo permite que sejam listados portadores Adicionais de uma determinada Conta.
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da conta (id). 
///
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @returns PierAdicionalResponse*
///
-(NSNumber*) listarUsingGET1WithId: (NSNumber*) _id
    sort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierAdicionalResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/adicionais"];

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
                              responseType: @"PierAdicionalResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAdicionalResponse*)data, error);
                           }
          ];
}

///
/// Lista os Endere\u00E7os cadastrados para o Emissor
/// Este m\u00E9todo permite que sejam listados os Endere\u00E7os existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Endere\u00E7o (id). (optional)
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa a qual o endere\u00E7o pertence (id) (optional)
///
///  @param idTipoEndereco C\u00F3digo de Identifica\u00E7\u00E3o da Tipo Endere\u00E7o (id) (optional)
///
///  @param cep Apresenta o C\u00F3digo de Endere\u00E7amento Postal (CEP) (optional)
///
///  @param logradouro Apresenta o nome do Logradouro (optional)
///
///  @param numero Apresenta o n\u00FAmero do endere\u00E7o (optional)
///
///  @param complemento Apresenta descri\u00E7oes complementares referente ao endere\u00E7o (optional)
///
///  @param pontoReferencia Apresenta a descri\u00E7\u00E3o de ponto de refer\u00EAncia do endere\u00E7o (optional)
///
///  @param bairro Apresenta nome do bairro (optional)
///
///  @param cidade Apresenta nome da cidade (optional)
///
///  @param uf Apresenta sigla da Unidade Federativa (optional)
///
///  @param pais Apresenta nome do Pais (optional)
///
///  @param dataInclusao Apresenta a data em que fora cadastrado o Endere\u00E7o (optional)
///
///  @param dataUltimaAtualizacao Data em que fora realizada a \u00FAltima mudan\u00E7a neste registro de endere\u00E7o. Quando n\u00E3o tiver ocorrido mudan\u00E7a, conter\u00E1 a mesma informa\u00E7\u00E3o que o campo dataInclusao (optional)
///
///  @returns PierPageEnderecoResponse*
///
-(NSNumber*) listarUsingGET21WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    idTipoEndereco: (NSNumber*) idTipoEndereco
    cep: (NSString*) cep
    logradouro: (NSString*) logradouro
    numero: (NSNumber*) numero
    complemento: (NSString*) complemento
    pontoReferencia: (NSString*) pontoReferencia
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    dataInclusao: (NSString*) dataInclusao
    dataUltimaAtualizacao: (NSString*) dataUltimaAtualizacao
    completionHandler: (void (^)(PierPageEnderecoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/enderecos"];

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
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idTipoEndereco != nil) {
        
        queryParams[@"idTipoEndereco"] = idTipoEndereco;
    }
    if (cep != nil) {
        
        queryParams[@"cep"] = cep;
    }
    if (logradouro != nil) {
        
        queryParams[@"logradouro"] = logradouro;
    }
    if (numero != nil) {
        
        queryParams[@"numero"] = numero;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
    }
    if (pontoReferencia != nil) {
        
        queryParams[@"pontoReferencia"] = pontoReferencia;
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
    if (dataInclusao != nil) {
        
        queryParams[@"dataInclusao"] = dataInclusao;
    }
    if (dataUltimaAtualizacao != nil) {
        
        queryParams[@"dataUltimaAtualizacao"] = dataUltimaAtualizacao;
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
                              responseType: @"PierPageEnderecoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageEnderecoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Detalhes das Pessoas cadastradas no Emissor
/// Este m\u00E9todo permite que sejam listadas od detalhes das Pessoas existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param idPessoa C\u00F3digo identificador da pessoa (optional)
///
///  @param nomeMae Apresenta o nome da m\u00E3e da pessoa fisica (optional)
///
///  @param idEstadoCivil Id Estado civil da pessoa fisica (optional)
///
///  @param idProfissao Profiss\u00E3o da pessoa fisica (optional)
///
///  @param idNaturezaOcupacao Id Natureza Ocupa\u00E7\u00E3o da pessoa fisica (optional)
///
///  @param idNacionalidade Id Nacionalidade da pessoa fisica (optional)
///
///  @param numeroBanco N\u00FAmero do Banco. (optional)
///
///  @param numeroAgencia N\u00FAmero da ag\u00EAncia. (optional)
///
///  @param numeroContaCorrente N\u00FAmero da conta corrente. (optional)
///
///  @param email Email da pessoa fisica (optional)
///
///  @param nomeEmpresa Nome que deve ser impresso no cart\u00E3o (optional)
///
///  @returns PierPagePessoaDetalheResponse*
///
-(NSNumber*) listarUsingGET31WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    idPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroBanco: (NSNumber*) numeroBanco
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPagePessoaDetalheResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-detalhes"];

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
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (nomeMae != nil) {
        
        queryParams[@"nomeMae"] = nomeMae;
    }
    if (idEstadoCivil != nil) {
        
        queryParams[@"idEstadoCivil"] = idEstadoCivil;
    }
    if (idProfissao != nil) {
        
        queryParams[@"idProfissao"] = idProfissao;
    }
    if (idNaturezaOcupacao != nil) {
        
        queryParams[@"idNaturezaOcupacao"] = idNaturezaOcupacao;
    }
    if (idNacionalidade != nil) {
        
        queryParams[@"idNacionalidade"] = idNacionalidade;
    }
    if (numeroBanco != nil) {
        
        queryParams[@"numeroBanco"] = numeroBanco;
    }
    if (numeroAgencia != nil) {
        
        queryParams[@"numeroAgencia"] = numeroAgencia;
    }
    if (numeroContaCorrente != nil) {
        
        queryParams[@"numeroContaCorrente"] = numeroContaCorrente;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (nomeEmpresa != nil) {
        
        queryParams[@"nomeEmpresa"] = nomeEmpresa;
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
                              responseType: @"PierPagePessoaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePessoaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Lista as Pessoas cadastradas no Emissor
/// Este m\u00E9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa (id). (optional)
///
///  @param nome Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00E3o Social (Nome Empresarial)'. (optional)
///
///  @param tipo C\u00F3digo de identifica\u00E7\u00E3o do tipo da Pessoa, sendo: (\"PF\": Pessoa F\u00EDsica), (\"PJ\": Pessoa Jur\u00EDdica). (optional)
///
///  @param cpf N\u00FAmero do CPF, quando PF. (optional)
///
///  @param cnpj N\u00FAmero do CNPJ, quando PJ. (optional)
///
///  @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. (optional)
///
///  @param sexo C\u00F3digo de identifica\u00E7\u00E3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00E3o Especificado). (optional)
///
///  @param numeroIdentidade N\u00FAmero da Identidade (optional)
///
///  @param orgaoExpedidorIdentidade Org\u00E3o expedidor do RG. (optional)
///
///  @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade (optional)
///
///  @param dataEmissaoIdentidade Data emiss\u00E3o da identidade no formato aaaa-MM-dd (optional)
///
///  @returns PierPagePessoaResponse*
///
-(NSNumber*) listarUsingGET32WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSString*) dataNascimento
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPagePessoaResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas"];

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
    if (numeroIdentidade != nil) {
        
        queryParams[@"numeroIdentidade"] = numeroIdentidade;
    }
    if (orgaoExpedidorIdentidade != nil) {
        
        queryParams[@"orgaoExpedidorIdentidade"] = orgaoExpedidorIdentidade;
    }
    if (unidadeFederativaIdentidade != nil) {
        
        queryParams[@"unidadeFederativaIdentidade"] = unidadeFederativaIdentidade;
    }
    if (dataEmissaoIdentidade != nil) {
        
        queryParams[@"dataEmissaoIdentidade"] = dataEmissaoIdentidade;
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
                              responseType: @"PierPagePessoaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePessoaResponse*)data, error);
                           }
          ];
}

///
/// Lista os Telefones cadastrados no Emissor
/// Este m\u00E9todo permite que sejam listados os Telefones existentes na base de dados do Emissor.
///  @param sort Tipo de ordena\u00E7\u00E3o dos registros. (optional)
///
///  @param page P\u00E1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00E7\u00E3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00F3digo de Identifica\u00E7\u00E3o do Telefone (id). (optional)
///
///  @param idTipoTelefone C\u00F3digo de Identifica\u00E7\u00E3o do Tipo do Telefone (id). (optional)
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa (id) a qual o telefone pertence. (optional)
///
///  @param ddd C\u00F3digo DDD do telefone (id). (optional)
///
///  @param telefone N\u00FAmero do telefone. (optional)
///
///  @param ramal N\u00FAmero do ramal. (optional)
///
///  @param status Apresenta o Status do Telefone, onde: '0': Inativo e '1': Ativo (optional)
///
///  @returns PierPageTelefoneResponse*
///
-(NSNumber*) listarUsingGET41WithSort: (NSArray* /* NSString */) sort
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    status: (NSNumber*) status
    completionHandler: (void (^)(PierPageTelefoneResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones"];

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
    if (idTipoTelefone != nil) {
        
        queryParams[@"idTipoTelefone"] = idTipoTelefone;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
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
                              responseType: @"PierPageTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTelefoneResponse*)data, error);
                           }
          ];
}

///
/// Cadastro de Conta e Pessoa Fisica
/// Permite realizar o cadastro de uma Conta para um cliente do tipo Pessoa F\u00EDsica, recebendo nesta opera\u00E7\u00E3o todos os dados cadastrais que se fazem necess\u00E1rios para isso. Uma vez criado, poder\u00E1 ser acionado o m\u00E9todo de 'Gera\u00E7\u00E3o de Cart\u00E3o' para o cliente e seus adicionais.
///  @param pessoaPersist pessoaPersist 
///
///  @returns PierPessoaFisicaAprovadaResponse*
///
-(NSNumber*) salvarPessoaFisicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaFisicaAprovadaPersist*) pessoaPersist
    completionHandler: (void (^)(PierPessoaFisicaAprovadaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'pessoaPersist' is set
    if (pessoaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pessoaPersist` when calling `salvarPessoaFisicaAprovadaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/clientes-pessoas-fisicas"];

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
    
    bodyParam = pessoaPersist;
    

    
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
                              responseType: @"PierPessoaFisicaAprovadaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaFisicaAprovadaResponse*)data, error);
                           }
          ];
}

///
/// Cadastro de Conta e Pessoa Jur\u00EDdica
/// Cadastro de Conta e Pessoa Jur\u00EDdica Permite realizar o cadastro de uma Conta para um cliente do tipo Pessoa Jur\u00EDdica, recebendo nesta opera\u00E7\u00E3o todos os dados cadastrais que se fazem necess\u00E1rios para isso, inclu\u00EDndo o registro de cada um dos s\u00F3cios. Uma vez criado, poder\u00E1 ser acionado o m\u00E9todo de 'Gera\u00E7\u00E3o de Cart\u00E3o' para o cliente e cada um dos s\u00F3cios vinculados.
///  @param pessoaPersist pessoaPersist 
///
///  @returns PierPessoaJuridicaAprovadaResponse*
///
-(NSNumber*) salvarPessoaJuridicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaJuridicaAprovadaPersist*) pessoaPersist
    completionHandler: (void (^)(PierPessoaJuridicaAprovadaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'pessoaPersist' is set
    if (pessoaPersist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `pessoaPersist` when calling `salvarPessoaJuridicaAprovadaUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/clientes-pessoas-juridicas"];

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
    
    bodyParam = pessoaPersist;
    

    
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
                              responseType: @"PierPessoaJuridicaAprovadaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaJuridicaAprovadaResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo Endere\u00E7o
/// Este m\u00E9todo permite que seja cadastrado um novo Endere\u00E7o na base de dados do Emissor.
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa a qual o endere\u00E7o pertence (id) (optional)
///
///  @param idTipoEndereco C\u00F3digo de Identifica\u00E7\u00E3o da Tipo Endere\u00E7o (id) (optional)
///
///  @param cep Apresenta o C\u00F3digo de Endere\u00E7amento Postal (CEP) no formaro '58800000' (optional)
///
///  @param logradouro Apresenta o nome do Logradouro (optional)
///
///  @param numero Apresenta o n\u00FAmero do endere\u00E7o (optional)
///
///  @param complemento Apresenta descri\u00E7oes complementares referente ao endere\u00E7o (optional)
///
///  @param pontoReferencia Apresenta a descri\u00E7\u00E3o de ponto de refer\u00EAncia do endere\u00E7o (optional)
///
///  @param bairro Apresenta nome do bairro (optional)
///
///  @param cidade Apresenta nome da cidade (optional)
///
///  @param uf Apresenta sigla da Unidade Federativa (optional)
///
///  @param pais Apresenta nome do Pais (optional)
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) salvarUsingPOST12WithIdPessoa: (NSNumber*) idPessoa
    idTipoEndereco: (NSNumber*) idTipoEndereco
    cep: (NSString*) cep
    logradouro: (NSString*) logradouro
    numero: (NSNumber*) numero
    complemento: (NSString*) complemento
    pontoReferencia: (NSString*) pontoReferencia
    bairro: (NSString*) bairro
    cidade: (NSString*) cidade
    uf: (NSString*) uf
    pais: (NSString*) pais
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/enderecos"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idTipoEndereco != nil) {
        
        queryParams[@"idTipoEndereco"] = idTipoEndereco;
    }
    if (cep != nil) {
        
        queryParams[@"cep"] = cep;
    }
    if (logradouro != nil) {
        
        queryParams[@"logradouro"] = logradouro;
    }
    if (numero != nil) {
        
        queryParams[@"numero"] = numero;
    }
    if (complemento != nil) {
        
        queryParams[@"complemento"] = complemento;
    }
    if (pontoReferencia != nil) {
        
        queryParams[@"pontoReferencia"] = pontoReferencia;
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
                              responseType: @"PierEnderecoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierEnderecoResponse*)data, error);
                           }
          ];
}

///
/// Inclui a conta como registro para integra\u00E7\u00E3o
/// Este recurso permite incluir uma conta como registro para integra\u00E7\u00E3o.
///  @param _id C\u00F3digo de identifica\u00E7\u00E3o da conta (id). 
///
///  @param body Descri\u00E7\u00E3o do canal de entrada (optional)
///
///  @returns PierIntegracaoEmissorResponse*
///
-(NSNumber*) salvarUsingPOST14WithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `salvarUsingPOST14`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/contas/{id}/incluir-registro-integracao"];

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
    
    bodyParam = body;
    

    
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
                              responseType: @"PierIntegracaoEmissorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierIntegracaoEmissorResponse*)data, error);
                           }
          ];
}

///
/// Salvar os detalhes de uma determinada Pessoa
/// Este m\u00E9todo permite que seja incluido na base do emissor os detalhes de uma determinada Pessoa.
///  @param idPessoa Apresenta o c\u00F3digo identificador da pessoa 
///
///  @param nomeMae Apresenta o nome da m\u00E3e da pessoa fisica (optional)
///
///  @param idEstadoCivil Id Estado civil da pessoa fisica (optional)
///
///  @param idProfissao Profiss\u00E3o da pessoa fisica (optional)
///
///  @param idNaturezaOcupacao Id Natureza Ocupa\u00E7\u00E3o da pessoa fisica (optional)
///
///  @param idNacionalidade Id Nacionalidade da pessoa fisica (optional)
///
///  @param numeroBanco N\u00FAmero do banco. (optional)
///
///  @param numeroAgencia N\u00FAmero da ag\u00EAncia. (optional)
///
///  @param numeroContaCorrente N\u00FAmero da conta corrente. (optional)
///
///  @param email Email da pessoa fisica (optional)
///
///  @param nomeEmpresa Nome que deve ser impresso no cart\u00E3o (optional)
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) salvarUsingPOST19WithIdPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    idProfissao: (NSString*) idProfissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroBanco: (NSNumber*) numeroBanco
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `salvarUsingPOST19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas-detalhes"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (nomeMae != nil) {
        
        queryParams[@"nomeMae"] = nomeMae;
    }
    if (idEstadoCivil != nil) {
        
        queryParams[@"idEstadoCivil"] = idEstadoCivil;
    }
    if (idProfissao != nil) {
        
        queryParams[@"idProfissao"] = idProfissao;
    }
    if (idNaturezaOcupacao != nil) {
        
        queryParams[@"idNaturezaOcupacao"] = idNaturezaOcupacao;
    }
    if (idNacionalidade != nil) {
        
        queryParams[@"idNacionalidade"] = idNacionalidade;
    }
    if (numeroBanco != nil) {
        
        queryParams[@"numeroBanco"] = numeroBanco;
    }
    if (numeroAgencia != nil) {
        
        queryParams[@"numeroAgencia"] = numeroAgencia;
    }
    if (numeroContaCorrente != nil) {
        
        queryParams[@"numeroContaCorrente"] = numeroContaCorrente;
    }
    if (email != nil) {
        
        queryParams[@"email"] = email;
    }
    if (nomeEmpresa != nil) {
        
        queryParams[@"nomeEmpresa"] = nomeEmpresa;
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
                              responseType: @"PierPessoaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um nova Pessoa
/// Este m\u00E9todo permite que seja cadastrado uma nova Pessoa na base de dados do Emissor.
///  @param nome Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00E3o Social (Nome Empresarial)'. 
///
///  @param tipo C\u00F3digo de identifica\u00E7\u00E3o do tipo da Pessoa, sendo: (\"PF\": Pessoa F\u00EDsica), (\"PJ\": Pessoa Jur\u00EDdica). 
///
///  @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. Essa data deve ser informada no formato aaaa-MM-dd. 
///
///  @param cpf N\u00FAmero do CPF, quando PF. (optional)
///
///  @param cnpj N\u00FAmero do CNPJ, quando PJ. (optional)
///
///  @param sexo C\u00F3digo de identifica\u00E7\u00E3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00E3o Especificado). (optional)
///
///  @param numeroIdentidade N\u00FAmero da Identidade. (optional)
///
///  @param orgaoExpedidorIdentidade Org\u00E3o expedidor do Identidade. (optional)
///
///  @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade (optional)
///
///  @param dataEmissaoIdentidade Data emiss\u00E3o da Identidade. (optional)
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) salvarUsingPOST20WithNome: (NSString*) nome
    tipo: (NSString*) tipo
    dataNascimento: (NSString*) dataNascimento
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'nome' is set
    if (nome == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nome` when calling `salvarUsingPOST20`"];
    }
    
    // verify the required parameter 'tipo' is set
    if (tipo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipo` when calling `salvarUsingPOST20`"];
    }
    
    // verify the required parameter 'dataNascimento' is set
    if (dataNascimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataNascimento` when calling `salvarUsingPOST20`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    if (numeroIdentidade != nil) {
        
        queryParams[@"numeroIdentidade"] = numeroIdentidade;
    }
    if (orgaoExpedidorIdentidade != nil) {
        
        queryParams[@"orgaoExpedidorIdentidade"] = orgaoExpedidorIdentidade;
    }
    if (unidadeFederativaIdentidade != nil) {
        
        queryParams[@"unidadeFederativaIdentidade"] = unidadeFederativaIdentidade;
    }
    if (dataEmissaoIdentidade != nil) {
        
        queryParams[@"dataEmissaoIdentidade"] = dataEmissaoIdentidade;
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
                              responseType: @"PierPessoaResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPessoaResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo Telefone
/// Este m\u00E9todo permite que seja cadastrado um novo Telefone na base de dados do Emissor.
///  @param idTipoTelefone C\u00F3digo de Identifica\u00E7\u00E3o do Tipo do Telefone (id). (optional)
///
///  @param idPessoa C\u00F3digo de Identifica\u00E7\u00E3o da Pessoa (id) a qual o telefone pertence. (optional)
///
///  @param ddd C\u00F3digo DDD do telefone (id). (optional)
///
///  @param telefone N\u00FAmero do telefone. (optional)
///
///  @param ramal N\u00FAmero do ramal. (optional)
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) salvarUsingPOST23WithIdTipoTelefone: (NSNumber*) idTipoTelefone
    idPessoa: (NSNumber*) idPessoa
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/telefones"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idTipoTelefone != nil) {
        
        queryParams[@"idTipoTelefone"] = idTipoTelefone;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (ddd != nil) {
        
        queryParams[@"ddd"] = ddd;
    }
    if (telefone != nil) {
        
        queryParams[@"telefone"] = telefone;
    }
    if (ramal != nil) {
        
        queryParams[@"ramal"] = ramal;
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
                              responseType: @"PierTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTelefoneResponse*)data, error);
                           }
          ];
}



@end
