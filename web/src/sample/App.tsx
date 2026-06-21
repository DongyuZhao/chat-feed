import React from 'react';
import { createSampleChatFeed } from '../library/index.js';

export function App() {
  const feed = createSampleChatFeed();

  return (
    <main>
      <h1>{feed.title}</h1>
      <ul>
        {feed.messages.map((message) => (
          <li key={`${message.author}-${message.message}`}>
            <strong>{message.author}:</strong> {message.message}
          </li>
        ))}
      </ul>
    </main>
  );
}
