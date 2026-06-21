export type ChatMessage = {
  author: string;
  message: string;
};

export type ChatFeedModel = {
  title: string;
  messages: ChatMessage[];
};

export const createSampleChatFeed = (): ChatFeedModel => ({
  title: 'Chat Feed Sample',
  messages: [
    { author: 'System', message: 'Welcome to Chat Feed.' },
    { author: 'Taylor', message: 'This sample app is backed by the TypeScript library.' },
  ],
});
