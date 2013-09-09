//
//  ListaCategoriasViewController.m
//  Farmapedia
//
//  Created by Diego Murillo on 07/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//
#import "Categoria.h"
#import "Subcategoria.h"
#import "Medicamento.h"
#import "ListaCategoriasViewController.h"
#import "ListaSubcategoriasViewController.h"

@interface ListaCategoriasViewController ()

@end

@implementation ListaCategoriasViewController
@synthesize listaCategorias;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Farmapedia";
    
    Categoria *analgesicos = [Categoria alloc];
    analgesicos.nombre = @"Analgésicos";
    
    Subcategoria *alivioGeneral = [Subcategoria alloc];
    alivioGeneral.nombre = @"Alivio del Dolor";
    
    Medicamento *paracetamol = [Medicamento alloc];
    paracetamol.nombre = @"Paracetamol";
    paracetamol.nombreventa = @"Acetaminofen";
    paracetamol.tags = @"Dolor General-Dolor de Cabeza";
    paracetamol.descripcion= @"El paracetamol (DCI) o acetaminofén (acetaminofeno) es un fármaco con propiedades analgésicas, sin propiedades antiinflamatorias clínicamente significativas. Actúa inhibiendo la síntesis de prostaglandinas, mediadores celulares responsables de la aparición del dolor. Además, tiene efectos antipiréticos. Se presenta habitualmente en forma de cápsulas, comprimidos, supositorios o gotas de administración oral.";
    paracetamol.numero = 0;
    paracetamol.imagen = @"Pack-Paracetamol-Bayer[1].jpg";
    
    Medicamento *acidoAcetisalicilico = [Medicamento alloc];
    acidoAcetisalicilico.nombre = @"Acido Acetisalicilico";
    acidoAcetisalicilico.numero = 1;
    
    alivioGeneral.listaMedicamentos = [[NSArray alloc] initWithObjects:paracetamol, acidoAcetisalicilico, nil];
    
    Subcategoria *disminorrea = [Subcategoria alloc];
    disminorrea.nombre = @"Alivio de disminorrea";
    
    Subcategoria *alivioBucal = [Subcategoria alloc];
    alivioBucal.nombre = @"Alivio Bucal";
    
    Subcategoria *alivioMuscular = [Subcategoria alloc];
    alivioMuscular.nombre = @"Alivio Muscular";
    
    analgesicos.listaSubcategorias = [[NSArray alloc] initWithObjects:alivioGeneral, disminorrea, alivioBucal, alivioMuscular, nil];
    
    Categoria *antiAcidos = [Categoria alloc];
    antiAcidos.nombre = @"AntiAcidos";
    
    Categoria *tosResfrioGarganta = [Categoria alloc];
    tosResfrioGarganta.nombre = @"Tos, Resfrio y Garganta";
    
    Categoria *oticos = [Categoria alloc];
    oticos.nombre = @"Óticos";
    
    Categoria *oftalmicos = [Categoria alloc];
    oftalmicos.nombre = @"Oftálmicos";
    
    Categoria *pies = [Categoria alloc];
    pies.nombre = @"Cuidado de pies";
    
    Categoria *hemorroidesCirculatorio = [Categoria alloc];
    hemorroidesCirculatorio.nombre = @"Hemorroides y Circulatorio";
    
    Categoria *cabello = [Categoria alloc];
    cabello.nombre = @"Cabello y Cuero Cabelludo";
    
    Categoria *fiebreHenoAlergias = [Categoria alloc];
    fiebreHenoAlergias.nombre = @"Fiebre del Heno y Alergias";
    
    Categoria *ninos = [Categoria alloc];
    ninos.nombre = @"Niños";
    
    Categoria *cavidadBucal = [Categoria alloc];
    cavidadBucal.nombre = @"Cuidados de cavidad bucal";
    
    Categoria *antisepticos = [Categoria alloc];
    antisepticos.nombre = @"Antisépticos y Piel";
    
    Categoria *sueno = [Categoria alloc];
    sueno.nombre = @"Sueño";
    
    Categoria *estimulantes = [Categoria alloc];
    estimulantes.nombre = @"Estimulantes y Tonicos";
    
    Categoria *edulcorantes = [Categoria alloc];
    edulcorantes.nombre = @"Edulcorantes Sintéticos";
    
    Categoria *insecticidasDesinfectantes = [Categoria alloc];
    insecticidasDesinfectantes.nombre = @"Insecticidas y Desinfectantes";
    
    Categoria *apositos = [Categoria alloc];
    apositos.nombre = @"Apósitos Quirúrgicos";
    
    Categoria *envoltorios = [Categoria alloc];
    envoltorios.nombre = @"Envoltorios o Sobres con";
    
    Categoria *dejarFumar = [Categoria alloc];
    dejarFumar.nombre = @"Contra el Fumado";

    listaCategorias = [[NSArray alloc] initWithObjects: analgesicos, antiAcidos, tosResfrioGarganta, oticos, oftalmicos, pies, hemorroidesCirculatorio, cabello, fiebreHenoAlergias, ninos, cavidadBucal, antisepticos, sueno, estimulantes, edulcorantes, insecticidasDesinfectantes, apositos, envoltorios, dejarFumar, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return listaCategorias.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Create an NSString object that we can use as the reuse identifier
    static NSString *CellIdentifier = @"Cell";
    
    //Check to see if we can reuse a cell from a row that has just rolled off the screen
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //If there are no cells to be reused, create a new cell
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    //Set the text attribute to whatever we are currently looking at in our array
    Categoria *categoria = [listaCategorias objectAtIndex:indexPath.row];
    cell.textLabel.text = categoria.nombre;
    //Set the detail disclosure indicator
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    //Return the cell
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ListaSubcategoriasViewController *subcategoriasViewController = [[ListaSubcategoriasViewController alloc] init];
    Categoria *categoria = [listaCategorias objectAtIndex:indexPath.row];
    subcategoriasViewController.listaSubcategorias = categoria.listaSubcategorias;
    subcategoriasViewController.title = categoria.nombre;
    [self.navigationController pushViewController:subcategoriasViewController animated:YES];
     
}

@end
