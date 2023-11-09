from telethon import TelegramClient , events , Button,sessions,functions, types,errors,extensions

api_id = 16365825
api_hash = 'becf667f7a469ef42103585c09dbc334'
app = TelegramClient("heiiii", api_id, api_hash,auto_reconnect=True).start(bot_token="6933198719:AAHT2vtOG4gek2IsTWGbXO_sHDITuiwdqiI")

@app.on(events.NewMessage(pattern="/start",func=lambda e:e.is_private))
async def Start(message):
    await app.send_message(message.chat_id, "....")

app.run_until_disconnected()