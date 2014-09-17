//
//  ListTableViewDataSource.m
//  EmptyProject
//
//  Created by Brandon Beecroft on 9/16/14.
//  Copyright (c) 2014 TannerLabs. All rights reserved.
//

#import "ListTableViewDataSource.h"

@implementation ListTableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    for (int x = 1; x < 11; x++) {
        NSString *strFromInt = [NSString stringWithFormat:@"%i",x];
        cell.textLabel.text = strFromInt;
    }
    return cell;
}

-(void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

@end
