//
//  PlayViewController.m
//  ProjectAvengers
//
//  Created by Jason Wang on 8/4/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import "PlayViewController.h"
#import "Avengers.h"

@interface PlayViewController ()

@property (nonatomic) NSArray *questions;
@property (nonatomic) NSArray *options;
@property (nonatomic) NSString *selectedQuestion;
@property (nonatomic) NSMutableArray *resultData;
@property (nonatomic) NSInteger currentQuestion;
@property (nonatomic) NSArray *resultCount;
@property (nonatomic) NSMutableArray *ironMan;
@property (nonatomic) NSMutableArray *thor;
@property (nonatomic) NSMutableArray *hulk;
@property (nonatomic) NSMutableArray *hawkeye;
@property (nonatomic) NSMutableArray *blackWidow;
@property (nonatomic) NSMutableArray *captainAmerica;
@property (weak, nonatomic) IBOutlet UIView *resultView;
- (void)nextQuestion;

@end

@implementation PlayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.resultView setHidden:YES];
    
    self.questions = [Avengers.heroQuestions allKeys];
    [self nextQuestion];
    
    
    
}

- (void)nextQuestion {
    
    self.selectedQuestion = self.questions[self.currentQuestion];
    
    self.options = Avengers.heroQuestions[self.selectedQuestion];
//    NSDictionary *questionsDictionary = [Avengers heroQuestions];
//    NSString *question = self.selectedQuestion;
//    NSArray *options = [questionsDictionary objectForKey:question];

}

-(void)storeResult: (NSString *)resultSelected {
    [self.resultData addObject:resultSelected];
}

- (IBAction)selected:(id)sender {
    NSString *userSelected;
    if (self.buttonA == sender) {
        
        userSelected= self.optionA.text;
        
        [self.ironMan addObject:userSelected];
        
    } else if (self.buttonB == sender){
        
        userSelected= self.optionB.text;
        
        [self.captainAmerica addObject:userSelected];

    } else if (self.buttonC == sender){
        
        userSelected= self.optionC.text;
        
        [self.hulk addObject:userSelected];

    } else if (self.buttonD == sender){
        
        userSelected= self.optionD.text;
        
        [self.hawkeye addObject:userSelected];

    } else if (self.buttonE == sender){
        
        userSelected= self.optionE.text;
        
        [self.blackWidow addObject:userSelected];

    } else if (self.buttonF == sender){
        
        userSelected= self.optionF.text;
        
        [self.thor addObject:userSelected];

    }
    [self storeResult:userSelected];
    
    self.currentQuestion++;
    
    if (self.currentQuestion == 7) {
        
        [self resultPage];
    } else {
        [self nextQuestion];
    }
}

- (void) selectedHero {
    
    [self.ironMan count];
    
    [self.hawkeye count];
    
    [self.thor count];
    
    [self.blackWidow count];
    
    [self.captainAmerica count];
    
    [self.hulk count];
    
}

- (void)resultPage {
    
    [self.resultView setHidden:NO];
    
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
