//
//  ProImage
//
//  Created by User on 11/12/16.
//  Copyright © 2016 MacBook Owner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UINavigationControllerDelegate, UIImagePickerControllerDelegate, UITabBarDelegate, UIActionSheetDelegate, UIScrollViewDelegate>
{
    IBOutlet __weak UIScrollView *_scrollView;
    IBOutlet __weak UIImageView *_imageView;
    UIImage *newImage;
}

@end
