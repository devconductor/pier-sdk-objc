#import "PierCadastrosGeraisApi.h"
#import "PierQueryParamCollection.h"
#import "PierEnderecoResponse.h"
#import "PierPessoaDetalheResponse.h"
#import "PierPessoaResponse.h"
#import "PierTelefoneResponse.h"
#import "PierProdutoDetalhesResponse.h"
#import "PierParametroProdutoResponse.h"
#import "PierTaxaAntecipacaoRequest.h"
#import "PierOrigemComercialResponse.h"
#import "PierAtendimentoClienteResponse.h"
#import "PierBancoResponse.h"
#import "PierPageTipoAjusteResponse.h"
#import "PierPageTipoBoletoResponse.h"
#import "PierTipoEnderecoResponse.h"
#import "PierTipoTelefoneResponse.h"
#import "PierPageContaDetalheResponse.h"
#import "PierPageCampoCodificadoDescricaoResponse.h"
#import "PierHistoricoTelefoneResponse.h"
#import "PierPageOrigemComercialResponse.h"
#import "PierPageAtendimentoClienteResponse.h"
#import "PierPagePessoaDetalheResponse.h"
#import "PierPagePessoaResponse.h"
#import "PierPagePortadorResponse.h"
#import "PierPageProdutoResponse.h"
#import "PierPageBancoResponse.h"
#import "PierPageTelefoneResponse.h"
#import "PierPageTipoEnderecoResponse.h"
#import "PierPageTipoTelefoneResponse.h"
#import "PierPageEnderecoResponse.h"
#import "PierPessoaFisicaAprovadaPersist.h"
#import "PierPessoaFisicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaPersist.h"


@interface PierCadastrosGeraisApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierCadastrosGeraisApi

static PierCadastrosGeraisApi* singletonAPI = nil;

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

+(PierCadastrosGeraisApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCadastrosGeraisApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierCadastrosGeraisApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierCadastrosGeraisApi alloc] init];
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
/// Atualiza os dados de um determinado Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor um ou mais registros ligados a um determinado Endere\u00C3\u00A7o.
///  @param _id id 
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o endere\u00C3\u00A7o pertence (id) (optional)
///
///  @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Tipo Endere\u00C3\u00A7o (id) (optional)
///
///  @param cep Apresenta o C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP) no formaro '58800000' (optional)
///
///  @param logradouro Apresenta o nome do Logradouro (optional)
///
///  @param numero Apresenta o n\u00C3\u00BAmero do endere\u00C3\u00A7o (optional)
///
///  @param complemento Apresenta descri\u00C3\u00A7oes complementares referente ao endere\u00C3\u00A7o (optional)
///
///  @param pontoReferencia Apresenta a descri\u00C3\u00A7\u00C3\u00A3o de ponto de refer\u00C3\u00AAncia do endere\u00C3\u00A7o (optional)
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
-(NSNumber*) alterarUsingPUT1WithId: (NSNumber*) _id
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
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT1`"];
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
/// Atualiza os detalhes de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor os detalhes de uma determinada Pessoa.
///  @param _id ID da Pessoa 
///
///  @param nomeMae Apresenta o nome da m\u00C3\u00A3e da pessoa fisica (optional)
///
///  @param idEstadoCivil Id Estado civil da pessoa fisica (optional)
///
///  @param profissao Profiss\u00C3\u00A3o da pessoa fisica (optional)
///
///  @param idNaturezaOcupacao Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica (optional)
///
///  @param idNacionalidade Id Nacionalidade da pessoa fisica (optional)
///
///  @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia. (optional)
///
///  @param numeroContaCorrente N\u00C3\u00BAmero da conta corrente. (optional)
///
///  @param email Email da pessoa fisica (optional)
///
///  @param nomeEmpresa Nome que deve ser impresso no cart\u00C3\u00A3o (optional)
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) alterarUsingPUT4WithId: (NSNumber*) _id
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    profissao: (NSString*) profissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT4`"];
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
    if (profissao != nil) {
        
        queryParams[@"profissao"] = profissao;
    }
    if (idNaturezaOcupacao != nil) {
        
        queryParams[@"idNaturezaOcupacao"] = idNaturezaOcupacao;
    }
    if (idNacionalidade != nil) {
        
        queryParams[@"idNacionalidade"] = idNacionalidade;
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
/// Este m\u00C3\u00A9todo permite que seja alterado na base do emissor um registro de determinada Pessoa.
///  @param _id ID da Pessoa 
///
///  @param nome Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)'. 
///
///  @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\"PF\": Pessoa F\u00C3\u00ADsica), (\"PJ\": Pessoa Jur\u00C3\u00ADdica). 
///
///  @param cpf N\u00C3\u00BAmero do CPF, quando PF. (optional)
///
///  @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
///
///  @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. Essa data deve ser informada no formato aaaa-MM-dd. (optional)
///
///  @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00C3\u00A3o Especificado). (optional)
///
///  @param numeroIdentidade N\u00C3\u00BAmero da Identidade. (optional)
///
///  @param orgaoExpedidorIdentidade Org\u00C3\u00A3o expedidor do Identidade. (optional)
///
///  @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade (optional)
///
///  @param dataEmissaoIdentidade Data emiss\u00C3\u00A3o da Identidade. (optional)
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) alterarUsingPUT5WithId: (NSNumber*) _id
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
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT5`"];
    }
    
    // verify the required parameter 'nome' is set
    if (nome == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nome` when calling `alterarUsingPUT5`"];
    }
    
    // verify the required parameter 'tipo' is set
    if (tipo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipo` when calling `alterarUsingPUT5`"];
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
/// Realiza a altera\u00C3\u00A7\u00C3\u00A3o de um determinado Telefone
/// Este m\u00C3\u00A9todo permite que seja alterado um determinado Telefone na base de dados do Emissor.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id). 
///
///  @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id). (optional)
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). (optional)
///
///  @param telefone N\u00C3\u00BAmero do telefone. (optional)
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) alterarUsingPUT6WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT6`"];
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
/// Ativa o par\u00C3\u00A2metro uso exterior para o produto
/// Este m\u00C3\u00A9todo permite ativar o uso no exterior para o produto atrav\u00C3\u00A9s do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id) 
///
///  @returns PierProdutoDetalhesResponse*
///
-(NSNumber*) ativarUsoExteriorUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierProdutoDetalhesResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `ativarUsoExteriorUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}/ativar-uso-exterior"];

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
                              responseType: @"PierProdutoDetalhesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierProdutoDetalhesResponse*)data, error);
                           }
          ];
}

///
/// Configura a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
/// Este recurso permite configurar a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id Id Produto 
///
///  @param taxaAntecipacaoRequest taxaAntecipacaoRequest 
///
///  @returns PierParametroProdutoResponse*
///
-(NSNumber*) configurarTaxaAntecipacaoUsingPOSTWithId: (NSNumber*) _id
    taxaAntecipacaoRequest: (PierTaxaAntecipacaoRequest*) taxaAntecipacaoRequest
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `configurarTaxaAntecipacaoUsingPOST`"];
    }
    
    // verify the required parameter 'taxaAntecipacaoRequest' is set
    if (taxaAntecipacaoRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `taxaAntecipacaoRequest` when calling `configurarTaxaAntecipacaoUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}/configurar-taxa-antecipacao"];

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
    
    bodyParam = taxaAntecipacaoRequest;
    

    
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
                              responseType: @"PierParametroProdutoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierParametroProdutoResponse*)data, error);
                           }
          ];
}

