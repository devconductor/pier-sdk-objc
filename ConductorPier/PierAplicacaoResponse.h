#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAplicacaoResponse
@end

@interface PierAplicacaoResponse : PierObject


@property(nonatomic) NSNumber* _id;
/* {{{aplicacao_dto_nome_value}}} [optional]
 */
@property(nonatomic) NSString* nome;
/* {{{aplicacao_dto_token_value}}} [optional]
 */
@property(nonatomic) NSNumber* tokenId;

@end