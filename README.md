# AES256CBC Encryption for Swift 2 & 3

The **most convenient** & lightweight **AES256 Encryption Framework for Swift 3** ever! For Swift 2 use tag 0.1.1

[![Language Swift 3](https://img.shields.io/badge/Language-Swift%202%20&%203-orange.svg)](https://developer.apple.com/swift) [![Travis Build Status](https://travis-ci.org/SwiftyBeaver/AES256CBC.svg)](https://travis-ci.org/SwiftyBeaver/AES256CBC) [![Slack Status](https://slack.swiftybeaver.com/badge.svg)](https://slack.swiftybeaver.com) 

----

## Unique Feature Set

1. Just **a single file** in pure Swift 2 & 3 source code
2. Runs **natively** on iOS, macOS, tvOS & watchOS
3. No additional dependencies or header files
4. Maximum **convenience** for encrypting / decrypting of strings
5. Built-in generating of compatible 32 character password
6. Automatic string padding
6. Automatic handling & embedding of a **random initialisation vector**
   
Please **follow [SwiftyBeaver on Twitter](https://twitter.com/SwiftyBeaver)** to stay up-to-date on new versions.

## Requirements

- iOS 8.0+, macOS X 10.9+, tvOS 9+, watchOS 2+
- Xcode 7+

## Installation


#### via Carthage

You can use [Carthage](https://github.com/Carthage/Carthage) to install AES256CBC by adding that to your Cartfile:

``` swift
github "SwiftyBeaver/AES256CBC"
```

#### via CocoaPods

To use [CocoaPods](https://cocoapods.org) just add this to your Podfile:

``` swift
pod 'AES256CBC'
```

#### via Swift Package Manager

To use AES256CBC as a [Swift Package Manager](https://swift.org/package-manager/) package just add the following to your Package.swift file’s dependencies.

``` swift
.Package(url: "https://github.com/SwiftyBeaver/AES256CBC.git")
```

#### or Download

1. Download the latest release zip from [here](https://github.com/SwiftyBeaver/AES256CBC/releases)
2. Drag & drop the `/sources` folder into your project (make sure "Copy items if needed" is checked)
3. Rename the "sources" group to "AES256CBC" if you'd like

Note: You don't have to `import AES256CBC` if you install this way.


## Usage

Example which encrypts and decrypts a string using a randomly generated 32 character password. In real-life you would **add your own 32 character password** instead.

``` swift
import AES256CBC

let str = "My little secret"
let password = AES256CBC.generatePassword()  // returns random 32 char string

// get AES-256 CBC encrypted string
let encrypted = AES256CBC.encryptString(str, password: password)

// decrypt AES-256 CBC encrypted string
let decrypted = AES256CBC.decryptString(encrypted!, password: password)
```

## Run on Ubuntu with Docker

We ❤️ server-side Swift 3 and here is an example how to build & test AES256CBC in a Docker container on Ubuntu. Use the included Dockerfile:

```shell
docker build --rm -t aes256cbc .
```


## FAQs

### Why do I get nil as result?
If anything goes wrong, most likely due to a password which is not 32 characters long, then `encryptString()` and `decryptString()` return nil.



### What about the initial vector?

You don’t need to worry about the important initial vector which is required to make AES-256 much more secure. AES256CBC automatically generates a random initial vector for you and adds it to the start of the encrypted string. During decryption AES256CBC reads the first 16 characters of the encrypted string and uses them as initial vector to decrypt the remaining encrypted string.

### Where is it used?

The framework is used in multiple projects of [SwiftyBeaver](https://github.com/SwiftyBeaver) and was developed in cooperation with Marcin Krzyżanowski from [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift).


## Contact & Contribute

If you have questions please contact Sebastian via the dedicated [SwiftyBeaver Twitter account](https://twitter.com/SwiftyBeaver). Feature requests or bugs are better reported and discussed as Github Issue.

**Please contribute back** any great stuff, especially bugfixes & security issues! Each new bugfix, feature request or addition/change should be put in **a dedicated pull request** to simplify discussion and merging.

Thanks for testing, sharing, staring & contributing!


## License

AES256CBC is released under the [MIT License](https://github.com/SwiftyBeaver/AES256CBC/blob/master/LICENSE). The core crypto logic is a tailored version of [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift) written by Marcin Krzyżanowski, please read & respect his license which can be found in the middle of the file [AES256CBC.swift](https://github.com/SwiftyBeaver/AES256CBC/blob/master/sources/AES256CBC.swift), too.

