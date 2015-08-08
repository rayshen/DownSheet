//
//  ViewController.m
//  DownSheet
//
//  Created by wolf on 14-11-30.
//  Copyright (c) 2014年 wolf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initDemoData];
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 210, 100)];
    [button setTitle:@"弹出菜单演示" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickMenu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
	// Do any additional setup after loading the view.
}

-(void)initDemoData{
    DownSheetModel *Model_1 = [[DownSheetModel alloc]init];
    Model_1.icon = @"icon_add";
    Model_1.icon_on = @"icon_add_hover";
    Model_1.title = @"添加";
    DownSheetModel *Model_2 = [[DownSheetModel alloc]init];
    Model_2.icon = @"icon_album";
    Model_2.icon_on = @"icon_album_hover";
    Model_2.title = @"专辑";
    DownSheetModel *Model_3 = [[DownSheetModel alloc]init];
    Model_3.icon = @"icon_buy";
    Model_3.icon_on = @"icon_buy_hover";
    Model_3.title = @"购买";
    DownSheetModel *Model_4 = [[DownSheetModel alloc]init];
    Model_4.icon = @"icon_computer";
    Model_4.icon_on = @"icon_computer_hover";
    Model_4.title = @"同步";
    DownSheetModel *Model_5 = [[DownSheetModel alloc]init];
    Model_5.icon = @"icon_down";
    Model_5.icon_on = @"icon_down_hover";
    Model_5.title = @"下载";
    DownSheetModel *Model_6 = [[DownSheetModel alloc]init];
    Model_6.icon = @"icon_del";
    Model_6.icon_on = @"icon_del_hover";
    Model_6.title = @"删除";
    MenuList = [[NSArray alloc]init];
    MenuList = @[Model_1,Model_2,Model_3,Model_4,Model_5,Model_6];
}

-(void)clickMenu{
    DownSheet *sheet = [[DownSheet alloc]initWithlist:MenuList height:0];
    sheet.delegate = self;
    [sheet showInView:nil];
}

-(void)didSelectIndex:(NSInteger)index{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:[NSString stringWithFormat:@"您当前点击的是第%d个按钮",index] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com 
