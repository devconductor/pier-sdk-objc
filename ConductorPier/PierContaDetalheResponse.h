#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierContaDetalheResponse
@end

@interface PierContaDetalheResponse : PierObject

/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o de conta (id). [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Pessoa Titular da Conta (id). [optional]
 */
@property(nonatomic) NSNumber* idPessoa;
/* Apresenta o 'Nome Completo da PF' ou o 'Nome Completo da Raz\u00C3\u00A3o Social (Nome Empresarial)'. 
 */
@property(nonatomic) NSString* nome;
/* C\u00C3\u00B3digo de identifica\u00C3\u00A7\u00C3\u00A3o do produto ao qual a conta faz parte. (id). [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Origem Comercial (id) que deu origem a Conta. [optional]
 */
@property(nonatomic) NSNumber* idOrigemComercial;
/* Nome da origem comercial 
 */
@property(nonatomic) NSString* nomeOrigemComercial;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Fantasia Basica (id). [optional]
 */
@property(nonatomic) NSNumber* idFantasiaBasica;
/* Nome da Fantasia Basica 
 */
@property(nonatomic) NSString* nomeFantasiaBasica;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Produto a qual o cart\u00C3\u00A3o pertence (id). [optional]
 */
@property(nonatomic) NSNumber* idStatusConta;
/* Descri\u00C3\u00A7\u00C3\u00A3o do status da conta [optional]
 */
@property(nonatomic) NSString* statusConta;
/* Apresenta o dia de vencimento. [optional]
 */
@property(nonatomic) NSNumber* diaVencimento;
/* Apresenta o melhor dia de compra. [optional]
 */
@property(nonatomic) NSNumber* melhorDiaCompra;
/* Apresenta a data em que o idStatusConta atual fora atribu\u00C3\u00ADdo para ela. [optional]
 */
@property(nonatomic) NSString* dataStatusConta;
/* Valor da renda comprovada. [optional]
 */
@property(nonatomic) NSNumber* valorRenda;
/* Apresenta a data em que o cart\u00C3\u00A3o foi gerado. [optional]
 */
@property(nonatomic) NSString* dataCadastro;
/* Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. [optional]
 */
@property(nonatomic) NSString* dataUltimaAlteracaoVencimento;
/* Apresenta a data da ultima altera\u00C3\u00A7\u00C3\u00A3o de vencimento. [optional]
 */
@property(nonatomic) NSString* dataHoraUltimaCompra;
/* N\u00C3\u00BAmero da ag\u00C3\u00AAncia. [optional]
 */
@property(nonatomic) NSNumber* numeroAgencia;
/* N\u00C3\u00BAmero da conta corrente. [optional]
 */
@property(nonatomic) NSString* numeroContaCorrente;
/* Forma de envio da fatura. [optional]
 */
@property(nonatomic) NSString* formaEnvioFatura;
/* Apresenta se a pessoa \u00C3\u00A9 titular da conta. [optional]
 */
@property(nonatomic) NSNumber* titular;
/* Apresenta o valor do limite de cr\u00C3\u00A9dito que o portador do cart\u00C3\u00A3o possui. 
 */
@property(nonatomic) NSNumber* limiteGlobal;
/* Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. 
 */
@property(nonatomic) NSNumber* limiteSaqueGlobal;
/* Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador possui para uso exclusivo em Compras Nacionais. 
 */
@property(nonatomic) NSNumber* saldoDisponivelGlobal;
/* Quando utilizado pelo emissor, este campo apresenta o valor do limite de cr\u00C3\u00A9dito que o portador pode utilizar para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento. 
 */
@property(nonatomic) NSNumber* saldoDisponivelSaque;
/* Apresenta a quantidade de dias que a conta esta em atraso [optional]
 */
@property(nonatomic) NSNumber* diasAtraso;

@end