///
/// Opera\u00C3\u00A7\u00C3\u00A3o utilizada para consultar uma determinada Origem Comercial
/// Este m\u00C3\u00A9todo permite que sejam listados os registros de uma determinada Origem Comercial existente na base do emissor. Para isso, \u00C3\u00A9 preciso informar o seu respectivo c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id ID da Origem Comercial 
///
///  @returns PierOrigemComercialResponse*
///
-(NSNumber*) consultarOrigemComercialUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierOrigemComercialResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarOrigemComercialUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/origens-comerciais/{id}"];

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
                              responseType: @"PierOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// Consulta a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto
/// Este recurso permite consultar a Taxa de Antecipa\u00C3\u00A7\u00C3\u00A3o de um Produto, a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id Id Produto 
///
///  @param tipoTransacao Tipo da Transa\u00C3\u00A7\u00C3\u00A3o (ON-US ou OFF-US) 
///
///  @returns PierParametroProdutoResponse*
///
-(NSNumber*) consultarTaxaAntecipacaoUsingGETWithId: (NSNumber*) _id
    tipoTransacao: (NSString*) tipoTransacao
    completionHandler: (void (^)(PierParametroProdutoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarTaxaAntecipacaoUsingGET`"];
    }
    
    // verify the required parameter 'tipoTransacao' is set
    if (tipoTransacao == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipoTransacao` when calling `consultarTaxaAntecipacaoUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}/consultar-taxa-antecipacao"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (tipoTransacao != nil) {
        
        queryParams[@"tipoTransacao"] = tipoTransacao;
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
                              responseType: @"PierParametroProdutoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierParametroProdutoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Atendimento
/// Este m\u00C3\u00A9todo permite consultar os par\u00C3\u00A2metros de um determinado Atendimento a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (idAtendimento).
///  @param _id C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do atendimento cliente (id). 
///
///  @returns PierAtendimentoClienteResponse*
///
-(NSNumber*) consultarUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierAtendimentoClienteResponse* output, NSError* error)) handler {

    
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
                              responseType: @"PierAtendimentoClienteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAtendimentoClienteResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Banco
/// Este m\u00C3\u00A9todo permite consultar um determinado Banco a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Banco (id). 
///
///  @returns PierBancoResponse*
///
-(NSNumber*) consultarUsingGET1WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierBancoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET1`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bancos/{id}"];

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
                              responseType: @"PierBancoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierBancoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///  @param _id ID da Pessoa 
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) consultarUsingGET10WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET10`"];
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
/// Apresenta os dados de um determinado Produto
/// Este m\u00C3\u00A9todo permite consultar um determinado Produto a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id) 
///
///  @returns PierProdutoDetalhesResponse*
///
-(NSNumber*) consultarUsingGET11WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierProdutoDetalhesResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET11`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}"];

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
                              responseType: @"PierProdutoDetalhesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierProdutoDetalhesResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Telefone
