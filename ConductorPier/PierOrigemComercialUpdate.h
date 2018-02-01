#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierOrigemComercialUpdate
@end

@interface PierOrigemComercialUpdate : PierObject

/* Nome da origem comercial [optional]
 */
@property(nonatomic) NSString* nome;
/* Descri\u00C3\u00A7\u00C3\u00A3o da origem comercial [optional]
 */
@property(nonatomic) NSString* descricao;
/* Identificador do estabelecimento [optional]
 */
@property(nonatomic) NSNumber* idEstabelecimento;
/* Identificador do tipo de origem comercial [optional]
 */
@property(nonatomic) NSNumber* idTipoOrigemComercial;
/* Identificador do grupo de origem comercial [optional]
 */
@property(nonatomic) NSNumber* idGrupoOrigemComercial;
/* Indica o status da origem comercial [optional]
 */
@property(nonatomic) NSNumber* status;
/* Indica se permite pr\u00C3\u00A9 aprova\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSNumber* flagPreAprovado;
/* Indica se permite aprova\u00C3\u00A7\u00C3\u00A3o imediata [optional]
 */
@property(nonatomic) NSNumber* flagAprovacaoImediata;
/* Nome fantasia impresso no pl\u00C3\u00A1stico [optional]
 */
@property(nonatomic) NSString* nomeFantasiaPlastico;
/* Indica se permite cart\u00C3\u00A3o provis\u00C3\u00B3rio [optional]
 */
@property(nonatomic) NSNumber* flagCartaoProvisorio;
/* Indica se permite cart\u00C3\u00A3o definitivo [optional]
 */
@property(nonatomic) NSNumber* flagCartaoDefinitivo;
/* Usu\u00C3\u00A1rio para autentica\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSString* usuario;
/* Senha para autentica\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSString* senha;
/* Indica se \u00C3\u00A9 origem externa [optional]
 */
@property(nonatomic) NSNumber* flagOrigemExterna;
/* Indica se h\u00C3\u00A1 modifica\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSNumber* flagModificado;
/* Indica se envia fatura [optional]
 */
@property(nonatomic) NSNumber* flagEnviaFaturaUsuario;
/* Indica se permite cr\u00C3\u00A9dito de faturamento [optional]
 */
@property(nonatomic) NSNumber* flagCreditoFaturamento;
/* Indica se concede limite provis\u00C3\u00B3rio [optional]
 */
@property(nonatomic) NSNumber* flagConcedeLimiteProvisorio;
/* Indica se digitaliza documento [optional]
 */
@property(nonatomic) NSNumber* flagDigitalizarDoc;
/* Indica se realiza embossing em loja [optional]
 */
@property(nonatomic) NSNumber* flagEmbossingLoja;
/* Indica se realiza consulta pr\u00C3\u00A9via [optional]
 */
@property(nonatomic) NSNumber* flagConsultaPrevia;
/* Tipo de pessoa [optional]
 */
@property(nonatomic) NSString* tipoPessoa;

@end
