#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierReferenciaComercialAprovadoResponse
@end

@interface PierReferenciaComercialAprovadoResponse : PierObject

/* Apresenta o nome completo da raz\u00E3o social da refer\u00EAncia comercial (nome empresarial) [optional]
 */
@property(nonatomic) NSString* razaoSocial;
/* Apresenta o nome do respons\u00E1vel pela refer\u00EAncia comercial [optional]
 */
@property(nonatomic) NSString* nomeContrato;
/* Apresenta o DDD do n\u00FAmero de contato da refer\u00EAncia comercial [optional]
 */
@property(nonatomic) NSString* ddd;
/* Apresenta o n\u00FAmero de contato da refer\u00EAncia comercial [optional]
 */
@property(nonatomic) NSString* telefone;
/* Apresenta o e-mail de contato da refer\u00EAncia comercial [optional]
 */
@property(nonatomic) NSString* email;

@end
