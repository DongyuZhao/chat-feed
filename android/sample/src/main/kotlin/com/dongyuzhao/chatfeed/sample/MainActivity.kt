package com.dongyuzhao.chatfeed.sample

import android.app.Activity
import android.os.Bundle
import android.widget.LinearLayout
import android.widget.TextView
import com.dongyuzhao.chatfeed.ChatFeed

class MainActivity : Activity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val feed = ChatFeed.sample()
        val layout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(48, 48, 48, 48)
        }

        layout.addView(TextView(this).apply {
            text = feed.title
            textSize = 24f
        })

        feed.messages.forEach { message ->
            layout.addView(TextView(this).apply {
                text = "${message.author}: ${message.message}"
                textSize = 16f
            })
        }

        setContentView(layout)
    }
}
