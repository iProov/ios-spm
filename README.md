# iProov SDK for Swift Package Manager

This repository provides Swift Package Manager support for [iProov iOS SDK](https://github.com/iProov/ios).


## Installing iProov

#### Installing via Xcode

1. Select `File` → `Add Packages…` in the Xcode menu bar.

2. Search for the `iProov/ios-spm` package using the following URL:

	```
	https://github.com/iProov/ios-spm
	```
	
3. Set the _Dependency Rule_ to be _Up to Next Major Version_.
	
4. Click _Add Package_ to add the iProov SDK dependency to your Xcode project and to your app target, and then click again to confirm.

#### Installing via Package.swift

If you prefer, you can add iProov via your Package.swift file as follows:

```swift
.package(
	name: "iProov",
	url: "https://github.com/iProov/ios-spm.git",
	.upToNextMajor(from: "12.2.1")
),
```

Then add `iProov` to the `dependencies` array of any target for which you wish to use iProov.

## Reason for a separate Swift Package Manager repository

As Swift Package Manager downloads the full repository for a package, installing the main iProov iOS SDK package [iProov/ios](https://github.com/iProov/ios) can take a long time (over 2 minutes in some environments). This smaller repository [iProov/ios-spm](https://github.com/iProov/ios-spm) significantly reduces the iProov iOS SDK installation time by providing only a reference to the precompiled xcframework, which is published with [the latest iProov SDK release](https://github.com/iProov/ios/releases).