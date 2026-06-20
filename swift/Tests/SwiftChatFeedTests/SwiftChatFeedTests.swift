import Testing
@testable import SwiftChatFeed

@Test func sampleFeedContainsMessages() async throws {
    let feed = ChatFeed.sample

    #expect(feed.title == "Chat Feed Sample")
    #expect(feed.items.count == 2)
    #expect(feed.items.first?.author == "System")
}
