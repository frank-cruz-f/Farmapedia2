//
//  MedicamentoViewController.m
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import "MedicamentoViewController.h"

@interface MedicamentoViewController ()

@end

@implementation MedicamentoViewController
@synthesize medicamento, nombreTextField, nombreventaTextField, tagsTextField, descripcionTextField, medicamentoImageView, instruccionesTextField, efectosTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@",medicamento.imagen);
	nombreTextField.text = medicamento.nombre;
    nombreventaTextField.text = medicamento.nombreventa;
    descripcionTextField.text = medicamento.descripcion;
    UIImage * picture=[UIImage imageNamed:medicamento.imagen];
    medicamentoImageView.image = picture;
    tagsTextField.text = medicamento.tags;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