/// Este m\u00C3\u00A9todo permite consultar um determinado Telefone a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id). 
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) consultarUsingGET15WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET15`"];
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
/// Lista os tipos de ajustes do emissor 
/// Este recurso permite que sejam listados os tipos de ajustes existentes na base de dados do emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo identificador do tipo de ajuste. (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo de ajuste. (optional)
///
///  @returns PierPageTipoAjusteResponse*
///
-(NSNumber*) consultarUsingGET17WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    completionHandler: (void (^)(PierPageTipoAjusteResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-ajustes"];

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
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
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
                              responseType: @"PierPageTipoAjusteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoAjusteResponse*)data, error);
                           }
          ];
}

///
/// Lista os tipos de boletos do emissor 
/// Este recurso permite que sejam listados os tipos de boletos existentes na base de dados do emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo identificador do tipo de boleto. (optional)
///
///  @param descricao Descri\u00C3\u00A7\u00C3\u00A3o do tipo de boleto. (optional)
///
///  @param banco C\u00C3\u00B3digo identificador do banco. (optional)
///
///  @returns PierPageTipoBoletoResponse*
///
-(NSNumber*) consultarUsingGET18WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    descricao: (NSString*) descricao
    banco: (NSNumber*) banco
    completionHandler: (void (^)(PierPageTipoBoletoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-boletos"];

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
    if (descricao != nil) {
        
        queryParams[@"descricao"] = descricao;
    }
    if (banco != nil) {
        
        queryParams[@"banco"] = banco;
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
                              responseType: @"PierPageTipoBoletoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoBoletoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Tipo de Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite consultar um determinado Tipo de Endere\u00C3\u00A7o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Endere\u00C3\u00A7o (id) 
///
///  @returns PierTipoEnderecoResponse*
///
-(NSNumber*) consultarUsingGET19WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET19`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-enderecos/{id}"];

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
                              responseType: @"PierTipoEnderecoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoEnderecoResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Tipo de Telefone
/// Este m\u00C3\u00A9todo permite consultar um determinado Tipo de Telefone a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id) 
///
///  @returns PierTipoTelefoneResponse*
///
-(NSNumber*) consultarUsingGET21WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTipoTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET21`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-telefones/{id}"];

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
                              responseType: @"PierTipoTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierTipoTelefoneResponse*)data, error);
                           }
          ];
}

///
/// Apresenta os dados de um determinado Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite consultar um determinado Endere\u00C3\u00A7o a partir do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id). 
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) consultarUsingGET5WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET5`"];
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
/// Este m\u00C3\u00A9todo permite a consulta dos detalhes de uma Pessoa existentes na base de dados do Emissor.
///  @param _id ID da Pessoa 
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) consultarUsingGET9WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET9`"];
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
/// Desativa o par\u00C3\u00A2metro uso exterior para o produto
/// Este m\u00C3\u00A9todo permite desativar o uso no exterior para o produto atrav\u00C3\u00A9s do seu c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o (id).
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id) 
///
///  @returns PierProdutoDetalhesResponse*
///
-(NSNumber*) desativarUsoExteriorUsingPOSTWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierProdutoDetalhesResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `desativarUsoExteriorUsingPOST`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos/{id}/desativar-uso-exterior"];

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
                              responseType: @"PierProdutoDetalhesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierProdutoDetalhesResponse*)data, error);
                           }
          ];
}

///
/// Lista as contas da pessoa
/// Permite listar as contas de um pessoa a partir do seu numero na receita federal.
///  @param numeroReceitaFederal N\u00C3\u00BAmero de identifica\u00C3\u00A7\u00C3\u00A3o do cliente na Receita Federal (CPF ou CNPJ) 
///
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageContaDetalheResponse*
///
-(NSNumber*) listarContasPorPessoaUsingGETWithNumeroReceitaFederal: (NSString*) numeroReceitaFederal
    page: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageContaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'numeroReceitaFederal' is set
    if (numeroReceitaFederal == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `numeroReceitaFederal` when calling `listarContasPorPessoaUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas/listar-contas"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (numeroReceitaFederal != nil) {
        
        queryParams[@"numeroReceitaFederal"] = numeroReceitaFederal;
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
                              responseType: @"PierPageContaDetalheResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageContaDetalheResponse*)data, error);
                           }
          ];
}

