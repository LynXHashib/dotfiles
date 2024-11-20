import requests
from "resource:///com/github/Aylur/ags/widget.js" import Widget, Window, Label, Entry, Box, Button

# Groq AI API Configuration
API_KEY = "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"
API_URL = "https://api.groq.ai/v2/engage"  # Update with Groq AI's specific endpoint

def get_groq_ai_response(prompt):
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "Content-Type": "application/json",
    }
    data = {
        "model": "gpt-like-model",  # Replace with the specific model name from Groq AI
        "prompt": prompt,
    }

    response = requests.post(API_URL, headers=headers, json=data)
    if response.status_code == 200:
        return response.json().get("response", "No response available.")
    else:
        return f"Error: {response.status_code} - {response.json()}"

# Callback function for button click
def on_send_click(entry, label):
    prompt = entry.get_text()
    response = get_groq_ai_response(prompt)
    label.set_text(response)

# Create the AGS widget
def create_groq_ai_widget():
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
    window = Window(title="Groq AI Widget", child=create_groq_ai_widget())
    window.show()

if __name__ == "__main__":
    main()
