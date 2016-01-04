//
//  TableViewController.m
//  ZiDingYi
//
//  Created by Ibokan on 15/12/27.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property(nonatomic,strong)NSArray * array;
@property(nonatomic,strong)NSArray * array1;
@property(nonatomic,strong)NSArray * array2;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect framee=self.tableView.frame;
    framee.origin.y=23;
    NSLog(@"%f",framee.origin.y);
    NSLog(@"%f",framee.origin.x);
    NSLog(@"%f",framee.size.height);
    NSLog(@"%f",framee.size.width);
    
    self.tableView.frame=framee;
    NSLog(@"%f",self.tableView.frame.origin.y);
    NSLog(@"%f",self.tableView.frame.origin.x);
    NSLog(@"%f",self.tableView.frame.size.height);
    NSLog(@"%f",self.tableView.frame.size.width);
    self.array=@[@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19"];
    self.array1=@[@"21",@"22",@"23",@"24",@"25",@"26",@"27",@"28",@"29"];
     self.array2=@[@"31",@"32",@"33",@"34",@"35",@"36",@"37",@"38",@"39"];
    UIView * view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 80)];
    
    view.backgroundColor=[UIColor blueColor];
    self.tableView.tableHeaderView=view;
    self.tableView.tableFooterView=view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section==1) {
        return 9;
    }else if (section==2){
        return 9;
    }else{
       return 9;
    }
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    if (indexPath.section==0) {
        cell.textLabel.text=self.array[indexPath.row];
    }else if (indexPath.section==1){
        cell.textLabel.text=self.array1[indexPath.row];
    }else{
        cell.textLabel.text=self.array2[indexPath.row];
    }
    
    return cell;
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString * str;
    if (section==0) {
        str=@"第一分区头";
    }else if (section==1){
        str=@"第二分区头";
    }else{
        str=@"第三分区头";
    }
    return str;
}
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    NSString * str;
    if (section==0) {
        str=@"第一分区尾";
    }else if (section==1){
        str=@"第二分区尾";
    }else{
        str=@"第三分区尾";
    }
    return str;
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView * view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 50)];
    view.backgroundColor=[UIColor redColor];
    return view;
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

@end
