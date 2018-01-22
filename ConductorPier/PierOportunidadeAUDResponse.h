#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "PierCdtDetalheOportunidadeAUD.h"


@protocol PierOportunidadeAUDResponse
@end

@interface PierOportunidadeAUDResponse : PierObject

/* C\u00C3\u00B3digo identificador da oportunidade [optional]
 */
@property(nonatomic) NSNumber* _id;
/* C\u00C3\u00B3digo identificador do tipo oportunidade [optional]
 */
@property(nonatomic) NSNumber* idTipoOportunidade;
/* C\u00C3\u00B3digo identificador do status oportunidade [optional]
 */
@property(nonatomic) NSNumber* idStatusOportunidade;
/* Data cadastro da oportunidade. [optional]
 */
@property(nonatomic) NSString* dataCadastro;
/* Data atualiza\u00C3\u00A7\u00C3\u00A3o da oportunidade. [optional]
 */
@property(nonatomic) NSString* dataAtualizacao;
/* N\u00C3\u00BAmero receita federal do cliente ao qual ser\u00C3\u00A1 ofertada a oportunidade [optional]
 */
@property(nonatomic) NSString* numeroReceitaFederal;
/* In\u00C3\u00ADcio da vig\u00C3\u00AAncia da oportunidade [optional]
 */
@property(nonatomic) NSString* dataInicioVigencia;
/* fim da vig\u00C3\u00AAncia da oportunidade [optional]
 */
@property(nonatomic) NSString* dataFimVigencia;
/* Flag de verifica\u00C3\u00A7\u00C3\u00A3o se a oportunidade est\u00C3\u00A1 ativa [optional]
 */
@property(nonatomic) NSNumber* flagAtivo;
/* Lista de detalhes da oportunidade [optional]
 */
@property(nonatomic) NSArray<PierCdtDetalheOportunidadeAUD>* detalhes;
/* Data da auditoria [optional]
 */
@property(nonatomic) NSString* revDate;
/* Tipo da auditoria [optional]
 */
@property(nonatomic) NSNumber* revType;
/* Identificador da auditoria [optional]
 */
@property(nonatomic) NSNumber* rev;

@end
