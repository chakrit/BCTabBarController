#import "UINavigationController+icons.h"


@implementation UINavigationController (BCTabBarController)

- (NSString *)iconImageName {
	return [self.topViewController iconImageName];
}

- (UIImage *)iconImage {
	return [self.topViewController iconImage];
}

- (UIImage *)selectedIconImage {
	return [self.topViewController selectedIconImage];
}

@end
