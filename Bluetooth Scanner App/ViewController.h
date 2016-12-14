//
//  ViewController.h
//  Bluetooth Scanner App
//
//  Created by Walid Sassi on 14/12/2016.
//  Copyright © 2016 Walid Sassi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreBluetooth/CoreBluetooth.h>
@interface ViewController : UIViewController<CBCentralManagerDelegate,
CBPeripheralDelegate>
#define SERVICE_UUID        @ "FFF0"
#define CHARACTERISTIC_UUID @ "FFF3"

@end

