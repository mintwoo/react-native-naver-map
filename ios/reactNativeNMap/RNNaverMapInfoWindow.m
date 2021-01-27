#import "RNNaverMapInfoWindow.h"

#import <React/RCTBridge.h>
#import <React/RCTImageLoader.h>
#import <React/RCTUtils.h>
#import <NMapsMap/NMFNaverMapView.h>
#import <NMapsMap/NMGLatLng.h>
#import <NMapsMap/NMFMarker.h>
#import <NMapsMap/NMFInfoWindow.h>
#import <NMapsMap/NMFOverlayImage.h>
#import <NMapsMap/NMFInfoWindowDefaultTextSource.h>

#import "RNNaverMapView.h"
#import "NMMarker.h"

@implementation RNNaverMapInfoWindow {
}

- (instancetype)init
{
  if ((self = [super init])) {
    _realInfoWindow = [NMFInfoWindow new];
   
  }
  return self;
}

- (void)setCoordinate:(NMGLatLng*) coordinate {
  _realInfoWindow.position = coordinate;
}

- (void)setTitle:(NSString *) title {
  _defaultDataSource = [NMFInfoWindowDefaultTextSource dataSource];
  _defaultDataSource.title = title;
  _realInfoWindow.dataSource = _defaultDataSource;
}

@end
