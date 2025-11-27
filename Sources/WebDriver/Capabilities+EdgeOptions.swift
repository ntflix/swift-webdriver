extension Capabilities {
    /// Edge-specific capabilities.
    open class EdgeOptions: BrowserSpecificOptions {
        private enum CodingKeys: String, CodingKey {
            case args
        }
    }
}
