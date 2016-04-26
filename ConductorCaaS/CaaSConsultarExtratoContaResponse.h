#import <Foundation/Foundation.h>
#import "CaaSObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "CaaSExtratoResponse.h"


@protocol CaaSConsultarExtratoContaResponse
@end

@interface CaaSConsultarExtratoContaResponse : CaaSObject


@property(nonatomic) NSNumber* codigoRetorno;

@property(nonatomic) NSNumber* comprasNacionais;

@property(nonatomic) NSString* cpf;

@property(nonatomic) NSNumber* creditosNacionais;

@property(nonatomic) NSString* dataVencimento;

@property(nonatomic) NSNumber* debitosNacionais;

@property(nonatomic) NSString* descricaoRetorno;

@property(nonatomic) NSArray<CaaSExtratoResponse>* extrato;

@property(nonatomic) NSNumber* idCartao;

@property(nonatomic) NSNumber* idConta;

@property(nonatomic) NSNumber* multa;

@property(nonatomic) NSNumber* pagamentos;

@property(nonatomic) NSNumber* saldoAtualFinal;

@property(nonatomic) NSNumber* saldoExtratoAnterior;

@property(nonatomic) NSNumber* tarifasNacionais;

@property(nonatomic) NSNumber* valorMinimoExtrato;

@end