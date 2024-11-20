import requests
from ags import Widget, Window, Label, Entry, Box, Button

# OpenAI API key
API_KEY = "your_openai_api_key"
API_URL = "https://api.openai.com/v1/chat/completions"

def get_chatgpt_response(prompt):
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "Content-Type": "application/json",
    }
    data = {
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": prompt}],
    }

    response = requests.post(API_URL, headers=headers, json=data)
    if response.status_code == 200:
        return response.json()["choices"][0]["message"]["content"]
    else:
        return f"Error: {response.status_code} - {response.json()}"

# Callback function for button click
def on_send_click(entry, label):
    prompt = entry.get_text()
    response = get_chatgpt_response(prompt)
    label.set_text(response)

# Create the AGS widget
def create_chatgpt_widget():
    entry = Entry()
    label = Label("Response will appear here...")
    send_button = Button("Send", on_click=lambda: on_send_click(entry, label))
    
    # Layout
    box = Box(orientation="vertical", children=[
        entry,
        send_button,
        label,
    ])
    
    return box

# Main window
def main():
    window = Window(title="ChatGPT Widget", child=create_chatgpt_widget())
    window.show()

if __name__ == "__main__":
    main()
