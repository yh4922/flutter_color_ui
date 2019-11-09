#import "ColorUiPlugin.h"
#import <color_ui/color_ui-Swift.h>

@implementation ColorUiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftColorUiPlugin registerWithRegistrar:registrar];
}
@end
