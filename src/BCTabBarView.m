#import "BCTabBarView.h"
#import "BCTabBar.h"

@implementation BCTabBarView
@synthesize tabBar, contentView;

- (void)setTabBar:(BCTabBar *)aTabBar {
	[tabBar removeFromSuperview];
	[tabBar release];
	tabBar = aTabBar;
	[self addSubview:tabBar];
}

- (void)setContentView:(UIView *)aContentView {
	[contentView removeFromSuperview];
	contentView = aContentView;
	contentView.frame = CGRectMake(0, 0, self.bounds.size.width, 
										self.bounds.size.height - self.tabBar.bounds.size.height);

	[self addSubview:contentView];
	[self sendSubviewToBack:contentView];
}

- (void)layoutSubviews {
	[super layoutSubviews];
	CGRect f = contentView.frame;
	f.size.height = self.bounds.size.height - self.tabBar.bounds.size.height;
	contentView.frame = f;
	[contentView layoutSubviews];
}

// In iOS 5 a 1px offset appears at the bottom of the view.
// Fix by removing light gray background.
// A better fix would be to prevent the offset in the first place.
//- (void)drawRect:(CGRect)rect {
//	CGContextRef c = UIGraphicsGetCurrentContext();
//	[RGBCOLOR(230, 230, 230) set];
//	CGContextFillRect(c, self.bounds);
//}

@end
