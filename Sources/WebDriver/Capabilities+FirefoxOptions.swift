extension Capabilities {
    /// Firefox-specific capabilities.
    open class FirefoxOptions: Codable {
        public var binary: String? = nil
        public var browserName: String? = "firefox"

        public init() {}

        private enum CodingKeys: String, CodingKey {
            case binary
            case browserName
        }
    }
}