

#import <UIKit/UIKit.h>


typedef void(^CDBCheckboxHandler)(BOOL checked);


@interface CDBCheckboxView : UIView

@property (weak, nonatomic) IBOutlet UILabel * textLabel;
@property (weak, nonatomic) IBOutlet UIButton * checkboxButton;
@property (assign, nonatomic) BOOL checked;
@property (copy, nonatomic) CDBCheckboxHandler _Nullable onUserChange;

+ (instancetype _Nullable)checkboxViewWithText:(NSString * _Nullable)text
                                       checked:(BOOL)checked
                                  onUserChange:(CDBCheckboxHandler _Nullable)handler;
@end