///
/// Lista os Estados C\u00C3\u00ADvis
/// Este m\u00C3\u00A9todo permite que sejam listados os Estados C\u00C3\u00ADvis na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageCampoCodificadoDescricaoResponse*
///
-(NSNumber*) listarEstadosCivisUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/estados-civis"];

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
                              responseType: @"PierPageCampoCodificadoDescricaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCampoCodificadoDescricaoResponse*)data, error);
                           }
          ];
}

///
/// Listar altera\u00C3\u00A7\u00C3\u00B5es de telefones realizadas nos \u00C3\u00BAltimos 60 dias
/// Este m\u00C3\u00A9todo permite verificar quais os telefones de um determinado que cliente que sofreram altera\u00C3\u00A7\u00C3\u00A3o nos \u00C3\u00BAltimos 60 dias.
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da pessoa (id). 
///
///  @returns PierHistoricoTelefoneResponse*
///
-(NSNumber*) listarHistoricoTelefonesUsingGETWithId: (NSNumber*) _id
    completionHandler: (void (^)(PierHistoricoTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `listarHistoricoTelefonesUsingGET`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/pessoas/{id}/historico-telefones"];

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
                              responseType: @"PierHistoricoTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierHistoricoTelefoneResponse*)data, error);
                           }
          ];
}

///
/// Lista nacionalidades
/// Este m\u00C3\u00A9todo permite que sejam listados as nacionalidades na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageCampoCodificadoDescricaoResponse*
///
-(NSNumber*) listarNacionalidadesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/nacionalidades"];

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
                              responseType: @"PierPageCampoCodificadoDescricaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCampoCodificadoDescricaoResponse*)data, error);
                           }
          ];
}

///
/// Lista as Ocupa\u00C3\u00A7\u00C3\u00B5es
/// Este m\u00C3\u00A9todo permite que sejam listados as naturezas de opera\u00C3\u00A7\u00C3\u00B5es na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageCampoCodificadoDescricaoResponse*
///
-(NSNumber*) listarNaturezasOcupacoesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/ocupacoes"];

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
                              responseType: @"PierPageCampoCodificadoDescricaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCampoCodificadoDescricaoResponse*)data, error);
                           }
          ];
}

///
/// Opera\u00C3\u00A7\u00C3\u00A3o utilizada para listar Origens Comerciais
/// Este m\u00C3\u00A9todo permite que sejam listadas as Origens Comerciais existentes na base do emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id Id da origem comercial (optional)
///
///  @param nome Nome da origem comercial (optional)
///
///  @param status Status da origem comercial (optional)
///
///  @returns PierPageOrigemComercialResponse*
///
-(NSNumber*) listarOrigensComerciaisUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    status: (NSNumber*) status
    completionHandler: (void (^)(PierPageOrigemComercialResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/origens-comerciais"];

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
                              responseType: @"PierPageOrigemComercialResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageOrigemComercialResponse*)data, error);
                           }
          ];
}

///
/// Lista profiss\u00C3\u00B5es
/// Este m\u00C3\u00A9todo permite que sejam listados as profiss\u00C3\u00B5es na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageCampoCodificadoDescricaoResponse*
///
-(NSNumber*) listarProfissoesUsingGETWithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageCampoCodificadoDescricaoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/profissoes"];

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
                              responseType: @"PierPageCampoCodificadoDescricaoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageCampoCodificadoDescricaoResponse*)data, error);
                           }
          ];
}

///
/// Lista todos os atendimentos
/// Este m\u00C3\u00A9todo permite que sejam listados todos os Registro de Atendimento, independente do Tipo.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idTipoAtendimento C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo de Atendimento (id) (optional)
///
///  @param idConta C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id). (optional)
///
///  @param nomeAtendente Apresenta o nome do Atendente que registrou o Atendimento. (optional)
///
///  @param dataAtendimento Apresenta a data em que o Atendimento foi realizado. (optional)
///
///  @returns PierPageAtendimentoClienteResponse*
///
-(NSNumber*) listarUsingGET1WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idTipoAtendimento: (NSNumber*) idTipoAtendimento
    idConta: (NSNumber*) idConta
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSString*) dataAtendimento
    completionHandler: (void (^)(PierPageAtendimentoClienteResponse* output, NSError* error)) handler {

    

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
                              responseType: @"PierPageAtendimentoClienteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageAtendimentoClienteResponse*)data, error);
                           }
          ];
}

