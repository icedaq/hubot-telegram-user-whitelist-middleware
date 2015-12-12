## Hubot Telegram User Whitelist

If you use the [hubot telegram adapter](https://github.com/lukefx/hubot-telegram) but you do not want make your bot available to the public.

**Use this.**

## How to use

**Install**
```
npm install --save hubot-telegram-user-whitelist-middleware
```

**Register**

In `external-scripts.json` add

```
"hubot-telegram-user-whitelist-middleware"
```


This is meant for telegram, but will work with any [adapter](https://github.com/github/hubot/blob/master/docs/adapters.md) that exposes the current user via `context.response.message.user.name`.

## Environment Variables
To set the whitelist use the following environment variable:

Environment Variable | Description | Example
--- | --- | ---
`HUBOT_WHITELIST` | A comma separated list (no spaces). | `john,mike`
