#import "RNNaverMapInfoWindowManager.h"
#import "RNNaverMapInfoWindow.h"
#import <React/RCTUIManager.h>
#import <NMapsMap/NMGLatLng.h>
#import <NMapsMap/NMFInfoWindowDefaultTextSource.h>

#import "NMNMFMapView.h"

@implementation RNNaverMapInfoWindowManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  RNNaverMapInfoWindow *infoWindow = [RNNaverMapInfoWindow new];
  infoWindow.bridge = self.bridge;
  return infoWindow;
}

RCT_EXPORT_VIEW_PROPERTY(coordinate, NMGLatLng)
RCT_EXPORT_VIEW_PROPERTY(title, NSString)
RCT_EXPORT_VIEW_PROPERTY(defaultDataSource, NMFInfoWindowDefaultTextSource)

@end
