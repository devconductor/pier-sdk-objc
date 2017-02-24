#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierNotificacaoSMSBody
@end

@interface PierNotificacaoSMSBody : PierObject

/* N\u00C3\u00BAmero sequencial \u00C3\u00BAnico 
 */
@property(nonatomic) NSNumber* nsu;
/* C\u00C3\u00B3digo identificado da pessoa 
 */
@property(nonatomic) NSNumber* idPessoa;
/* C\u00C3\u00B3digo identificador da conta 
 */
@property(nonatomic) NSNumber* idConta;
/* Apresenta o celular a ser eviado o SMS no formato 5588999999999 ou 5588999999999. 
 */
@property(nonatomic) NSString* celular;
/* Apresenta o texto do SMS a ser enviado 
 */
@property(nonatomic) NSString* conteudo;
/* Apresenta a data e hora em que ser\u00C3\u00A1 enviado a notifica\u00C3\u00A7\u00C3\u00A3o [optional]
 */
@property(nonatomic) NSDate* dataAgendamento;
/* Apresenta o tipoEvento a qual pertence a notifica\u00C3\u00A7\u00C3\u00A3o 
 */
@property(nonatomic) NSString* tipoEvento;

@end