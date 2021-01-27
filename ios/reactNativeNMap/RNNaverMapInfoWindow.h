//
//  RNNaverMapInfoWindow.h
//
//  Created by flask on 18/04/2019.
//  Copyright © 2019 flask. All rights reserved.
//

#import <React/RCTBridge.h>
#import <React/RCTComponent.h>
#import <NMapsMap/NMGLatLng.h>
#import <NMapsMap/NMFMarker.h>
#import <NMapsMap/NMFInfoWindow.h>
#import <NMapsMap/NMFInfoWindowDefaultTextSource.h>

#import "RNNaverMapView.h"

@interface RNNaverMapInfoWindow : UIView

@property(nonatomic, weak) RCTBridge *bridge;
@property(nonatomic, strong) NMFInfoWindow *realInfoWindow;

@property(nonatomic, assign) NMGLatLng *coordinate;
@property(nonatomic, strong) NMFInfoWindowDefaultTextSource *defaultDataSource;
@property(nonatomic, copy) NSString *title;
@property(readwrite, nonatomic) id<NMFOverlayImageDataSource> dataSource;

@end
