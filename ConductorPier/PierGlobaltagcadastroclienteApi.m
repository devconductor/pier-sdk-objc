#import "PierGlobaltagcadastroclienteApi.h"
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
#import "PierPessoaFisicaAprovadaResponse.h"
#import "PierPessoaFisicaAprovadaPersistValue_.h"
#import "PierPessoaJuridicaAprovadaResponse.h"
#import "PierPessoaJuridicaAprovadaPersist.h"


@interface PierGlobaltagcadastroclienteApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation PierGlobaltagcadastroclienteApi

static PierGlobaltagcadastroclienteApi* singletonAPI = nil;

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

+(PierGlobaltagcadastroclienteApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagcadastroclienteApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(PierGlobaltagcadastroclienteApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[PierGlobaltagcadastroclienteApi alloc] init];
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
/// {{{adicional_resource_alterar}}}
/// {{{adicional_resource_alterar_notes}}}
///  @param _id {{{adicional_resource_alterar_param_id_conta}}} 
///
///  @param idPessoa {{{adicional_resource_alterar_param_id_pessoa}}} 
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
/// {{{pessoa_detalhe_resource_alterar}}}
/// {{{pessoa_detalhe_resource_alterar_notes}}}
///  @param _id {{{pessoa_detalhe_resource_alterar_param_id}}} 
///
///  @param nomeMae {{{pessoa_detalhe_update_nome_mae_value}}} (optional)
///
///  @param idEstadoCivil {{{pessoa_detalhe_update_id_estado_civil_value}}} (optional)
///
///  @param idProfissao {{{pessoa_detalhe_update_id_profissao_value}}} (optional)
///
///  @param idNaturezaOcupacao {{{pessoa_detalhe_update_id_natureza_ocupacao_value}}} (optional)
///
///  @param idNacionalidade {{{pessoa_detalhe_update_id_nacionalidade_value}}} (optional)
///
///  @param numeroBanco {{{pessoa_detalhe_update_numero_banco_value}}} (optional)
///
///  @param numeroAgencia {{{pessoa_detalhe_update_numero_agencia_value}}} (optional)
///
///  @param numeroContaCorrente {{{pessoa_detalhe_update_numero_conta_corrente_value}}} (optional)
///
///  @param email {{{pessoa_detalhe_update_email_value}}} (optional)
///
///  @param nomeEmpresa {{{pessoa_detalhe_update_nome_empresa_value}}} (optional)
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) alterarUsingPUT15WithId: (NSNumber*) _id
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
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT15`"];
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
/// {{{pessoa_resource_alterar}}}
/// {{{pessoa_resource_alterar_notes}}}
///  @param _id {{{pessoa_resource_alterar_param_id}}} 
///
///  @param nome {{{pessoa_persist_nome_value}}} 
///
///  @param tipo {{{pessoa_persist_tipo_value}}} 
///
///  @param dataNascimento {{{pessoa_persist_data_nascimento_value}}} 
///
///  @param cpf {{{pessoa_persist_cpf_value}}} (optional)
///
///  @param cnpj {{{pessoa_persist_cnpj_value}}} (optional)
///
///  @param sexo {{{pessoa_persist_sexo_value}}} (optional)
///
///  @param numeroIdentidade {{{pessoa_persist_numero_identidade_value}}} (optional)
///
///  @param orgaoExpedidorIdentidade {{{pessoa_persist_orgao_expedidor_identidade_value}}} (optional)
///
///  @param unidadeFederativaIdentidade {{{pessoa_persist_unidade_federativa_identidade_value}}} (optional)
///
///  @param dataEmissaoIdentidade {{{pessoa_persist_data_emissao_identidade_value}}} (optional)
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) alterarUsingPUT16WithId: (NSNumber*) _id
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
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT16`"];
    }
    
    // verify the required parameter 'nome' is set
    if (nome == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nome` when calling `alterarUsingPUT16`"];
    }
    
    // verify the required parameter 'tipo' is set
    if (tipo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipo` when calling `alterarUsingPUT16`"];
    }
    
    // verify the required parameter 'dataNascimento' is set
    if (dataNascimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataNascimento` when calling `alterarUsingPUT16`"];
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
/// {{{telefone_resource_alterar}}}
/// {{{telefone_resource_alterar_notes}}}
///  @param _id {{{telefone_alterar_persist_id_value}}} 
///
///  @param idTipoTelefone {{{telefone_alterar_persist_id_tipo_telefone_value}}} (optional)
///
///  @param ddd {{{telefone_alterar_persist_ddd_value}}} (optional)
///
///  @param telefone {{{telefone_alterar_persist_telefone_value}}} (optional)
///
///  @param ramal {{{telefone_alterar_persist_ramal_value}}} (optional)
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) alterarUsingPUT18WithId: (NSNumber*) _id
    idTipoTelefone: (NSNumber*) idTipoTelefone
    ddd: (NSString*) ddd
    telefone: (NSString*) telefone
    ramal: (NSString*) ramal
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `alterarUsingPUT18`"];
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
/// {{{endereco_resource_alterar}}}
/// {{{endereco_resource_alterar_notes}}}
///  @param _id id 
///
///  @param idPessoa {{{endereco_persist_id_pessoa_value}}} (optional)
///
///  @param idTipoEndereco {{{endereco_persist_id_tipo_endereco_value}}} (optional)
///
///  @param cep {{{endereco_persist_cep_value}}} (optional)
///
///  @param logradouro {{{endereco_persist_logradouro_value}}} (optional)
///
///  @param numero {{{endereco_persist_numero_value}}} (optional)
///
///  @param complemento {{{endereco_persist_complemento_value}}} (optional)
///
///  @param pontoReferencia {{{endereco_persist_ponto_referencia_value}}} (optional)
///
///  @param bairro {{{endereco_persist_bairro_value}}} (optional)
///
///  @param cidade {{{endereco_persist_cidade_value}}} (optional)
///
///  @param uf {{{endereco_persist_uf_value}}} (optional)
///
///  @param pais {{{endereco_persist_pais_value}}} (optional)
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
/// {{{conta_pessoa_resource_atribuir_assinatura_cliente}}}
/// {{{conta_pessoa_resource_atribuir_assinatura_cliente_notes}}}
///  @param _id {{{conta_pessoa_resource_atribuir_assinatura_cliente_param_id}}} 
///
///  @param body {{{conta_pessoa_resource_atribuir_assinatura_cliente_param_body}}} 
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
/// {{{endereco_resource_atualizar_correspondencia}}}
/// {{{endereco_resource_atualizar_correspondencia_notes}}}
///  @param _id {{{endereco_resource_atualizar_correspondencia_param_id}}} 
///
///  @param idConta {{{endereco_resource_atualizar_correspondencia_param_idConta}}} 
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) atualizarEnderecoDeCorrespondenciaUsingPUTWithId: (NSNumber*) _id
    idConta: (NSNumber*) idConta
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `atualizarEnderecoDeCorrespondenciaUsingPUT`"];
    }
    
    // verify the required parameter 'idConta' is set
    if (idConta == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idConta` when calling `atualizarEnderecoDeCorrespondenciaUsingPUT`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/enderecos/{id}/alterar-endereco-correspondencia"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (idConta != nil) {
        
        queryParams[@"idConta"] = idConta;
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
/// {{{integracao_emissor_resource_atualizar}}}
/// {{{integracao_emissor_resource_atualizar_notes}}}
///  @param _id {{{integracao_emissor_resource_atualizar_param_id_conta}}} 
///
///  @param body {{{integracao_emissor_resource_atualizar_param_body}}} (optional)
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
/// {{{adicional_resource_cadastrar}}}
/// {{{adicional_resource_cadastrar_notes}}}
///  @param _id {{{adicional_resource_cadastrar_param_id_conta}}} 
///
///  @param persist persist 
///
///  @returns PierAdicionalDetalheResponse*
///
-(NSNumber*) cadastrarUsingPOST1WithId: (NSNumber*) _id
    persist: (PierAdicionalPersist*) persist
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `cadastrarUsingPOST1`"];
    }
    
    // verify the required parameter 'persist' is set
    if (persist == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `persist` when calling `cadastrarUsingPOST1`"];
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
/// {{{endereco_resource_consultar}}}
/// {{{endereco_resource_consultar_notes}}}
///  @param _id {{{endereco_resource_consultar_param_id}}} 
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) consultarUsingGET19WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierEnderecoResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET19`"];
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
/// {{{adicional_resource_consultar}}}
/// {{{adicional_resource_consultar_notes}}}
///  @param _id {{{adicional_resource_consultar_param_id_conta}}} 
///
///  @param idPessoa {{{adicional_resource_consultar_param_id_pessoa}}} 
///
///  @returns PierAdicionalDetalheResponse*
///
-(NSNumber*) consultarUsingGET2WithId: (NSNumber*) _id
    idPessoa: (NSNumber*) idPessoa
    completionHandler: (void (^)(PierAdicionalDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET2`"];
    }
    
    // verify the required parameter 'idPessoa' is set
    if (idPessoa == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `consultarUsingGET2`"];
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
/// {{{pessoa_detalhe_resource_consultar}}}
/// {{{pessoa_detalhe_resource_consultar_notes}}}
///  @param _id {{{pessoa_detalhe_resource_consultar_param_id}}} 
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) consultarUsingGET30WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaDetalheResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET30`"];
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
/// {{{pessoa_resource_consultar}}}
/// {{{pessoa_resource_consultar_notes}}}
///  @param _id {{{pessoa_resource_consultar_param_id}}} 
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) consultarUsingGET31WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierPessoaResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET31`"];
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
/// {{{telefone_resource_consultar}}}
/// {{{telefone_resource_consultar_notes}}}
///  @param _id {{{telefone_resource_consultar_param_id}}} 
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) consultarUsingGET39WithId: (NSNumber*) _id
    completionHandler: (void (^)(PierTelefoneResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `consultarUsingGET39`"];
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
/// {{{adicional_resource_inativar}}}
/// {{{adicional_resource_inativar_notes}}}
///  @param _id {{{adicional_resource_inativar_param_id_conta}}} 
///
///  @param idPessoa {{{adicional_resource_inativar_param_id_pessoa}}} 
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
/// {{{conta_pessoa_resource_listar_socios}}}
/// {{{conta_pessoa_resource_listar_socios_notes}}}
///  @param _id {{{conta_pessoa_resource_listar_socios_param_id}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
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
/// {{{adicional_resource_listar}}}
/// {{{adicional_resource_listar_notes}}}
///  @param _id {{{adicional_resource_listar_param_id_conta}}} 
///
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
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
/// {{{endereco_resource_listar}}}
/// {{{endereco_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{endereco_request_id_value}}} (optional)
///
///  @param idPessoa {{{endereco_request_id_pessoa_value}}} (optional)
///
///  @param idTipoEndereco {{{endereco_request_id_tipo_endereco_value}}} (optional)
///
///  @param cep {{{endereco_request_cep_value}}} (optional)
///
///  @param logradouro {{{endereco_request_logradouro_value}}} (optional)
///
///  @param numero {{{endereco_request_numero_value}}} (optional)
///
///  @param complemento {{{endereco_request_complemento_value}}} (optional)
///
///  @param pontoReferencia {{{endereco_request_ponto_referencia_value}}} (optional)
///
///  @param bairro {{{endereco_request_bairro_value}}} (optional)
///
///  @param cidade {{{endereco_request_cidade_value}}} (optional)
///
///  @param uf {{{endereco_request_uf_value}}} (optional)
///
///  @param pais {{{endereco_request_pais_value}}} (optional)
///
///  @param dataInclusao {{{endereco_request_data_inclusao_value}}} (optional)
///
///  @param dataUltimaAtualizacao {{{endereco_request_data_ultima_atualizacao_value}}} (optional)
///
///  @returns PierPageEnderecoResponse*
///
-(NSNumber*) listarUsingGET24WithSort: (NSArray* /* NSString */) sort
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
/// {{{pessoa_detalhe_resource_listar}}}
/// {{{pessoa_detalhe_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param idPessoa {{{pessoa_detalhe_request_id_pessoa_value}}} (optional)
///
///  @param nomeMae {{{pessoa_detalhe_request_nome_mae_value}}} (optional)
///
///  @param idEstadoCivil {{{pessoa_detalhe_request_id_estado_civil_value}}} (optional)
///
///  @param idProfissao {{{pessoa_detalhe_request_id_profissao_value}}} (optional)
///
///  @param idNaturezaOcupacao {{{pessoa_detalhe_request_id_natureza_ocupacao_value}}} (optional)
///
///  @param idNacionalidade {{{pessoa_detalhe_request_id_nacionalidade_value}}} (optional)
///
///  @param numeroBanco {{{pessoa_detalhe_request_numero_banco_value}}} (optional)
///
///  @param numeroAgencia {{{pessoa_detalhe_request_numero_agencia_value}}} (optional)
///
///  @param numeroContaCorrente {{{pessoa_detalhe_request_numero_conta_corrente_value}}} (optional)
///
///  @param email {{{pessoa_detalhe_request_email_value}}} (optional)
///
///  @param nomeEmpresa {{{pessoa_detalhe_request_nome_empresa_value}}} (optional)
///
///  @returns PierPagePessoaDetalheResponse*
///
-(NSNumber*) listarUsingGET38WithSort: (NSArray* /* NSString */) sort
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
/// {{{pessoa_resource_listar}}}
/// {{{pessoa_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{pessoa_request_id_value}}} (optional)
///
///  @param nome {{{pessoa_request_nome_value}}} (optional)
///
///  @param tipo {{{pessoa_request_tipo_value}}} (optional)
///
///  @param cpf {{{pessoa_request_cpf_value}}} (optional)
///
///  @param cnpj {{{pessoa_request_cnpj_value}}} (optional)
///
///  @param dataNascimento {{{pessoa_request_data_nascimento_value}}} (optional)
///
///  @param sexo {{{pessoa_request_sexo_value}}} (optional)
///
///  @param numeroIdentidade {{{pessoa_request_numero_identidade_value}}} (optional)
///
///  @param orgaoExpedidorIdentidade {{{pessoa_request_orgao_expedidor_identidade_value}}} (optional)
///
///  @param unidadeFederativaIdentidade {{{pessoa_request_unidade_federativa_identidade_value}}} (optional)
///
///  @param dataEmissaoIdentidade {{{pessoa_request_data_emissao_identidade_value}}} (optional)
///
///  @returns PierPagePessoaResponse*
///
-(NSNumber*) listarUsingGET39WithSort: (NSArray* /* NSString */) sort
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
/// {{{telefone_resource_listar}}}
/// {{{telefone_resource_listar_notes}}}
///  @param sort {{{global_menssagem_sort_sort}}} (optional)
///
///  @param page {{{global_menssagem_sort_page_value}}} (optional)
///
///  @param limit {{{global_menssagem_sort_limit}}} (optional)
///
///  @param _id {{{telefone_request_id_value}}} (optional)
///
///  @param idTipoTelefone {{{telefone_request_id_tipo_telefone_value}}} (optional)
///
///  @param idPessoa {{{telefone_request_id_pessoa_value}}} (optional)
///
///  @param ddd {{{telefone_request_ddd_value}}} (optional)
///
///  @param telefone {{{telefone_request_telefone_value}}} (optional)
///
///  @param ramal {{{telefone_request_ramal_value}}} (optional)
///
///  @param status {{{telefone_request_status_value}}} (optional)
///
///  @returns PierPageTelefoneResponse*
///
-(NSNumber*) listarUsingGET50WithSort: (NSArray* /* NSString */) sort
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
/// {{{conta_pessoa_resource_salvar_pessoa_fisica_aprovada}}}
/// {{{conta_pessoa_resource_salvar_pessoa_fisica_aprovada_notes}}}
///  @param pessoaPersist pessoaPersist 
///
///  @returns PierPessoaFisicaAprovadaResponse*
///
-(NSNumber*) salvarPessoaFisicaAprovadaUsingPOSTWithPessoaPersist: (PierPessoaFisicaAprovadaPersistValue_*) pessoaPersist
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
/// {{{conta_pessoa_resource_salvar_pessoa_juridica_aprovada}}}
/// {{{conta_pessoa_resource_salvar_pessoa_juridica_aprovada_notes}}}
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
/// {{{endereco_resource_salvar}}}
/// {{{endereco_resource_salvar_notes}}}
///  @param idPessoa {{{endereco_persist_id_pessoa_value}}} (optional)
///
///  @param idTipoEndereco {{{endereco_persist_id_tipo_endereco_value}}} (optional)
///
///  @param cep {{{endereco_persist_cep_value}}} (optional)
///
///  @param logradouro {{{endereco_persist_logradouro_value}}} (optional)
///
///  @param numero {{{endereco_persist_numero_value}}} (optional)
///
///  @param complemento {{{endereco_persist_complemento_value}}} (optional)
///
///  @param pontoReferencia {{{endereco_persist_ponto_referencia_value}}} (optional)
///
///  @param bairro {{{endereco_persist_bairro_value}}} (optional)
///
///  @param cidade {{{endereco_persist_cidade_value}}} (optional)
///
///  @param uf {{{endereco_persist_uf_value}}} (optional)
///
///  @param pais {{{endereco_persist_pais_value}}} (optional)
///
///  @returns PierEnderecoResponse*
///
-(NSNumber*) salvarUsingPOST13WithIdPessoa: (NSNumber*) idPessoa
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
/// {{{integracao_emissor_resource_salvar}}}
/// {{{integracao_emissor_resource_salvar_notes}}}
///  @param _id {{{integracao_emissor_resource_salvar_param_id_conta}}} 
///
///  @param body {{{integracao_emissor_resource_salvar_param_body}}} (optional)
///
///  @returns PierIntegracaoEmissorResponse*
///
-(NSNumber*) salvarUsingPOST16WithId: (NSNumber*) _id
    body: (PierIntegracaoEmissorPersist*) body
    completionHandler: (void (^)(PierIntegracaoEmissorResponse* output, NSError* error)) handler {

    
    // verify the required parameter '_id' is set
    if (_id == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `_id` when calling `salvarUsingPOST16`"];
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
/// {{{pessoa_detalhe_resource_salvar}}}
/// {{{pessoa_detalhe_resource_salvar_notes}}}
///  @param idPessoa {{{pessoa_detalhe_persist_id_pessoa_value}}} 
///
///  @param nomeMae {{{pessoa_detalhe_persist_nome_mae_value}}} (optional)
///
///  @param idEstadoCivil {{{pessoa_detalhe_persist_id_estado_civil_value}}} (optional)
///
///  @param idProfissao {{{pessoa_detalhe_persist_id_profissao_value}}} (optional)
///
///  @param idNaturezaOcupacao {{{pessoa_detalhe_persist_id_natureza_ocupacao_value}}} (optional)
///
///  @param idNacionalidade {{{pessoa_detalhe_persist_id_nacionalidade_value}}} (optional)
///
///  @param numeroBanco {{{pessoa_detalhe_persist_numero_banco_value}}} (optional)
///
///  @param numeroAgencia {{{pessoa_detalhe_persist_numero_agencia_value}}} (optional)
///
///  @param numeroContaCorrente {{{pessoa_detalhe_persist_numero_conta_corrente_value}}} (optional)
///
///  @param email {{{pessoa_detalhe_persist_email_value}}} (optional)
///
///  @param nomeEmpresa {{{pessoa_detalhe_persist_nome_empresa_value}}} (optional)
///
///  @returns PierPessoaDetalheResponse*
///
-(NSNumber*) salvarUsingPOST24WithIdPessoa: (NSNumber*) idPessoa
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
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `idPessoa` when calling `salvarUsingPOST24`"];
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
/// {{{pessoa_resource_salvar}}}
/// {{{pessoa_resource_salvar_notes}}}
///  @param nome {{{pessoa_persist_nome_value}}} 
///
///  @param tipo {{{pessoa_persist_tipo_value}}} 
///
///  @param dataNascimento {{{pessoa_persist_data_nascimento_value}}} 
///
///  @param cpf {{{pessoa_persist_cpf_value}}} (optional)
///
///  @param cnpj {{{pessoa_persist_cnpj_value}}} (optional)
///
///  @param sexo {{{pessoa_persist_sexo_value}}} (optional)
///
///  @param numeroIdentidade {{{pessoa_persist_numero_identidade_value}}} (optional)
///
///  @param orgaoExpedidorIdentidade {{{pessoa_persist_orgao_expedidor_identidade_value}}} (optional)
///
///  @param unidadeFederativaIdentidade {{{pessoa_persist_unidade_federativa_identidade_value}}} (optional)
///
///  @param dataEmissaoIdentidade {{{pessoa_persist_data_emissao_identidade_value}}} (optional)
///
///  @returns PierPessoaResponse*
///
-(NSNumber*) salvarUsingPOST25WithNome: (NSString*) nome
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
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `nome` when calling `salvarUsingPOST25`"];
    }
    
    // verify the required parameter 'tipo' is set
    if (tipo == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `tipo` when calling `salvarUsingPOST25`"];
    }
    
    // verify the required parameter 'dataNascimento' is set
    if (dataNascimento == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `dataNascimento` when calling `salvarUsingPOST25`"];
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
/// {{{telefone_resource_salvar}}}
/// {{{telefone_resource_salvar_notes}}}
///  @param idTipoTelefone {{{telefone_persist_id_tipo_telefone_value}}} (optional)
///
///  @param idPessoa {{{telefone_persist_id_pessoa_value}}} (optional)
///
///  @param ddd {{{telefone_persist_ddd_value}}} (optional)
///
///  @param telefone {{{telefone_persist_telefone_value}}} (optional)
///
///  @param ramal {{{telefone_persist_ramal_value}}} (optional)
///
///  @returns PierTelefoneResponse*
///
-(NSNumber*) salvarUsingPOST28WithIdTipoTelefone: (NSNumber*) idTipoTelefone
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
