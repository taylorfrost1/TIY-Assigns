//
//  SpotifyTableViewController.m
//  spotifyJSONAssignment
//
//  Created by Taylor Frost on 6/7/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "SpotifyTableViewController.h"

@interface SpotifyTableViewController ()
@property (nonatomic, strong)NSMutableArray *albumArray;

@end

@implementation SpotifyTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.albumArray = [[NSMutableArray alloc]init];
    
    //1. Load JSON File
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"spotify" ofType:@"json"];
    
    NSString *jsonString = [[NSString alloc]initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
    
//    NSLog(@"The json is working so far");
    
     //2. Convert to NSData from string
    
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    if (data != nil) {
        
        NSError *jsonError = nil;
        
        // 3. Get the NSDictionary using NSJSONSerialization
        
        //LEVEL 1
        
        NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];
        
        if(jsonError == nil) {
            NSLog(@"I have a dictionary");
            
            NSArray *itemsArray = [jsonDictionary valueForKey:@"items"];
            
            for(NSDictionary *itemDict in itemsArray) {
                
                Album *theAlbum = [[Album alloc] initWithDictionary:itemDict];
                [self.albumArray addObject:theAlbum];
            }
            
        }
        
        
    }
                          
    

}











#pragma mark - Table view data source


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text =@"Test";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}




@end
