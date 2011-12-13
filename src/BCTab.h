
@interface BCTab : UIButton {
	UIImage *background;
	UIImage *rightBorder;
}

- (id)initWithIconImageName:(NSString *)imageName;
- (id)initWithIconImage:(UIImage *)normalImage selectedImage:(UIImage *)selectedImage;

@end
