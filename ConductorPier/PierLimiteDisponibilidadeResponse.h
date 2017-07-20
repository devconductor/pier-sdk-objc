#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierLimiteDisponibilidadeResponse
@end

@interface PierLimiteDisponibilidadeResponse : PierObject

/* C\u00C3\u00B3digo de Identifica\u00C3\u00A7\u00C3\u00A3o de Limite e Disponibilidade (id). 
 */
@property(nonatomic) NSNumber* _id;
/* Valor do limite de cr\u00C3\u00A9dito. 
 */
@property(nonatomic) NSNumber* limiteGlobal;
/* Valor do limite de cr\u00C3\u00A9dito para uso exclusivo em compras nacionais. 
 */
@property(nonatomic) NSNumber* limiteCompra;
/* Valor do limite de cr\u00C3\u00A9dito para transa\u00C3\u00A7\u00C3\u00B5es de compras parceladas. 
 */
@property(nonatomic) NSNumber* limiteParcelado;
/* Valor do limite de cr\u00C3\u00A9dito acumulado da soma das parcelas das compras que forem realizadas nesta modalidade. 
 */
@property(nonatomic) NSNumber* limiteParcelas;
/* Valor do limite de cr\u00C3\u00A9dito para transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. 
 */
@property(nonatomic) NSNumber* limiteSaqueGlobal;
/* Valor do limite de cr\u00C3\u00A9dito para transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional dentro de cada ciclo de faturamento. 
 */
@property(nonatomic) NSNumber* limiteSaquePeriodo;
/* Valor da margem de cr\u00C3\u00A9dito para consigna\u00C3\u00A7\u00C3\u00B5es (desconto em folha). 
 */
@property(nonatomic) NSNumber* limiteConsignado;
/* Valor do limite de cr\u00C3\u00A9dito para uso exclusivo em compras internacionais. 
 */
@property(nonatomic) NSNumber* limiteInternacionalCompra;
/* Valor do limite de cr\u00C3\u00A9dito para transa\u00C3\u00A7\u00C3\u00B5es internacionais de compras parceladas. 
 */
@property(nonatomic) NSNumber* limiteInternacionalParcelado;
/* Valor do limite de cr\u00C3\u00A9dito acumulado da soma das parcelas das compras internacionais que forem realizadas nesta modalidade. 
 */
@property(nonatomic) NSNumber* limiteInternacionalParcelas;
/* Valor do limite de cr\u00C3\u00A9dito para transa\u00C3\u00A7\u00C3\u00B5es de saque internacional. 
 */
@property(nonatomic) NSNumber* limiteInternacionalSaqueGlobal;
/* Valor do limite de cr\u00C3\u00A9dito para transa\u00C3\u00A7\u00C3\u00B5es de saque internacional dentro de cada ciclo de faturamento. 
 */
@property(nonatomic) NSNumber* limiteInternacionalSaquePeriodo;
/* Valor m\u00C3\u00A1ximo do limite de cr\u00C3\u00A9dito para realizar transa\u00C3\u00A7\u00C3\u00B5es. 
 */
@property(nonatomic) NSNumber* limiteMaximo;
/* Valor de cr\u00C3\u00A9dito dispon\u00C3\u00ADvel para transa\u00C3\u00A7\u00C3\u00B5es. 
 */
@property(nonatomic) NSNumber* saldoDisponivelGlobal;
/* Valor de cr\u00C3\u00A9dito dispon\u00C3\u00ADvel para transa\u00C3\u00A7\u00C3\u00B5es de compra nacional. 
 */
@property(nonatomic) NSNumber* saldoDisponivelCompra;
/* Valor de cr\u00C3\u00A9dito dispon\u00C3\u00ADvel para transa\u00C3\u00A7\u00C3\u00B5es de compra nacional parcelada. 
 */
@property(nonatomic) NSNumber* saldoDisponivelParcelado;
/* Valor de cr\u00C3\u00A9dito dispon\u00C3\u00ADvel para utilizar como valor de parcelas Nacionais em um determinado ciclo de faturamento. 
 */
@property(nonatomic) NSNumber* saldoDisponivelParcelas;
/* Valor de cr\u00C3\u00A9dito que o portador possui dispon\u00C3\u00ADvel para realizar transa\u00C3\u00A7\u00C3\u00B5es de Saque Nacional. 
 */
@property(nonatomic) NSNumber* saldoDisponivelSaque;
/* Saldo atual de pontos do programa de fidelidade. 
 */
@property(nonatomic) NSNumber* saldoPontosFidelidade;
/* Valor de cr\u00C3\u00A9dito dispon\u00C3\u00ADvel para transa\u00C3\u00A7\u00C3\u00B5es de compra internacional. 
 */
@property(nonatomic) NSNumber* saldoDisponivelCompraInternacional;
/* Valor de cr\u00C3\u00A9dito dispon\u00C3\u00ADvel para transa\u00C3\u00A7\u00C3\u00B5es de saque internacional. 
 */
@property(nonatomic) NSNumber* saldoDisponivelSaqueInternacional;

@end
