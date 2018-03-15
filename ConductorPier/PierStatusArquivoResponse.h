#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierStatusArquivoResponse
@end

@interface PierStatusArquivoResponse : PierObject

/* C\u00F3digo de identifica\u00E7\u00E3o do status do arquivo [optional]
 */
@property(nonatomic) NSNumber* _id;
/* Nome do status do arquivo [optional]
 */
@property(nonatomic) NSString* nome;
/* Descri\u00E7\u00E3o do status do arquivo [optional]
 */
@property(nonatomic) NSString* descricao;

@end
