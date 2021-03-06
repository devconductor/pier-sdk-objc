#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierArquivoAjusteLoteResponse
@end

@interface PierArquivoAjusteLoteResponse : PierObject


@property(nonatomic) NSDate* dataProcessamento;
/* {{{arquivo_ajuste_lote_response_id_value}}} [optional]
 */
@property(nonatomic) NSNumber* _id;
/* {{{arquivo_ajuste_lote_response_length_value}}} [optional]
 */
@property(nonatomic) NSNumber* length;
/* {{{arquivo_ajuste_lote_response_lines_value}}} [optional]
 */
@property(nonatomic) NSNumber* lines;
/* {{{arquivo_ajuste_lote_response_name_value}}} [optional]
 */
@property(nonatomic) NSString* name;
/* {{{arquivo_ajuste_lote_response_status_value}}} [optional]
 */
@property(nonatomic) NSString* status;
/* {{{arquivo_ajuste_lote_response_srcName_value}}} [optional]
 */
@property(nonatomic) NSString* srcName;

@end
