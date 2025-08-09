# AI Chatbot

A simple chatbot application built with Flask and the Google Gemini API. This project demonstrates how to create a web-based chatbot that leverages Google's powerful Gemini 1.5 Flash model for natural language processing.

## Features

- Clean, responsive chat interface
- Real-time communication with Google's Gemini 1.5 Flash model
- Advanced natural language understanding and generation
- Configurable model parameters (temperature, tokens, etc.)
- Safety settings to ensure appropriate responses
- Secure API key storage using environment variables
- Easy to set up and extend

## Project Structure

```
├── app.py              # Flask application with Gemini API integration
├── .env                # Environment variables (Gemini API key)
├── requirements.txt    # Python dependencies including google-generativeai
├── Procfile            # Specifies the command to run on Render
├── render.yaml         # Configuration for Render deployment
├── runtime.txt         # Specifies Python version for deployment
├── .gitignore          # Specifies files to exclude from version control
├── RENDER_DEPLOYMENT.md # Detailed instructions for Render deployment
├── run_local.sh        # Shell script for testing with gunicorn on Linux/Mac
├── run_local.bat       # Batch file for testing with gunicorn on Windows
├── static/
│   └── style.css       # CSS styling for the chat interface
└── templates/
    └── index.html      # HTML template for the chat interface
```

## Prerequisites

- Python 3.9 or higher
- A Google Gemini API key (you can get one for free at https://aistudio.google.com/apikey)

## Installation

1. Clone this repository or download the files

2. Install the required dependencies:

```bash
pip install -r requirements.txt
```

3. Make sure your `.env` file contains your Google Gemini API key:

```
GEMINI_API_KEY=your_gemini_api_key_here
```

## Running the Application

### Local Development

#### Option 1: Development Mode

1. Start the Flask server in development mode:

```bash
python app.py
```

2. Open your web browser and navigate to:

```
http://localhost:5000
```

#### Option 2: Production Simulation

To test the application in a production-like environment (using gunicorn):

**On Windows:**
```
run_local.bat
```

**On Linux/Mac:**
```bash
chmod +x run_local.sh
./run_local.sh
```

3. Start chatting with the AI-powered bot!

### Deployment on Render

This application is configured for easy deployment on Render's free tier:

1. Create a new Web Service on Render
2. Connect your GitHub repository
3. Use the following settings:
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `gunicorn app:app`
4. Add the environment variable:
   - Key: `GEMINI_API_KEY`
   - Value: Your Google Gemini API key
5. Deploy the application

## Customization

- Modify `app.py` to change the behavior of the chatbot or add new features
- Edit `static/style.css` to customize the appearance of the chat interface
- Update `templates/index.html` to change the structure of the web page

## Potential Extensions

- Add user authentication
- Implement conversation history storage
- Create multiple chatbot personas using system instructions
- Add voice input/output capabilities
- Implement multimodal capabilities (image understanding with Gemini Pro Vision)
- Fine-tune model parameters for specific use cases
- Add streaming responses for more interactive experience
- Integrate with other Google services or APIs

## License

This project is open source and available for personal and educational use.