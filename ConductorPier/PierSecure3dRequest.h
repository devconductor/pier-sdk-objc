#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierSecure3dRequest
@end

@interface PierSecure3dRequest : PierObject

/* {{{id_cartao_3d_secure}}} [optional]
 */
@property(nonatomic) NSNumber* idCartao;
/* {{{id_cartao_3d_secure}}} [optional]
 */
@property(nonatomic) NSString* otp;

@end