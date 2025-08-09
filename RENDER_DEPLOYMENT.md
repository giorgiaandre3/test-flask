# Deploying to Render

This document provides step-by-step instructions for deploying this chatbot application to Render's free tier.

## Prerequisites

1. A [Render](https://render.com/) account
2. A Google Gemini API key (obtain from https://aistudio.google.com/apikey)
3. Your code pushed to a GitHub repository

## Deployment Steps

### 1. Create a New Web Service

1. Log in to your Render account
2. Click on the "New +" button and select "Web Service"

### 2. Connect Your Repository

1. Connect your GitHub account if you haven't already
2. Select the repository containing your chatbot code

### 3. Configure the Web Service

- **Name**: Choose a name for your service (e.g., "gemini-chatbot")
- **Environment**: Select "Python"
- **Region**: Choose the region closest to your users
- **Branch**: Select the branch you want to deploy (usually "main" or "master")
- **Build Command**: `pip install -r requirements.txt`
- **Start Command**: `gunicorn app:app`

### 4. Add Environment Variables

1. Scroll down to the "Environment Variables" section
2. Add the following variable:
   - Key: `GEMINI_API_KEY`
   - Value: Your Google Gemini API key

### 5. Create Web Service

Click the "Create Web Service" button at the bottom of the page.

### 6. Monitor Deployment

Render will now build and deploy your application. You can monitor the progress in the "Logs" tab.

### 7. Access Your Deployed Application

Once deployment is complete, Render will provide a URL for your application (e.g., `https://gemini-chatbot.onrender.com`). Click on this URL to access your deployed chatbot.

## Troubleshooting

- If the deployment fails, check the logs for error messages
- Ensure your `requirements.txt` file includes all necessary dependencies
- Verify that your environment variables are set correctly
- Make sure your application is configured to listen on the port provided by Render (`PORT` environment variable)

## Maintaining Your Deployment

- Render automatically redeploys your application when you push changes to your repository
- You can manually trigger a deployment from the Render dashboard
- Free tier applications may spin down after periods of inactivity, which can cause a slight delay on the first request after inactivity