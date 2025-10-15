extension Capabilities {
    /// Chromium-specific capabilities.
    open class ChromiumOptions: Codable {
        public var binary: String? = nil

        public init() {}

        private enum CodingKeys: String, CodingKey {
            case binary
        }
    }
}