#import "BCTabBar.h"
@class BCTabBarView;

@protocol BCTabBarControllerDelegate;
@interface BCTabBarController : UIViewController <BCTabBarDelegate> {
	NSArray *viewControllers;
	UIViewController *selectedViewController;
	BCTabBar *tabBar;
	BCTabBarView *tabBarView;
	BOOL visible;
    id<BCTabBarControllerDelegate> delegate;
}

@property (nonatomic, retain) NSArray *viewControllers;
@property (nonatomic, retain) BCTabBar *tabBar;
@property (nonatomic, retain) UIViewController *selectedViewController;
@property (nonatomic, retain) BCTabBarView *tabBarView;
@property (nonatomic) NSUInteger selectedIndex;
@property (nonatomic, assign) id delegate;

@end


@protocol BCTabBarControllerDelegate
- (void)tabBarController:(BCTabBarController*)aTabBar didSelectViewController:(UIViewController*)vc;
@end