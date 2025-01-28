# Google Cast SDK

Until Google provides SPM support for its Google Cast SDK this repository delivers official XCFrameworks as Swift packages for easy integration into projects.

## Integration

Use [Swift Package Manager](https://swift.org/package-manager) directly [within Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app). You can also declare the library as a dependency of another one directly in the associated `Package.swift` manifest.

### Make the XCFramework available

To make the generated framework available:

1. Download the _Dynamic_ framework from the [Google Cast SDK manual setup](https://developers.google.com/cast/docs/ios_sender#manual_setup).
2. Rename the corresponding zip as `GoogleCast.xcframework.zip`.
3. Calculate the zip checksum using `swift package compute-checksum /path/to/GoogleCast.xcframework.zip`
3. Update the `Package.swift` in this repository with the framework version number and the checksum that you obtained. Also update the deployment target according to the official SDK documentation.
4. Commit the changes on `main` and create a corresponding tag.
5. Push the commit and the tag to GitHub.
6. Attach the binary to the tag on GitHub.

Do not commit the binaries in the repository, as this would slow down checkouts made by SPM as the repostory grows.
