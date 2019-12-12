#import "SqliteGenPlugin.h"
#if __has_include(<sqlite_gen/sqlite_gen-Swift.h>)
#import <sqlite_gen/sqlite_gen-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "sqlite_gen-Swift.h"
#endif

@implementation SqliteGenPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSqliteGenPlugin registerWithRegistrar:registrar];
}
@end
