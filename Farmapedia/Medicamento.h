//
//  Medicamento.h
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Medicamento : NSObject

@property(strong, nonatomic) NSString *nombre;
@property(strong, nonatomic) NSString *nombreventa;
@property(strong, nonatomic) NSString *instrucciones;
@property(strong, nonatomic) NSString *tags;
@property(strong, nonatomic) NSString *imagen;
@property int numero;
@property(strong, nonatomic) NSString *descripcion;

@end
