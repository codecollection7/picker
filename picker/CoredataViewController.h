//
//  CoredataViewController.h
//  picker
//
//  Created by Mac on 8/24/14.
//  Copyright (c) 2014 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoredataViewController : UIViewController<UIPickerViewDelegate,UITextFieldDelegate>
{
    
    __weak IBOutlet UITextField *name;
}
@end