///
/// Lista os Detalhes das Pessoas cadastradas no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listadas od detalhes das Pessoas existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idPessoa C\u00C3\u00B3digo identificador da pessoa (optional)
///
///  @param nomeMae Apresenta o nome da m\u00C3\u00A3e da pessoa fisica (optional)
///
///  @param idEstadoCivil Id Estado civil da pessoa fisica (optional)
///
///  @param profissao Profiss\u00C3\u00A3o da pessoa fisica (optional)
///
///  @param idNaturezaOcupacao Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica (optional)
///
///  @param idNacionalidade Id Nacionalidade da pessoa fisica (optional)
///
///  @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia. (optional)
///
///  @param numeroContaCorrente N\u00C3\u00BAmero da conta corrente. (optional)
///
///  @param email Email da pessoa fisica (optional)
///
///  @param nomeEmpresa Nome que deve ser impresso no cart\u00C3\u00A3o (optional)
///
///  @returns PierPagePessoaDetalheResponse*
///
-(NSNumber*) listarUsingGET14WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    profissao: (NSString*) profissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
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
    if (profissao != nil) {
        
        queryParams[@"profissao"] = profissao;
    }
    if (idNaturezaOcupacao != nil) {
        
        queryParams[@"idNaturezaOcupacao"] = idNaturezaOcupacao;
    }
    if (idNacionalidade != nil) {
        
        queryParams[@"idNacionalidade"] = idNacionalidade;
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
/// Este m\u00C3\u00A9todo permite que sejam listadas as Pessoas existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
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
///  @param numeroIdentidade N\u00C3\u00BAmero da Identidade (optional)
///
///  @param orgaoExpedidorIdentidade Org\u00C3\u00A3o expedidor do RG. (optional)
///
///  @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade (optional)
///
///  @param dataEmissaoIdentidade Data emiss\u00C3\u00A3o da identidade no formato aaaa-MM-dd (optional)
///
///  @returns PierPagePessoaResponse*
///
-(NSNumber*) listarUsingGET15WithPage: (NSNumber*) page
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
/// Lista os Portadores existentes
/// Este m\u00C3\u00A9todo permite que sejam listados os portadores cadastrados na base do emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param idConta C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta (id). (optional)
///
///  @param idProduto C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto (id). (optional)
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id). (optional)
///
///  @param idParentesco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Parentesco (id) (optional)
///
///  @param tipoPortador Apresenta o tipo do Portador do cart\u00C3\u00A3o, sendo: ('T': Titular, 'A': Adicional). (optional)
///
///  @param nomeImpresso Apresenta o nome a ser impresso no cart\u00C3\u00A3o. (optional)
///
///  @param idTipoCartao Apresenta o c\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo do cart\u00C3\u00A3o (id), que ser\u00C3\u00A1 utilizado para gerar os cart\u00C3\u00B5es deste portador, vinculados a sua respectiva conta atrav\u00C3\u00A9s do campo idConta. (optional)
///
///  @param flagAtivo Quanto ativa, indica que o cadastro do Portador est\u00C3\u00A1 ativo, em emissores que realizam este tipo de gest\u00C3\u00A3o. (optional)
///
///  @param dataCadastroPortador Apresenta a data em que o Portador fora cadastrado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. (optional)
///
///  @param dataCancelamentoPortador Apresenta a data em que o Portador fora cancelado, quando possuir esta informa\u00C3\u00A7\u00C3\u00A3o. (optional)
///
///  @returns PierPagePortadorResponse*
///
-(NSNumber*) listarUsingGET17WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    idConta: (NSNumber*) idConta
    idProduto: (NSNumber*) idProduto
    idPessoa: (NSNumber*) idPessoa
    idParentesco: (NSNumber*) idParentesco
    tipoPortador: (NSString*) tipoPortador
    nomeImpresso: (NSString*) nomeImpresso
    idTipoCartao: (NSNumber*) idTipoCartao
    flagAtivo: (NSNumber*) flagAtivo
    dataCadastroPortador: (NSString*) dataCadastroPortador
    dataCancelamentoPortador: (NSString*) dataCancelamentoPortador
    completionHandler: (void (^)(PierPagePortadorResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/portadores"];

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
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
    }
    if (idProduto != nil) {
        
        queryParams[@"idProduto"] = idProduto;
    }
    if (idPessoa != nil) {
        
        queryParams[@"idPessoa"] = idPessoa;
    }
    if (idParentesco != nil) {
        
        queryParams[@"idParentesco"] = idParentesco;
    }
    if (tipoPortador != nil) {
        
        queryParams[@"tipoPortador"] = tipoPortador;
    }
    if (nomeImpresso != nil) {
        
        queryParams[@"nomeImpresso"] = nomeImpresso;
    }
    if (idTipoCartao != nil) {
        
        queryParams[@"idTipoCartao"] = idTipoCartao;
    }
    if (flagAtivo != nil) {
        
        queryParams[@"flagAtivo"] = flagAtivo;
    }
    if (dataCadastroPortador != nil) {
        
        queryParams[@"dataCadastroPortador"] = dataCadastroPortador;
    }
    if (dataCancelamentoPortador != nil) {
        
        queryParams[@"dataCancelamentoPortador"] = dataCancelamentoPortador;
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
                              responseType: @"PierPagePortadorResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPagePortadorResponse*)data, error);
                           }
          ];
}

