extension Capabilities {
    /// Chromium-specific capabilities.
    open class ChromiumOptions: BrowserSpecificOptions {
        public var binary: String? = nil

        private enum CodingKeys: String, CodingKey {
            case binary
            case args
        }
    }
}
