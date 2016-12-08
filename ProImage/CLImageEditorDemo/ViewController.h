

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITabBarDelegate, UIActionSheetDelegate, UIScrollViewDelegate>
{
    IBOutlet __weak UIScrollView *_scrollView;
    IBOutlet __weak UIImageView *_imageView;
    UIImage *newImage;
}

@end
