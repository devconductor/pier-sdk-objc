#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTipoFaturamentoPorContaPersist
@end

@interface PierTipoFaturamentoPorContaPersist : PierObject

/* Representa se a configura\u00E7\u00E3o est\u00E1 ativada ou desativada para a conta. 
 */
@property(nonatomic) NSNumber* status;
/* C\u00F3digo de identifica\u00E7\u00E3o da conta relacionada. 
 */
@property(nonatomic) NSNumber* idConta;
/* C\u00F3digo de identifica\u00E7\u00E3o do tipo de faturamento relacionada. 
 */
@property(nonatomic) NSNumber* idTipoFaturamento;
/* Data da inclus\u00E3o da configura\u00E7\u00E3o, deve ser informada no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. [optional]
 */
@property(nonatomic) NSString* dataHoraInclusao;
/* Data do cancelamento da configura\u00E7\u00E3o, deve ser informada no formato yyyy-MM-dd'T'HH:mm:ss.SSS'Z'. [optional]
 */
@property(nonatomic) NSString* dataHoraCancelamento;
/* Identificador do respons\u00E1vel pela modifica\u00E7\u00E3o do registro. 
 */
@property(nonatomic) NSString* modificadoPor;

@end
