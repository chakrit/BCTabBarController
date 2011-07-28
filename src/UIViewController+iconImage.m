#import "UIViewController+iconImage.h"


@implementation UIViewController (BCTabBarController)

- (NSString *)iconImageName {
	return [NSString stringWithFormat:@"%@.png", self.title];
}

@end
