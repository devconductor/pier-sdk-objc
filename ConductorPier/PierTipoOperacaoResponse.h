#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierTipoOperacaoResponse
@end

@interface PierTipoOperacaoResponse : PierObject

/* C\u00C3\u00B3digo identificador do TipoOperacao 
 */
@property(nonatomic) NSNumber* _id;
/* C\u00C3\u00B3digo do TipoOperacao 
 */
@property(nonatomic) NSString* tipoOperacao;
/* Nome do TipoOperacao 
 */
@property(nonatomic) NSString* nome;
/* Decri\u00C3\u00A7\u00C3\u00A3o do TipoOperacao 
 */
@property(nonatomic) NSString* descricao;
/* Excedente permitido para o TipoOperacao [optional]
 */
@property(nonatomic) NSNumber* excedentePermitido;
/* Tipo do Excedente permitido para o TipoOperacao [optional]
 */
@property(nonatomic) NSString* tipoExcedentePermitido;
/* Valor minimo para a transa\u00C3\u00A7\u00C3\u00A3o do TipoOperacao 
 */
@property(nonatomic) NSNumber* valorMinimo;
/* Valor maximo para a transa\u00C3\u00A7\u00C3\u00A3o do TipoOperacao 
 */
@property(nonatomic) NSNumber* valorMaximo;
/* Valor TAC da transa\u00C3\u00A7\u00C3\u00A3o do TipoOperacao [optional]
 */
@property(nonatomic) NSNumber* valorTAC;
/* Flag Tira TAC do TipoOperacao [optional]
 */
@property(nonatomic) NSNumber* flagTiraTac;
/* Identificador do Produto do TipoOperacao 
 */
@property(nonatomic) NSNumber* idProduto;
/* Identificador do Estabelecimento do TipoOperacao 
 */
@property(nonatomic) NSNumber* idEstabelecimento;
/* Tarifa do TipoOperacao [optional]
 */
@property(nonatomic) NSNumber* tarifa;
/* Remunera\u00C3\u00A7\u00C3\u00A3o do Emissor para o TipoOperacao [optional]
 */
@property(nonatomic) NSNumber* remuneracaoEmissor;
/* Plano m\u00C3\u00A1ximo do TipoOperacao 
 */
@property(nonatomic) NSNumber* planoMaximo;
/* Plano minimo do TipoOperacao 
 */
@property(nonatomic) NSNumber* planoMinimo;

@end
