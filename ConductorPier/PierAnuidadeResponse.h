#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierAnuidadeResponse
@end

@interface PierAnuidadeResponse : PierObject

/* Identificador do Tipo de anuidade de b\u00C3\u00B4nus de celular [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Descri\u00C3\u00A7\u00C3\u00A3o do tipo de anuidade de b\u00C3\u00B4nus de celular [optional]
 */
@property(nonatomic) NSString* descricao;
/* Valor do tipo de anuidade de b\u00C3\u00B4nus de celular [optional]
 */
@property(nonatomic) NSNumber* valor;
/* Se o tipo de anuidade de b\u00C3\u00B4nus de celular \u00C3\u00A9 bonificada [optional]
 */
@property(nonatomic) NSNumber* flagAnuidadeBonificada;

@end
