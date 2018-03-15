#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierTelefoneResponse.h"


@protocol PierRiscoFraudeDetalhadoResponse
@end

@interface PierRiscoFraudeDetalhadoResponse : PierObject

/* C\u00F3digo de identifica\u00E7\u00E3o do risco de fraude [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00F3digo de identifica\u00E7\u00E3o do tipo de resolu\u00E7\u00E3o atribu\u00EDdo ao registro [optional]
 */
@property(nonatomic) NSNumber* idTipoResolucao;
/* Descri\u00E7\u00E3o do tipo de resolu\u00E7\u00E3o atribu\u00EDdo ao registro [optional]
 */
@property(nonatomic) NSString* descricaoTipoResolucao;
/* Indica que a transa\u00E7\u00E3o possui um alto risco de fraude e que todas as transa\u00E7\u00F5es seguintes a ela ser\u00E3o negadas at\u00E9 que todas as transa\u00E7\u00F5es classificadas com risco de fraude sejam analisadas [optional]
 */
@property(nonatomic) NSNumber* flagAltoRisco;
/* C\u00F3digo de identifica\u00E7\u00E3o da conta [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00F3digo de identifica\u00E7\u00E3o do cart\u00E3o [optional]
 */
@property(nonatomic) NSNumber* idCartao;
/* C\u00F3digo de identifica\u00E7\u00E3o do produto [optional]
 */
@property(nonatomic) NSNumber* idProduto;
/* C\u00F3digo de identifica\u00E7\u00E3o da transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSNumber* idTransacao;
/* Data que a transa\u00E7\u00E3o classificada com risco de fraude foi realizada [optional]
 */
@property(nonatomic) NSString* dataTransacao;
/* Valor da transa\u00E7\u00E3o classificada com risco de fraude [optional]
 */
@property(nonatomic) NSNumber* valorTransacao;
/* C\u00F3digo da moeda de origem utilizada para a transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* codigoMoedaOrigem;
/* Valor da transa\u00E7\u00E3o na moeda de origem [optional]
 */
@property(nonatomic) NSNumber* valorOrigem;
/* C\u00F3digo da moeda de destino utilizada para a transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* codigoMoedaDestino;
/* Valor da transa\u00E7\u00E3o na moeda de destino [optional]
 */
@property(nonatomic) NSNumber* valorDestino;
/* Nome do estabelecimento onde a transa\u00E7\u00E3o  com risco de fraude foi realizada [optional]
 */
@property(nonatomic) NSString* nomeEstabelecimento;
/* C\u00F3digo de Identifica\u00E7\u00E3o do Pa\u00EDs [optional]
 */
@property(nonatomic) NSString* idPais;
/* C\u00F3digo de resposta do autorizador para a transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* codigoRespostaAutorizador;
/* Descri\u00E7\u00E3o da resposta do autorizador para a transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* descricaoRespostaAutorizador;
/* C\u00F3digo de resposta da ferramenta de Preven\u00E7\u00E3o a Fraude para a transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* codigoRespostaFraude;
/* Descri\u00E7\u00E3o da resposta da ferramenta de Preven\u00E7\u00E3o a Fraude para a transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* descricaoRespostaFraude;
/* Tipo de Terminal que originou a Transa\u00E7\u00E3o (POS, ATM, TEF, etc) [optional]
 */
@property(nonatomic) NSString* origemTransacao;
/* C\u00F3digo de Identifica\u00E7\u00E3o do modo de origem da captura da Transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* codigoModoEntradaTerminal;
/* Descri\u00E7\u00E3o do modo de origem da captura da Transa\u00E7\u00E3o [optional]
 */
@property(nonatomic) NSString* descricaoModoEntradaTerminal;
/* N\u00FAmero do CPF da Pessoa portadora do Cart\u00E3o, quando for do tipo Pessoa F\u00EDsica [optional]
 */
@property(nonatomic) NSString* cpf;
/* N\u00FAmero do CNPJ da Pessoa portadora do Cart\u00E3o, quanto for do tipo Pessoa Jur\u00EDdica [optional]
 */
@property(nonatomic) NSString* cnpj;
/* Endere\u00E7o de email da Pessoa portadora do Cart\u00E3o [optional]
 */
@property(nonatomic) NSString* email;
/* Lista de telefones associados ao portador do Cart\u00E3o [optional]
 */
@property(nonatomic) NSArray<PierTelefoneResponse>* telefones;

@end
