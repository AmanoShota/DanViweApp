//
//  ViewController.m
//  WebApp0526
//
//  Created by AmanoShota on 2014/05/26.
//  Copyright (c) 2014年 ShotaAmano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate> //Delegateの時はこれを書く
@property (weak, nonatomic) IBOutlet UIWebView *theWebView;
@property (weak, nonatomic) IBOutlet UILabel *webLoadLebelLabel;

@end

@implementation ViewController
{
    int webLoadLebel;
}

- (void) updateWebLoadLebelLabel{
    self.webLoadLebelLabel.text = [NSString stringWithFormat:@"%d", webLoadLebel];
}

//- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
//    NSLog(@"%s",__FUNCTION__);// 役に立つNSLOG
//}

//-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
//     NSLog(@"%s",__FUNCTION__);// 役に立つNSLOG
//    return YES;
//}//NOにするとネット繋がらなくなる
//



- (void) webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"%s",__FUNCTION__);// 役に立つNSLOG
    webLoadLebel++;
    [self updateWebLoadLebelLabel];
}//始めるときに行う

- (void)webViewDidFinishLoad:(UIWebView *)webView{
         NSLog(@"%s",__FUNCTION__);// 役に立つNSLOG
    webLoadLebel--;
        [self updateWebLoadLebelLabel];
}//終わるときにする

- (void) loadURL:(NSString*)url{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    webLoadLebel = 0;
    [self updateWebLoadLebelLabel];
    
    NSURL *nsurl = [NSURL URLWithString:url];
    NSURLRequest *request = [NSURLRequest requestWithURL:nsurl];
    self.theWebView.delegate = self; //何かあったら俺に言え
    [self.theWebView loadRequest:request];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    webLoadLebel = 0;
    [self updateWebLoadLebelLabel];
    
    [self loadURL:@"https://www.google.co.jp/search?q=%E6%AA%80%E3%81%B5%E3%81%BF&rlz=1C5CHFA_enJP583JP583&es_sm=119&source=lnms&tbm=isch&sa=X&ei=juKCU_jqNIWolAWJl4GACQ&ved=0CAgQ_AUoAQ&biw=1276&bih=679"];

 //   NSURLRequest *request = [NSURLRequest requestWithURL:url];
  //  self.theWebView.delegate = self; //何かあったら俺に言え
    //[self.theWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loadDanmitsu:(id)sender {
        [self loadURL:@"https://www.google.co.jp/search?q=%E5%A3%87%E8%9C%9C&rlz=1C5CHFA_enJP583JP583&es_sm=119&source=lnms&tbm=isch&sa=X&ei=PO-CU9m7IYGbkgWI7IDgCA&ved=0CAgQ_AUoAQ&biw=1276&bih=679"];
    
//    NSURL *url = [NSURL URLWithString:@"https://www.google.co.jp/search?q=%E5%A3%87%E8%9C%9C&rlz=1C5CHFA_enJP583JP583&es_sm=119&source=lnms&tbm=isch&sa=X&ei=PO-CU9m7IYGbkgWI7IDgCA&ved=0CAgQ_AUoAQ&biw=1276&bih=679"];
  //  NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //self.theWebView.delegate = self; //何かあったら俺に言え
    //[self.theWebView loadRequest:request];
}
- (IBAction)loadDanrei:(id)sender {
    [self loadURL:@"https://www.google.co.jp/search?q=%E6%AA%80%E3%82%8C%E3%81%84&hl=ja&source=lnms&tbm=isch&sa=X&ei=xO-CU5jjK46bkwWGiYCwCQ&sqi=2&ved=0CAYQ_AUoAQ&biw=1276&bih=679"];
    
 //   NSURL *url = [NSURL URLWithString:@""];
   // NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //self.theWebView.delegate = self; //何かあったら俺に言え
   // [self.theWebView loadRequest:request];
}

- (IBAction)loadMoroboshidan:(id)sender {
    [self loadURL:@"https://www.google.co.jp/search?q=%E5%A3%87%E8%9C%9C&rlz=1C5CHFA_enJP583JP583&es_sm=119&source=lnms&tbm=isch&sa=X&ei=gOKCU6LaMYG_lQXf9oGQDA&ved=0CAgQ_AUoAQ&biw=1276&bih=679#q=%E3%83%A2%E3%83%AD%E3%83%9C%E3%82%B7%E3%83%80%E3%83%B3&tbm=isch&facrc=_&imgdii=_&imgrc=GYctHyUOhxKXhM%253A%3BqgrZuU7KT75zxM%3Bhttp%253A%252F%252Flivedoor.blogimg.jp%252Ffunky_m78%252Fimgs%252F9%252Fb%252F9bcd27c5.JPG%3Bhttp%253A%252F%252Fblog.livedoor.jp%252Ffunky_m78%252Farchives%252F50923643.html%3B640%3B480"];
    
    //   NSURL *url = [NSURL URLWithString:@""];
    // NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //self.theWebView.delegate = self; //何かあったら俺に言え
    // [self.theWebView loadRequest:request];
}


@end
