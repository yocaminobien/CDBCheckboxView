# CDBCheckboxView

[![CI Status](http://img.shields.io/travis/yocaminobien/CDBCheckboxView.svg?style=flat)](https://travis-ci.org/yocaminobien/CDBCheckboxView)
[![Version](https://img.shields.io/cocoapods/v/CDBCheckboxView.svg?style=flat)](http://cocoapods.org/pods/CDBCheckboxView)
[![License](https://img.shields.io/cocoapods/l/CDBCheckboxView.svg?style=flat)](http://cocoapods.org/pods/CDBCheckboxView)
[![Platform](https://img.shields.io/cocoapods/p/CDBCheckboxView.svg?style=flat)](http://cocoapods.org/pods/CDBCheckboxView)

## Usage

CDBCheckboxView * view = [CDBCheckboxView checkboxViewWithText:@"check me"
                                                       checked:YES
                                                  onUserChange:^(BOOL checked) {
    NSLog(@"Checkbox changed state to %@", checked ? @"checked" : @"unchecked");
}];

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CDBCheckboxView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CDBCheckboxView"
```

## Author

yocaminobien, yocaminobien@gmail.com

## License

CDBCheckboxView is available under the MIT license. See the LICENSE file for more info.
