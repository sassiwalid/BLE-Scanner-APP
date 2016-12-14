//
//  ViewController.m
//  Bluetooth Scanner App
//
//  Created by Walid Sassi on 14/12/2016.
//  Copyright © 2016 Walid Sassi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *verbositySelector;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (strong, nonatomic) CBCentralManager *centralManager;
@property (strong, nonatomic) CBPeripheral *discoveredPeripheral;
@property BOOL bluetoothOn;
@end

@implementation ViewController

-(bool)verboseMode
{
    return (self.verbositySelector.selectedSegmentIndex != 0);
}

-(void)tLog:(NSString *)msg
{
    self.outputTextView.text = [@"\r\n\r\n" stringByAppendingString:self.outputTextView.text];
    self.outputTextView.text = [msg stringByAppendingString:self.outputTextView.text];
    
}

- (IBAction)startScan:(id)sender
{
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self tLog:@"Bluetooth LE Device Scanner\r\n\r\nProgramming the Internet of Things for iOS"];
    self.bluetoothOn = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(void) centralManager:(CBCentralManager *)central
 didDiscoverPeripheral:(CBPeripheral *)peripheral
     advertisementData:(NSDictionary *)advertisementData
                  RSSI:(NSNumber *)RSSI
{
}

- (void) centralManager:(CBCentralManager *)central
didFailToConnectPeripheral:(CBPeripheral *)peripheral
                  error:(NSError *)error
{
}

-(void) centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral
{
}

-(void)peripheral:(CBPeripheral *)peripheral didDiscoverServices:(NSError *)error
{
}


-(void)peripheral:(CBPeripheral *)peripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error
{
}

- (void) peripheral:(CBPeripheral *)peripheral
didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic
              error:(NSError *)error
{
}

-(void)centralManagerDidUpdateState:(CBCentralManager *)central
{
}


@end
