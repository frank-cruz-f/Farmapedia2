//
//  TableViewController.m
//  Farmapedia
//
//  Created by Diego Murillo on 01/09/13.
//  Copyright (c) 2013 Diego Murillo. All rights reserved.
//

#import "ListaMedicamentosViewController.h"
#import "MedicamentoViewController.h"
#import "Medicamento.h"
@interface ListaMedicamentosViewController ()

@end

@implementation ListaMedicamentosViewController
@synthesize listaMedicamentos;
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

    //listaMedicamentos = [[NSArray alloc]initWithObjects:@"Acetaminofen", @"Panadol Forte",@"Lonarapril",@"Cataflan",@"NOP",@"CORTA",@"12354",nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
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
    return listaMedicamentos.count;
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
    Medicamento *medicamento = [listaMedicamentos objectAtIndex:indexPath.row];
    cell.textLabel.text = medicamento.nombre;
    //Set the detail disclosure indicator
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    //Return the cell
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    MedicamentoViewController *medicamentoController = (MedicamentoViewController*)[mainStoryboard instantiateViewControllerWithIdentifier:@"MedicamentoView"];
    Medicamento *medicamento = [listaMedicamentos objectAtIndex:indexPath.row];
    medicamentoController.title = medicamento.nombre;
    medicamentoController.medicamento = medicamento;
    [self.navigationController pushViewController:medicamentoController animated:YES];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //DetailViewController * DVC = [segue destinationViewController]; OR
    
    //Create a DetailViewController Object
    MedicamentoViewController * DVC = [[MedicamentoViewController alloc]initWithNibName:@"MedicamentoView" bundle:nil];
    
    //Set DVC to the destinationViewController property of the segue
    DVC = [segue destinationViewController];
    
}


@end
