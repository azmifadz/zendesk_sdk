#import "ZendeskSdkPlugin.h"
#if __has_include(<zendesk_sdk/zendesk_sdk-Swift.h>)
#import <zendesk_sdk/zendesk_sdk-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "zendesk_sdk-Swift.h"
#endif

@implementation ZendeskSdkPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftZendeskSdkPlugin registerWithRegistrar:registrar];
}
@end
