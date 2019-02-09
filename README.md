# JBInspector

[![Language](https://img.shields.io/badge/language-Objective--C-orange.svg?style=flat
)](https://developer.apple.com/documentation/objectivec)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Version](https://img.shields.io/cocoapods/v/JBInspector.svg?style=flat)](https://cocoapods.org/pods/JBInspector)
[![License](https://img.shields.io/cocoapods/l/JBInspector.svg?style=flat)](https://cocoapods.org/pods/JBInspector)
[![Platform](https://img.shields.io/cocoapods/p/JBInspector.svg?style=flat)](https://cocoapods.org/pods/JBInspector)

This module help you to JailBreak detection to your iOS project suported Unity.

ready to Sileo.

## Usage

Please initialize `JBInspector`.

```obj-c
#import <JBInspector/JBInspector.h>
```

### Objective-C

```obj-c
if ([JBInspector isJailbreak]) {
    // JailBreak detect.
}
```

### Swift

```swift
if (JBInspector.isJailbreak) {
    // JailBreak detect.
}
```

### Unity(C#)

```cs
using System.Runtime.InteropServices;

public class Sample {
    [DllImport("JBInspector")]
    private static extern bool isJailbreak();
    if (isJailbreak) {
        // JailBreak detect.
    }
}
```

## Example

To run the example project, clone the repo, and run `pod install` from the `JBInspectorExample` directory first.

## Requirements

- iOS 5 or greater

## Installation

### Carthage

If you’re using [Carthage](https://github.com/Carthage/Carthage), simply add JBInspector to your `Cartfile`:

```ruby
github "mofneko/JBInspector"
```

### CocoaPods

JBInspector is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JBInspector'
```

### Unity

In your Unity project, create a folder Assets/Plugin/iOS. Copy to that directory the files JBInspector.h , JBInspector.mm from Sources/:
- JBInspector.h
- JBInspector.mm

## License

```
MIT License

Copyright (c) 2019 Yusuke Arakawa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
