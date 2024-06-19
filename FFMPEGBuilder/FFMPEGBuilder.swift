import Foundation

// 交叉编译参数
class FFMPEGBuilder {
    static let workDirectory = "file:///Users/tinuv/Downloads/build"
    static let buildDirectory = workDirectory + "/build"
    static let distDirectory = workDirectory + "/dist"
    static let patchDirector = URL(string: "/Users/tinuv/Developer/Apple/Other/FFMPEGBuilder/FFMPEGBuilder/Patch")!
    static let libsmbclientDepDirector = URL(string: "/Users/tinuv/Developer/Apple/Other/FFMPEGBuilder/FFMPEGBuilder/libsmbclient")!
    static let platforms = PlatformType.allCases.filter { ![.watchos, .watchsimulator, .android].contains($0) }
    static var ffmpegConfiguers = [String]()

    func build() {
        let librayList = initLibrayList()
        for lib in librayList {
            lib.libBuilder.build()
        }
    }
}

extension FFMPEGBuilder {
    func initLibrayList() -> [Library] {
        var libraryList: [Library] = []
        libraryList.append(.libshaderc)
        libraryList.append(.vulkan)
        libraryList.append(.lcms2)
        libraryList.append(.libplacebo)
        libraryList.append(.libdav1d)
        libraryList.append(.gmp)
        libraryList.append(.nettle)
        libraryList.append(.gnutls)
        libraryList.append(.readline)
        libraryList.append(.libsmbclient)
        libraryList.append(.libsrt)
        libraryList.append(.libzvbi)
        libraryList.append(.libfreetype)
        libraryList.append(.libfribidi)
        libraryList.append(.libharfbuzz)
        libraryList.append(.libass)
        libraryList.append(.libfontconfig)
        libraryList.append(.libbluray)
        libraryList.append(.libunibreak)
        libraryList.append(.ffmpeg)
        libraryList.append(.libmpv)
        return libraryList
    }
}
