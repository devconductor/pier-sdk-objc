#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierInscricaoApnPersistencia_
@end

@interface PierInscricaoApnPersistencia_ : PierObject

/* {{{inscricao_apn_persistencia_device_token_descricao}}} [optional]
 */
@property(nonatomic) NSString* deviceToken;
/* {{{inscricao_apn_persistencia_id_aplicacao_mobile_descricao}}} [optional]
 */
@property(nonatomic) NSNumber* idAplicacaoMobile;
/* {{{inscricao_apn_persistencia_id_cartoes_descricao}}} [optional]
 */
@property(nonatomic) NSArray* /* NSNumber */ idCartoes;

@end
