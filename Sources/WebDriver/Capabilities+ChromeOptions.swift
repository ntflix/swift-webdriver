extension Capabilities {
    /// Chrome-specific capabilities.
    open class ChromeOptions: ChromiumOptions {
        public override var browserName: String? {
            get { return "chrome" }
            set {  }
        }
    }
}