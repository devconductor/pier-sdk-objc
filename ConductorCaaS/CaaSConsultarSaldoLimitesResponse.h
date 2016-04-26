#import <Foundation/Foundation.h>
#import "CaaSObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol CaaSConsultarSaldoLimitesResponse
@end

@interface CaaSConsultarSaldoLimitesResponse : CaaSObject


@property(nonatomic) NSNumber* codigoRetorno;

@property(nonatomic) NSString* dataVencimento;

@property(nonatomic) NSString* descricaoRetorno;

@property(nonatomic) NSNumber* disponibCompraNac;

@property(nonatomic) NSNumber* disponibGlobalCredito;

@property(nonatomic) NSNumber* disponibParceladoNac;

@property(nonatomic) NSNumber* disponibParcelasNac;

@property(nonatomic) NSNumber* disponibSaqueNacGlobal;

@property(nonatomic) NSNumber* limiteCompraNac;

@property(nonatomic) NSNumber* limiteGlobalCredito;

@property(nonatomic) NSNumber* limiteParceladoNac;

@property(nonatomic) NSNumber* limiteParcelasNac;

@property(nonatomic) NSNumber* limiteSaqueNacGlobal;

@property(nonatomic) NSNumber* saldoAtualFinal;

@property(nonatomic) NSNumber* saldoDevedor;

@property(nonatomic) NSNumber* saldoFuturo;

@end