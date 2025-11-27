extension Capabilities {
    /// Firefox-specific capabilities.
    open class FirefoxOptions: BrowserSpecificOptions {
        public var binary: String? = nil

        private enum CodingKeys: String, CodingKey {
            case binary
            case args
        }
    }
}
