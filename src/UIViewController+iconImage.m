#import "UIViewController+iconImage.h"


@implementation UIViewController (BCTabBarController)

- (NSString *)iconImageName {
	return [NSString stringWithFormat:@"%@.png", self.title];
}

- (UIImage *)iconImage
{
    NSString* localizedTitle = NSLocalizedString(self.title, nil);
    CGFloat scale = [[UIScreen mainScreen] scale];
    CGSize tabSize = CGSizeMake(80 * scale, 44 * scale);
    UIGraphicsBeginImageContext(tabSize);
    UIFont* systemFont = [UIFont systemFontOfSize:[UIFont systemFontSize] * scale];
    CGSize titleSize = [localizedTitle sizeWithFont:systemFont];
    [[UIColor whiteColor] set];
    CGPoint titleOrigin = CGPointMake(((tabSize.width - titleSize.width)/2), 12*scale);
    [localizedTitle drawAtPoint:titleOrigin withFont:systemFont];
    UIImage* iconImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (scale > 1.0) {
        iconImage = [[[UIImage alloc] initWithCGImage:[iconImage CGImage]
                                                scale:scale
                                          orientation:UIImageOrientationUp] autorelease];
    }
    return iconImage;
}

- (UIImage *)selectedIconImage
{
    return [self iconImage];
}

@end
