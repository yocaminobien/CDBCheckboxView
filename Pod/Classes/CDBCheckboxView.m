

#import "CDBCheckboxView.h"


@implementation CDBCheckboxView

#pragma mark - Life cycle -

+ (instancetype _Nullable)checkboxViewWithText:(NSString * _Nullable)text
                                       checked:(BOOL)checked
                                  onUserChange:(CDBCheckboxHandler _Nullable)handler {
    NSBundle * frameworkBundle = [NSBundle bundleForClass:[CDBCheckboxView class]];
    NSURL * bundleURL = [frameworkBundle URLForResource:@"CDBCheckboxView"
                                          withExtension:@"bundle"];
    NSBundle * bundle = [NSBundle bundleWithURL:bundleURL];
    if (bundle == nil) {
        return nil;
    }
    
    CDBCheckboxView * result = [bundle loadNibNamed:NSStringFromClass([self class])
                                              owner:self
                                            options:nil].firstObject;
    result.translatesAutoresizingMaskIntoConstraints = NO;
    
    result.checkboxButton.selected = checked;
    result.textLabel.text = text;
    result.onUserChange = handler;

    return result;
}

#pragma mark - Actions -

- (IBAction)checkboxTapped:(id)sender {
    [self changeState];
    [self handleStateDidChange];
}

#pragma mark - Private -

- (void)changeState {
    self.checkboxButton.selected = !self.checkboxButton.selected;
}

- (void)handleStateDidChange {
    if (self.onUserChange == nil) {
        return;
    }
    
    self.onUserChange(self.checked);
}

#pragma mark - Property -

#pragma mark Getter 

- (BOOL)checked {
    BOOL result = self.checkboxButton.selected;
    return result;
}

- (void)setChecked:(BOOL)checked {
    self.checkboxButton.selected = checked;
}

@end
