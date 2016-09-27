import PackageDescription

let package = Package(
    name: "AES256CBC",
    dependencies: [
        .Package(url: "https://github.com/biscuitehh/clibbsd.git", majorVersion: 0)
    ]
)
