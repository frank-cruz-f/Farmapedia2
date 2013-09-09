//
//  MedicamentoViewController.h
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Medicamento.h"

@interface MedicamentoViewController : UIViewController

@property(strong, nonatomic) Medicamento *medicamento;
@property (weak, nonatomic) IBOutlet UIImageView *medicamentoImageView;
@property (weak, nonatomic) IBOutlet UITextField *nombreTextField;
@property (weak, nonatomic) IBOutlet UITextField *nombreventaTextField;
@property (weak, nonatomic) IBOutlet UITextField *tagsTextField;
@property (weak, nonatomic) IBOutlet UITextView *descripcionTextField;
@property (weak, nonatomic) IBOutlet UITextView *instruccionesTextField;
@property (weak, nonatomic) IBOutlet UITextView *efectosTextField;

@end
