//
//  MyTableViewController.m
//  MyContactsTest
//
//  Created by H on 11/27/16.
//  Copyright © 2016 Harman. All rights reserved.
//

#import "MyTableViewController.h"
#import "GlobalVariable.h"
#import "Contact.h"
#import "HistoryContact.h"
#import "InfoViewController.h"

@interface MyTableViewController ()
{
    
}

@end

@implementation MyTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void) viewWillAppear:(BOOL)animated
{
    [[GlobalVariable sharedVariable] sort];
    [self.tableView reloadData];
    [super viewWillAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[GlobalVariable sharedVariable].myContacts count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:indexPath];
    
    cell.firstName.hidden = NO;
    cell.secondName.hidden = NO;
    cell.telephone.hidden = NO;
    cell.imgCall.hidden = NO;
    
    NSInteger thisrow = indexPath.row;
    
    cell.firstName.text =  [[GlobalVariable sharedVariable].myContacts[indexPath.row] getFirstName];
    cell.secondName.text = [[GlobalVariable sharedVariable].myContacts[indexPath.row] getSecondName];
    cell.telephone.text =  [[GlobalVariable sharedVariable].myContacts[indexPath.row] getWorkPhone];
    
    cell.imgCall.indexRow = thisrow; //присваиваем кнопке значение indexPath
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    _segueRow = indexPath.row;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"InfoSegue"])
    {
        InfoViewController *svc = [segue destinationViewController];
        svc.infFirstName  = [[GlobalVariable sharedVariable].myContacts[_segueRow] getFirstName];
        svc.infSecondName = [[GlobalVariable sharedVariable].myContacts[_segueRow] getSecondName];
        svc.infHomePhone  = [[GlobalVariable sharedVariable].myContacts[_segueRow] getHomePhone];
        svc.infWorkPhone  = [[GlobalVariable sharedVariable].myContacts[_segueRow] getWorkPhone];
        svc.index = _segueRow;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)DoAlert:(id)sender
{
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    NSString *tmpDate = [NSString stringWithFormat:@"%@", [dateFormatter stringFromDate:[NSDate date]]];
    
    [dateFormatter setDateFormat:@"HH:mm:ss"];
    NSString *tmpTime = [NSString stringWithFormat:@"%@", [dateFormatter stringFromDate:[NSDate date]]];
    
    NSInteger row = [sender indexRow]; //извлекаем IndexRow с кнопки
    
    HistoryContact *tmpContact = [[HistoryContact alloc] init];
    tmpContact.FirstName =  [[GlobalVariable sharedVariable].myContacts[row] getFirstName];
    tmpContact.SecondName = [[GlobalVariable sharedVariable].myContacts[row] getSecondName];
    tmpContact.WorkPhone =  [[GlobalVariable sharedVariable].myContacts[row] getWorkPhone];
    tmpContact.HistoryDate = tmpDate;
    tmpContact.HistoryTime = tmpTime;
    
    [[GlobalVariable sharedVariable].historyCalls addObject:tmpContact];    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Call Simulator"
                                                    message:@"Calling"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil, nil];
    [alert show];
}
@end
