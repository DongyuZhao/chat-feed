public struct ChatFeedItem: Sendable, Equatable {
    public let author: String
    public let message: String

    public init(author: String, message: String) {
        self.author = author
        self.message = message
    }
}

public struct ChatFeed: Sendable, Equatable {
    public let title: String
    public let items: [ChatFeedItem]

    public init(title: String = "Chat Feed", items: [ChatFeedItem] = []) {
        self.title = title
        self.items = items
    }

    public static var sample: ChatFeed {
        ChatFeed(
            title: "Chat Feed Sample",
            items: [
                ChatFeedItem(author: "System", message: "Welcome to Chat Feed."),
                ChatFeedItem(author: "Taylor", message: "This sample is wired to the Swift package."),
            ]
        )
    }
}
