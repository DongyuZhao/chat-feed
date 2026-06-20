package com.dongyuzhao.chatfeed

data class ChatFeedMessage(
    val author: String,
    val message: String,
)

data class ChatFeed(
    val title: String,
    val messages: List<ChatFeedMessage>,
) {
    companion object {
        fun sample(): ChatFeed = ChatFeed(
            title = "Chat Feed Sample",
            messages = listOf(
                ChatFeedMessage(author = "System", message = "Welcome to Chat Feed."),
                ChatFeedMessage(author = "Taylor", message = "This sample app is backed by the Android library."),
            ),
        )
    }
}
