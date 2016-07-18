#import <Foundation/Foundation.h>
#import "PierObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */



@protocol PierConsultarContaCartaoResponse
@end

@interface PierConsultarContaCartaoResponse : PierObject


@property(nonatomic) NSString* dataValidade;

@property(nonatomic) NSString* descricaoEstagio;

@property(nonatomic) NSString* descricaoStatus;

@property(nonatomic) NSNumber* estagio;

@property(nonatomic) NSNumber* flagCancelamento;

@property(nonatomic) NSNumber* idCartao;

@property(nonatomic) NSString* numeroCartao;

@property(nonatomic) NSString* portador;

@property(nonatomic) NSNumber* portadorId;

@property(nonatomic) NSNumber* status;

@property(nonatomic) NSDate* statusData;

@end