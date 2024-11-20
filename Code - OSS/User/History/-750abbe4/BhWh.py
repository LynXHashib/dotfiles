
// Import necessary AGS modules
const { Box, Button, Entry, Label, App } = ags.Widget;

// Groq AI API Configuration
const API_KEY = "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"; // Replace with the correct endpoint
const API_URL = "https://api.groq.ai/v2/engage""; // Replace with your API key

// Function to get Groq AI response
async function getGroqAIResponse(prompt) {
    const response = await fetch(API_URL, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${API_KEY}`,
        },
        body: JSON.stringify({
            model: "gpt-like-model", // Replace with the actual model name
            prompt: prompt,
        }),
    });

    if (!response.ok) {
        return `Error: ${response.status}`;
    }

    const data = await response.json();
    return data.response || "No response available.";
}

// Main ChatGPT Widget
const chatWidget = Box({
    orientation: "vertical",
    children: [
        Entry({
            placeholder: "Enter your prompt...",
            onAccept: async (entry) => {
                const prompt = entry.text;
                const label = chatWidget.children[1]; // Access the label
                label.label = "Loading...";
                const response = await getGroqAIResponse(prompt);
                label.label = response;
            },
        }),
        Label({
            label: "Response will appear here...",
        }),
        Button({
            label: "Send",
            onClick: async () => {
                const entry = chatWidget.children[0]; // Access the entry
                const prompt = entry.text;
                const label = chatWidget.children[1]; // Access the label
                label.label = "Loading...";
                const response = await getGroqAIResponse(prompt);
                label.label = response;
            },
        }),
    ],
});

// Create and display the application
App({
    title: "Groq AI Chat Widget",
    content: chatWidget,
}).run();
