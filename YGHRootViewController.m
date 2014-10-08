//
//  YGHRootViewController.m
//  UIcustomcell
//
//  Created by mac on 14-9-25.
//  Copyright (c) 2014年 ___YUGUIHUA___. All rights reserved.
//

#import "YGHRootViewController.h"
#import "YGHCustomTableViewCell.h"
#import "YGHSencustomTableViewCell.h"
#import "YGHPerson.h"
#import "YGHImage.h"
#import "YGHXibTableViewCell.h"

@interface YGHRootViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *table;
@property(nonatomic,strong)NSMutableArray *data;
@end

@implementation YGHRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)initdata
{
    _data=[[NSMutableArray alloc]init];
}
-(void)creatperoson
{
    NSArray *fem=@[@"男",@"女"];
    for (NSUInteger i=0; i<20; i++) {
        if(i%3!=0)
        {YGHPerson *person=[[YGHPerson alloc]init];
        person.name=[NSString stringWithFormat:@"qianfeng%d",i];
        person.famle=fem[arc4random_uniform(2)];
        person.title=[NSString stringWithFormat:@"%d",i];
        person.image=@"qq.png";
        [_data addObject:person];
        }
        else
        {
            YGHImage *image=[[YGHImage alloc]init];
            image.image1=@"1.jpg";
            image.image2=@"2.jpg";
            image.image3=@"3.jpg";
            [_data addObject:image];
        }
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{   YGHCustomTableViewCell *cell=[[YGHCustomTableViewCell alloc]init];
    YGHSencustomTableViewCell *cell1=[[YGHSencustomTableViewCell alloc]init];
    if([_data[indexPath.row] isMemberOfClass:[YGHPerson class]])
    { return  cell.imageview1.frame.size.height+10;}
    else
    {return  cell1.imageview1.frame.size.height+10;}
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    _table=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self initdata];
    [self creatperoson];
    _table.dataSource=self;
    _table.delegate=self;
    [self.view addSubview:_table];
    [_table registerNib:[UINib nibWithNibName:@"YGHXibTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell2"];
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _data.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"cell";
    static NSString *cellid1=@"cell1";
    static NSString *cellid2=@"cell2";
   // YGHXibTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellid2 ];
    if([_data[indexPath.row] isMemberOfClass:[YGHPerson class]])
    {
        YGHCustomTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellid];
    if(cell==nil)
       {
        cell=[[YGHCustomTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid];
        }
        [cell set:_data [indexPath.row]];
        return cell;
    }
    else
    {
        
      
        YGHSencustomTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellid1];
            if(cell==nil)
            {
                cell=[[YGHSencustomTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid1];
         }
        [cell set:_data [indexPath.row]];
        return cell;
    }
   // return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
