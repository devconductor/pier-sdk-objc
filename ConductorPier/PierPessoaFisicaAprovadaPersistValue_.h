#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierEnderecoAprovadoPersistValue_.h"
#import "PierTelefonePessoaAprovadaPersistValue_.h"


@protocol PierPessoaFisicaAprovadaPersistValue_
@end

@interface PierPessoaFisicaAprovadaPersistValue_ : PierObject

/* {{{pessoa_fisica_aprovada_persist_nome_value}}} 
 */
@property(nonatomic) NSString* nome;
/* {{{pessoa_fisica_aprovada_persist_nome_mae_value}}} [optional]
 */
@property(nonatomic) NSString* nomeMae;
/* {{{pessoa_fisica_aprovada_persist_data_nascimento_value}}} [optional]
 */
@property(nonatomic) NSString* dataNascimento;
/* {{{pessoa_fisica_aprovada_persist_sexo_value}}} [optional]
 */
@property(nonatomic) NSString* sexo;
/* {{{pessoa_fisica_aprovada_persist_cpf_value}}} 
 */
@property(nonatomic) NSString* cpf;
/* {{{pessoa_fisica_aprovada_persist_numero_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* numeroIdentidade;
/* {{{pessoa_fisica_aprovada_persist_orgao_expedidor_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* orgaoExpedidorIdentidade;
/* {{{pessoa_fisica_aprovada_persist_unidade_federativa_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* unidadeFederativaIdentidade;
/* {{{pessoa_fisica_aprovada_persist_data_emissao_identidade_value}}} [optional]
 */
@property(nonatomic) NSString* dataEmissaoIdentidade;
/* {{{pessoa_fisica_aprovada_persist_id_estado_civil_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEstadoCivil;
/* {{{pessoa_fisica_aprovada_persist_id_profissao_value}}} [optional]
 */
@property(nonatomic) NSString* idProfissao;
/* {{{pessoa_fisica_aprovada_persist_id_natureza_ocupacao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idNaturezaOcupacao;
/* {{{pessoa_fisica_aprovada_persist_id_nacionalidade_value}}} [optional]
 */
@property(nonatomic) NSNumber* idNacionalidade;
/* {{{pessoa_fisica_aprovada_persist_id_origem_comercial_value}}} 
 */
@property(nonatomic) NSNumber* idOrigemComercial;
/* {{{pessoa_fisica_aprovada_persist_id_produto_value}}} 
 */
@property(nonatomic) NSNumber* idProduto;
/* {{{pessoa_fisica_aprovada_persist_numero_agencia_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroAgencia;
/* {{{pessoa_fisica_aprovada_persist_numero_conta_corrente_value}}} [optional]
 */
@property(nonatomic) NSString* numeroContaCorrente;
/* {{{pessoa_fisica_aprovada_persist_email_value}}} [optional]
 */
@property(nonatomic) NSString* email;
/* {{{pessoa_fisica_aprovada_persist_dia_vencimento_value}}} 
 */
@property(nonatomic) NSNumber* diaVencimento;
/* {{{pessoa_fisica_aprovada_persist_nome_impresso_value}}} [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* {{{pessoa_fisica_aprovada_persist_nome_empresa_value}}} [optional]
 */
@property(nonatomic) NSString* nomeEmpresa;
/* {{{pessoa_fisica_aprovada_persist_valor_renda_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorRenda;
/* {{{pessoa_fisica_aprovada_persist_canal_entrada_value}}} [optional]
 */
@property(nonatomic) NSString* canalEntrada;
/* {{{pessoa_fisica_aprovada_persist_valor_pontuacao_value}}} [optional]
 */
@property(nonatomic) NSNumber* valorPontuacao;
/* {{{pessoa_fisica_aprovada_persist_telefones_value}}} 
 */
@property(nonatomic) NSArray<PierTelefonePessoaAprovadaPersistValue_>* telefones;
/* {{{pessoa_fisica_aprovada_persist_enderecos_value}}} 
 */
@property(nonatomic) NSArray<PierEnderecoAprovadoPersistValue_>* enderecos;
/* {{{pessoa_fisica_aprovada_persist_limite_global_value}}} 
 */
@property(nonatomic) NSNumber* limiteGlobal;
/* {{{pessoa_fisica_aprovada_persist_limite_maximo_value}}} 
 */
@property(nonatomic) NSNumber* limiteMaximo;
/* {{{pessoa_fisica_aprovada_persist_limite_parcelas_value}}} 
 */
@property(nonatomic) NSNumber* limiteParcelas;
/* {{{pessoa_fisica_aprovada_persist_limite_consignado_value}}} [optional]
 */
@property(nonatomic) NSNumber* limiteConsignado;

@end