///
/// Lista os Produtos do Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Produtos existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param nome Descri\u00C3\u00A7\u00C3\u00A3o do Nome do Produto. (optional)
///
///  @param status Representa o Status do Produto, onde: (\"0\": Inativo), (\"1\": Ativo). (optional)
///
///  @param idFantasiaBasica C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Fantasia B\u00C3\u00A1sica (id) a qual o produto pertence. (optional)
///
///  @returns PierPageProdutoResponse*
///
-(NSNumber*) listarUsingGET18WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    nome: (NSString*) nome
    status: (NSNumber*) status
    idFantasiaBasica: (NSNumber*) idFantasiaBasica
    completionHandler: (void (^)(PierPageProdutoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/produtos"];

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
    if (nome != nil) {
        
        queryParams[@"nome"] = nome;
    }
    if (status != nil) {
        
        queryParams[@"status"] = status;
    }
    if (idFantasiaBasica != nil) {
        
        queryParams[@"idFantasiaBasica"] = idFantasiaBasica;
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
                              responseType: @"PierPageProdutoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageProdutoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Bancos cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Bancos existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @returns PierPageBancoResponse*
///
-(NSNumber*) listarUsingGET2WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    completionHandler: (void (^)(PierPageBancoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/bancos"];

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
                              responseType: @"PierPageBancoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageBancoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Telefones cadastrados no Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Telefones existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Telefone (id). (optional)
///
///  @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id). (optional)
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id) a qual o telefone pertence. (optional)
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). (optional)
///
///  @param telefone N\u00C3\u00BAmero do telefone. (optional)
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @param status Apresenta o Status do Telefone, onde: '0': Inativo e '1': Ativo (optional)
///
///  @returns PierPageTelefoneResponse*
///
-(NSNumber*) listarUsingGET22WithPage: (NSNumber*) page
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
/// Lista as op\u00C3\u00B5es de Tipos de Endere\u00C3\u00A7os do Emissor 
/// Este m\u00C3\u00A9todo permite que sejam listados os Tipos de Endere\u00C3\u00A7os existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Endere\u00C3\u00A7o (id) (optional)
///
///  @param nome Nome do Tipo do Endere\u00C3\u00A7o (optional)
///
///  @returns PierPageTipoEnderecoResponse*
///
-(NSNumber*) listarUsingGET24WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageTipoEnderecoResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-enderecos"];

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
                              responseType: @"PierPageTipoEnderecoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoEnderecoResponse*)data, error);
                           }
          ];
}

///
/// Lista os Tipos de Telefones
/// Este m\u00C3\u00A9todo permite que sejam listados os Tipos de Telefones existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id). (optional)
///
///  @param nome Nome do Tipo do Telefone (optional)
///
///  @returns PierPageTipoTelefoneResponse*
///
-(NSNumber*) listarUsingGET26WithPage: (NSNumber*) page
    limit: (NSNumber*) limit
    _id: (NSNumber*) _id
    nome: (NSString*) nome
    completionHandler: (void (^)(PierPageTipoTelefoneResponse* output, NSError* error)) handler {

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/tipos-telefones"];

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
                              responseType: @"PierPageTipoTelefoneResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierPageTipoTelefoneResponse*)data, error);
                           }
          ];
}

