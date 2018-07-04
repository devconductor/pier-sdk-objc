#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierCartaoResponse
@end

@interface PierCartaoResponse : PierObject

/* {{{cartao_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{cartao_response_flag_titular_value}}} [optional]
 */
@property(nonatomic) NSNumber* flagTitular;
/* {{{cartao_response_id_pessoa_value}}} [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* {{{cartao_response_sequencial_cartao_value}}} [optional]
 */
@property(nonatomic) NSNumber* sequencialCartao;
/* {{{cartao_response_id_conta_value}}} [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* {{{cartao_response_id_status_value}}} [optional]
 */
@property(nonatomic) NSNumber* idStatus;
/* {{{cartao_response_data_status_value}}} [optional]
 */
@property(nonatomic) NSString* dataStatus;
/* {{{cartao_response_id_estagio_value}}} [optional]
 */
@property(nonatomic) NSNumber* idEstagio;
/* {{{cartao_response_data_estagio_value}}} [optional]
 */
@property(nonatomic) NSString* dataEstagio;
/* {{{cartao_response_numero_bin_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroBin;
/* {{{cartao_response_numero_cartao_value}}} [optional]
 */
@property(nonatomic) NSString* numeroCartao;
/* {{{cartao_response_numero_cartao_hash_value}}} [optional]
 */
@property(nonatomic) NSNumber* numeroCartaoHash;
/* {{{cartao_response_numero_cartao_criptografado_value}}} [optional]
 */
@property(nonatomic) NSString* numeroCartaoCriptografado;
/* {{{cartao_response_data_emissao_value}}} [optional]
 */
@property(nonatomic) NSString* dataEmissao;
/* {{{cartao_response_data_validade_value}}} [optional]
 */
@property(nonatomic) NSString* dataValidade;
/* {{{cartao_response_cartao_virtual_value}}} [optional]
 */
@property(nonatomic) NSNumber* cartaoVirtual;
/* {{{cartao_response_impressao_avulsa_value}}} [optional]
 */
@property(nonatomic) NSNumber* impressaoAvulsa;
/* {{{cartao_response_data_impressao_value}}} [optional]
 */
@property(nonatomic) NSString* dataImpressao;
/* {{{cartao_response_nome_arquivo_impressao_value}}} [optional]
 */
@property(nonatomic) NSString* nomeArquivoImpressao;
/* {{{cartao_response_id_produto_value}}} [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* {{{cartao_response_nome_impresso_value}}} [optional]
 */
@property(nonatomic) NSString* nomeImpresso;
/* {{{cartao_response_codigo_desbloqueio_value}}} [optional]
 */
@property(nonatomic) NSString* codigoDesbloqueio;

@end
