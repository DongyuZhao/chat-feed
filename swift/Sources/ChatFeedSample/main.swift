import SwiftChatFeed

let feed = ChatFeed.sample
print(feed.title)
for item in feed.items {
    print("\(item.author): \(item.message)")
}