///
/// Lista os Endere\u00C3\u00A7os cadastrados para o Emissor
/// Este m\u00C3\u00A9todo permite que sejam listados os Endere\u00C3\u00A7os existentes na base de dados do Emissor.
///  @param page P\u00C3\u00A1gina solicitada (Default = 0) (optional)
///
///  @param limit Limite de elementos por solicita\u00C3\u00A7\u00C3\u00A3o (Default = 50, Max = 50) (optional)
///
///  @param _id C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Endere\u00C3\u00A7o (id). (optional)
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o endere\u00C3\u00A7o pertence (id) (optional)
///
///  @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Tipo Endere\u00C3\u00A7o (id) (optional)
///
///  @param cep Apresenta o C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP) (optional)
///
///  @param logradouro Apresenta o nome do Logradouro (optional)
///
///  @param numero Apresenta o n\u00C3\u00BAmero do endere\u00C3\u00A7o (optional)
///
///  @param complemento Apresenta descri\u00C3\u00A7oes complementares referente ao endere\u00C3\u00A7o (optional)
///
///  @param pontoReferencia Apresenta a descri\u00C3\u00A7\u00C3\u00A3o de ponto de refer\u00C3\u00AAncia do endere\u00C3\u00A7o (optional)
///
///  @param bairro Apresenta nome do bairro (optional)
///
///  @param cidade Apresenta nome da cidade (optional)
///
///  @param uf Apresenta sigla da Unidade Federativa (optional)
///
///  @param pais Apresenta nome do Pais (optional)
///
///  @param dataInclusao Apresenta a data em que fora cadastrado o Endere\u00C3\u00A7o (optional)
///
///  @param dataUltimaAtualizacao Data em que fora realizada a \u00C3\u00BAltima mudan\u00C3\u00A7a neste registro de endere\u00C3\u00A7o. Quando n\u00C3\u00A3o tiver ocorrido mudan\u00C3\u00A7a, conter\u00C3\u00A1 a mesma informa\u00C3\u00A7\u00C3\u00A3o que o campo dataInclusao (optional)
///
///  @returns PierPageEnderecoResponse*
///
-(NSNumber*) listarUsingGET9WithPage: (NSNumber*) page
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
/// Cadastro de Conta e Pessoa Fisica
/// Permite realizar o cadastro de uma Conta para um cliente do tipo Pessoa F\u00C3\u00ADsica, recebendo nesta opera\u00C3\u00A7\u00C3\u00A3o todos os dados cadastrais que se fazem necess\u00C3\u00A1rios para isso. Uma vez criado, poder\u00C3\u00A1 ser acionado o m\u00C3\u00A9todo de 'Gera\u00C3\u00A7\u00C3\u00A3o de Cart\u00C3\u00A3o' para o cliente e seus adicionais.
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
/// Cadastro de Conta e Pessoa Jur\u00C3\u00ADdica
/// Cadastro de Conta e Pessoa Jur\u00C3\u00ADdica Permite realizar o cadastro de uma Conta para um cliente do tipo Pessoa Jur\u00C3\u00ADdica, recebendo nesta opera\u00C3\u00A7\u00C3\u00A3o todos os dados cadastrais que se fazem necess\u00C3\u00A1rios para isso, inclu\u00C3\u00ADndo o registro de cada um dos s\u00C3\u00B3cios. Uma vez criado, poder\u00C3\u00A1 ser acionado o m\u00C3\u00A9todo de 'Gera\u00C3\u00A7\u00C3\u00A3o de Cart\u00C3\u00A3o' para o cliente e cada um dos s\u00C3\u00B3cios vinculados.
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
///  @param dataAtendimento Apresenta a data e hora em que o Atendimento foi realizado no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. (optional)
///
///  @param dataAgendamento Quando utilizado, de acordo com o Tipo de Atendimento, apresenta a data e hora para processamento ou a data e hora para retorno do Atendimento no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. (optional)
///
///  @param dataHoraInicioAtendimento Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. (optional)
///
///  @param dataHoraFimAtendimento Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. (optional)
///
///  @param flagFilaFraude Flag fila fraude (optional)
///
///  @returns PierAtendimentoClienteResponse*
///
-(NSNumber*) salvarUsingPOST1WithIdConta: (NSNumber*) idConta
    conteudoAtendimento: (NSString*) conteudoAtendimento
    detalhesAtendimento: (NSString*) detalhesAtendimento
    nomeAtendente: (NSString*) nomeAtendente
    dataAtendimento: (NSString*) dataAtendimento
    dataAgendamento: (NSString*) dataAgendamento
    dataHoraInicioAtendimento: (NSString*) dataHoraInicioAtendimento
    dataHoraFimAtendimento: (NSString*) dataHoraFimAtendimento
    flagFilaFraude: (NSNumber*) flagFilaFraude
    completionHandler: (void (^)(PierAtendimentoClienteResponse* output, NSError* error)) handler {

    

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
    if (flagFilaFraude != nil) {
        
        queryParams[@"flagFilaFraude"] = flagFilaFraude;
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
                              responseType: @"PierAtendimentoClienteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                               handler((PierAtendimentoClienteResponse*)data, error);
                           }
          ];
}

///
/// Realiza o cadastro de um novo Telefone
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Telefone na base de dados do Emissor.
///  @param idTipoTelefone C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo do Telefone (id). (optional)
///
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa (id) a qual o telefone pertence. (optional)
///
///  @param ddd C\u00C3\u00B3digo DDD do telefone (id). (optional)
///
///  @param telefone N\u00C3\u00BAmero do telefone. (optional)
///
///  @param ramal N\u00C3\u00BAmero do ramal. (optional)
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) salvarUsingPOST10WithIdTipoTelefone: (NSNumber*) idTipoTelefone
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

