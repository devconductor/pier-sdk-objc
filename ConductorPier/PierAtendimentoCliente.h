#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAtendimentoCliente
@end

@interface PierAtendimentoCliente : PierObject

/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Atendimento (id) [optional]
 */
@property(nonatomic) NSNumber* idAtendimento;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o da Conta a qual o Atendimento est\u00C3\u00A1 associado [optional]
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o do Tipo de Atendimento (id) [optional]
 */
@property(nonatomic) NSNumber* idTipoAtendimento;
/* Apresenta a descri\u00C3\u00A7\u00C3\u00A3o do Tipo de Atendimento [optional]
 */
@property(nonatomic) NSString* descricaoTipoAtendimento;
/* Apresenta as informa\u00C3\u00A7\u00C3\u00B5es que foram utilizadas para consultar, cadastrar ou alterar informa\u00C3\u00A7\u00C3\u00B5es relacionadas ao Atendimento. [optional]
 */
@property(nonatomic) NSString* conteudoAtendimento;
/* Apresenta os detalhes lan\u00C3\u00A7ados pelo sistema ou pelo Atendente durante relacionados ao Atendimento. [optional]
 */
@property(nonatomic) NSString* detalhesAtendimento;
/* Apresenta o nome do Atendente que registrou o Atendimento. [optional]
 */
@property(nonatomic) NSString* nomeAtendente;
/* Apresenta o nome do Sistema, Servidor, M\u00C3\u00B3dulo ou M\u00C3\u00A9todo REST que originou o registro do Atendimento. [optional]
 */
@property(nonatomic) NSString* nomeSistema;
/* Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos. [optional]
 */
@property(nonatomic) NSString* dataHoraInicioAtendimento;
/* Apresenta a data e hora em que o Atendimento foi iniciado. Quando utilizado, serve para medir a performance dos Atendimentos. [optional]
 */
@property(nonatomic) NSString* dataHoraFimAtendimento;
/* Apresenta a data e hora em que o Atendimento foi realizado. [optional]
 */
@property(nonatomic) NSString* dataAtendimento;
/* Quando utilizado, de acordo com o Tipo de Atendimento, apresenta a data e hora para processamento ou a data para retorno do Atendimento. [optional]
 */
@property(nonatomic) NSString* dataAgendamento;
/* Quando utilizado, apresenta a data e hora em que a solicita\u00C3\u00A7\u00C3\u00A3o registrada no Atendimento fora processada. [optional]
 */
@property(nonatomic) NSString* dataProcessamento;
/* Quando aplic\u00C3\u00A1vel, de acordo com o Indica se o Processamento da solicita\u00C3\u00A7\u00C3\u00A3o fora realizado. [optional]
 */
@property(nonatomic) NSNumber* flagProcessamento;

@end
