extension Capabilities {
    /// Edge-specific capabilities.
    open class EdgeOptions: ChromiumOptions {
        public override var browserName: String? {
            get { return "MicrosoftEdge" }
            set {  }
        }
    }
}