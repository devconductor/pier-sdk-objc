#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierGrupoEconomicoDTO
@end

@interface PierGrupoEconomicoDTO : PierObject

/* Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica 
 */
@property(nonatomic) NSString* razaoSocial;
/* Nome do credor [optional]
 */
@property(nonatomic) NSString* nomeCredor;
/* N\u00C3\u00BAmero da Receita Federal 
 */
@property(nonatomic) NSString* numeroReceitaFederal;
/* N\u00C3\u00BAmero da inscri\u00C3\u00A7\u00C3\u00A3o estadual [optional]
 */
@property(nonatomic) NSString* inscricaoEstadual;
/* Nome da pessoa para entrar em contato [optional]
 */
@property(nonatomic) NSString* contato;
/* C\u00C3\u00B3digo do banco [optional]
 */
@property(nonatomic) NSNumber* banco;
/* Raz\u00C3\u00A3o social da pessoa jur\u00C3\u00ADdica [optional]
 */
@property(nonatomic) NSNumber* agencia;
/* D\u00C3\u00ADgito Verificador da ag\u00C3\u00AAncia [optional]
 */
@property(nonatomic) NSString* digitoAgencia;
/* C\u00C3\u00B3digo da Conta Corrente [optional]
 */
@property(nonatomic) NSString* contaCorrente;
/* D\u00C3\u00ADgito Verificador da Conta Corrente [optional]
 */
@property(nonatomic) NSString* digitoContaCorrente;
/* Periodicidade do pagamento 
 */
@property(nonatomic) NSString* periodicidade;
/* Dia para pagamento semanal [optional]
 */
@property(nonatomic) NSString* pagamentoSemanal;
/* Dia da data para o pagamento mensal [optional]
 */
@property(nonatomic) NSNumber* pagamentoMensal;
/* Dia da data para o primeiro pagamento decendial [optional]
 */
@property(nonatomic) NSNumber* pagamentoDecendialPrimeiro;
/* Dia da data para o segundo pagamento decendial [optional]
 */
@property(nonatomic) NSNumber* pagamentoDecendialSegundo;
/* Dia da data para o terceiro pagamento decendial [optional]
 */
@property(nonatomic) NSNumber* pagamentoDecendialTerceiro;
/* Dia da data para o primeiro pagamento quinzenal [optional]
 */
@property(nonatomic) NSNumber* pagamentoQuinzenalPrimeiro;
/* Dia da data para o segundo pagamento quinzenal [optional]
 */
@property(nonatomic) NSNumber* pagamentoQuinzenalSegundo;
/* Valor percentual do RAV do credor 
 */
@property(nonatomic) NSNumber* percentualRAV;
/* Indica se o credor recebe RAV e o tipo [optional]
 */
@property(nonatomic) NSString* recebeRAV;
/* Percentual Multiplica [optional]
 */
@property(nonatomic) NSNumber* percentualMultiplica;
/* Taxa Administrativa [optional]
 */
@property(nonatomic) NSNumber* taxaAdm;
/* Taxa do Banco [optional]
 */
@property(nonatomic) NSNumber* taxaBanco;
/* Valor limite do RAV [optional]
 */
@property(nonatomic) NSNumber* limiteRAV;

@end