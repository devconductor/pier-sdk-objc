#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierMoedaResponse
@end

@interface PierMoedaResponse : PierObject

/* Identificador do tipo de moeda. [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00F3digo identificador do tipo de moeda. [optional]
 */
@property(nonatomic) NSString* codigoMoeda;
/* S\u00EDmbolo da Moeda. [optional]
 */
@property(nonatomic) NSString* simbolo;
/* Descri\u00E7\u00E3o do tipo da moeda. [optional]
 */
@property(nonatomic) NSString* descricao;

@end