///
/// Realiza o cadastro de um novo Endere\u00C3\u00A7o
/// Este m\u00C3\u00A9todo permite que seja cadastrado um novo Endere\u00C3\u00A7o na base de dados do Emissor.
///  @param idPessoa C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa a qual o endere\u00C3\u00A7o pertence (id) (optional)
///
///  @param idTipoEndereco C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Tipo Endere\u00C3\u00A7o (id) (optional)
///
///  @param cep Apresenta o C\u00C3\u00B3digo de Endere\u00C3\u00A7amento Postal (CEP) no formaro '58800000' (optional)
///
///  @param logradouro Apresenta o nome do Logradouro (optional)
///
///  @param numero Apresenta o n\u00C3\u00BAmero do endere\u00C3\u00A7o (optional)
///
///  @param complemento Apresenta descri\u00C3\u00A7oes complementares referente ao endere\u00C3\u00A7o (optional)
///
///  @param pontoReferencia Apresenta a descri\u00C3\u00A7\u00C3\u00A3o de ponto de refer\u00C3\u00AAncia do endere\u00C3\u00A7o (optional)
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
-(NSNumber*) salvarUsingPOST4WithIdPessoa: (NSNumber*) idPessoa
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
/// Salvar os detalhes de uma determinada Pessoa
/// Este m\u00C3\u00A9todo permite que seja incluido na base do emissor os detalhes de uma determinada Pessoa.
///  @param idPessoa Apresenta o c\u00C3\u00B3digo identificador da pessoa (optional)
///
///  @param nomeMae Apresenta o nome da m\u00C3\u00A3e da pessoa fisica (optional)
///
///  @param idEstadoCivil Id Estado civil da pessoa fisica (optional)
///
///  @param profissao Profiss\u00C3\u00A3o da pessoa fisica (optional)
///
///  @param idNaturezaOcupacao Id Natureza Ocupa\u00C3\u00A7\u00C3\u00A3o da pessoa fisica (optional)
///
///  @param idNacionalidade Id Nacionalidade da pessoa fisica (optional)
///
///  @param numeroAgencia N\u00C3\u00BAmero da ag\u00C3\u00AAncia. (optional)
///
///  @param numeroContaCorrente N\u00C3\u00BAmero da conta corrente. (optional)
///
///  @param email Email da pessoa fisica (optional)
///
///  @param nomeEmpresa Nome que deve ser impresso no cart\u00C3\u00A3o (optional)
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) salvarUsingPOST7WithIdPessoa: (NSNumber*) idPessoa
    nomeMae: (NSString*) nomeMae
    idEstadoCivil: (NSNumber*) idEstadoCivil
    profissao: (NSString*) profissao
    idNaturezaOcupacao: (NSNumber*) idNaturezaOcupacao
    idNacionalidade: (NSNumber*) idNacionalidade
    numeroAgencia: (NSNumber*) numeroAgencia
    numeroContaCorrente: (NSString*) numeroContaCorrente
    email: (NSString*) email
    nomeEmpresa: (NSString*) nomeEmpresa
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    

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
    if (profissao != nil) {
        
        queryParams[@"profissao"] = profissao;
    }
    if (idNaturezaOcupacao != nil) {
        
        queryParams[@"idNaturezaOcupacao"] = idNaturezaOcupacao;
    }
    if (idNacionalidade != nil) {
        
        queryParams[@"idNacionalidade"] = idNacionalidade;
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
/// Este m\u00C3\u00A9todo permite que seja cadastrado uma nova Pessoa na base de dados do Emissor.
///  @param nome Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)'. 
///
///  @param tipo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do tipo da Pessoa, sendo: (\"PF\": Pessoa F\u00C3\u00ADsica), (\"PJ\": Pessoa Jur\u00C3\u00ADdica). 
///
///  @param cpf N\u00C3\u00BAmero do CPF, quando PF. (optional)
///
///  @param cnpj N\u00C3\u00BAmero do CNPJ, quando PJ. (optional)
///
///  @param dataNascimento Data de Nascimento da Pessoa, quando PF, ou a Data de Abertura da Empresa, quando PJ. Essa data deve ser informada no formato aaaa-MM-dd. (optional)
///
///  @param sexo C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do sexo da Pessoa, quando PF, sendo: (\"M\": Masculino), (\"F\": Feminino), (\"O\": Outro), (\"N\": N\u00C3\u00A3o Especificado). (optional)
///
///  @param numeroIdentidade N\u00C3\u00BAmero da Identidade. (optional)
///
///  @param orgaoExpedidorIdentidade Org\u00C3\u00A3o expedidor do Identidade. (optional)
///
///  @param unidadeFederativaIdentidade Sigla da Unidade Federativa de onde foi expedido a Identidade (optional)
///
///  @param dataEmissaoIdentidade Data emiss\u00C3\u00A3o da Identidade. (optional)
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) salvarUsingPOST8WithNome: (NSString*) nome
    tipo: (NSString*) tipo
    cpf: (NSString*) cpf
    cnpj: (NSString*) cnpj
    dataNascimento: (NSString*) dataNascimento
    sexo: (NSString*) sexo
    numeroIdentidade: (NSString*) numeroIdentidade
    orgaoExpedidorIdentidade: (NSString*) orgaoExpedidorIdentidade
    unidadeFederativaIdentidade: (NSString*) unidadeFederativaIdentidade
    dataEmissaoIdentidade: (NSString*) dataEmissaoIdentidade
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter 'nome' is set
    if (nome == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nome` when calling `salvarUsingPOST8`"];
    }
    
    // verify the required parameter 'tipo' is set
    if (tipo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipo` when calling `salvarUsingPOST8`"];
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



@end
