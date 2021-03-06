#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierValidaSenhaCartaoResponse
@end

@interface PierValidaSenhaCartaoResponse : PierObject

/* {{{valida_senha_cartao_response_mensagem_value}}} [optional]
 */
@property(nonatomic) NSString* mensagem;
/* {{{valida_senha_cartao_response_id_status_cartao_value}}} [optional]
 */
@property(nonatomic) NSNumber* idStatusCartao;
/* {{{valida_senha_cartao_response_status_cartao_value}}} [optional]
 */
@property(nonatomic) NSString* statusCartao;
/* {{{valida_senha_cartao_response_quantidade_tentativas_value}}} [optional]
 */
@property(nonatomic) NSNumber* quantidadeTentativas;
/* {{{valida_senha_cartao_response_quantidade_maxima_tentativas_value}}} [optional]
 */
@property(nonatomic) NSNumber* quantidadeMaximaTentativas;

@end
