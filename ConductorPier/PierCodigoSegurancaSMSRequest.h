#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierCodigoSegurancaSMSRequest
@end

@interface PierCodigoSegurancaSMSRequest : PierObject

/* {{{codigo_seguranca_s_m_s_request_ddd_value}}} [optional]
 */
@property(nonatomic) NSString* ddd;
/* {{{codigo_seguranca_s_m_s_request_telefone_value}}} [optional]
 */
@property(nonatomic) NSString* telefone;
/* {{{codigo_seguranca_s_m_s_request_codigo_seguranca_value}}} [optional]
 */
@property(nonatomic) NSString* codigoSeguranca;

@end
