//
//  Categoria.h
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Subcategoria.h"

@interface Categoria : NSObject

@property(nonatomic) NSString *nombre;
@property(strong, nonatomic) NSArray *listaSubcategorias;

@end
