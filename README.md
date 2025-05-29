# Mirumoji 🎌📺 (Open Source Edition)

**Interactive Japanese media toolkit – running locally on your machine.**  
Built with **React 18 + Vite + Tailwind CSS**, and powered by a local Python (FastAPI) backend.

---

## Overview

Mirumoji helps you learn Japanese from your favorite video and audio content. This open-source edition runs entirely on your local machine, giving you full control over your data. It uses a "Profile" system to save your study materials, including transcripts, saved video clips, and custom GPT prompt templates.

## Features

*   **Interactive Video Player:** HTML5 player with custom controls for an immersive learning experience.
*   **Clickable Japanese Subtitles:** Subtitles are tokenized (using kuromoji.js), allowing you to click individual words.
*   **In-depth Word Analysis:** A draggable pop-up dialog provides:
    *   **Dictionary Lookups:** Integrated JMDict for instant definitions.
    *   **GPT-Powered Explanations:** Get nuanced grammar and usage explanations for selected words/phrases (requires connection to a GPT-compatible API and configuration on the backend).
    *   **Customizable GPT Prompts:** Tailor the GPT explanations to your learning style via profile settings.
*   **Local Media Processing:**
    *   **Video Conversion:** Upload videos in various formats; they can be converted to MP4 for optimal playback (backend handles conversion).
    *   **SRT Generation:** Generate subtitles for your videos (backend handles transcription).
    *   **Audio Transcription:** Transcribe Japanese audio from recordings or uploaded files.
*   **Profile-Based Data Management:**
    *   **Clip Saving:** Save important video segments with their associated word breakdowns.
    *   **Transcript Saving:** Transcriptions are automatically saved to your active profile.
    *   **Anki Export:** Export your saved clips (video, word info, GPT explanation) as an Anki deck for review.
*   **Responsive & Dark Mode Friendly:** UI built with Tailwind CSS.

---

## Setup

This project consists of a frontend (this repository) and a local backend. Both need to be set up.

### 1. Backend Setup

The Mirumoji backend is a Python application using FastAPI.
*   **Repository & Instructions:** Please refer to the backend repository for setup instructions: [Link to Your Backend Repository Here - IMPORTANT!]
*   **Key Backend Features:** The backend handles file processing (transcription, conversion), GPT API calls, data storage (SQLite via profiles), and serves media files.
*   By default, the frontend will expect the backend to be running at `http://localhost:8000`.

### 2. Frontend Setup (This Repository)

```bash
# Clone this repository
git clone [URL of this frontend repository]
cd mirumoji-ui # Or your project's directory name

# Install dependencies (Node.js >= 18 recommended)
npm install

# Configure API Base URL
# Create a .env file in the root of this project (mirumoji-ui/.env)
# Add the following line, pointing to your local backend:
# VITE_API_BASE=http://localhost:8000

# Run the development server
npm run dev
```
The frontend will typically be available at `http://localhost:5173`.

---

## Usage

1.  **Set a Profile:** Open the application. Use the menu (☰ icon) to set a profile name. All your saved data (clips, templates, transcripts) will be associated with this profile.
2.  **Player Page:**
    *   Load a local video file.
    *   Load an SRT subtitle file, or generate SRTs from your video.
    *   Click on words in the subtitles to get dictionary definitions and GPT explanations.
    *   Save interesting clips using the bookmark icon in the word dialog.
3.  **Transcribe Page:**
    *   Upload an audio file or record directly in the browser.
    *   The generated transcript will be displayed and automatically saved to your active profile.
4.  **Saved Clips Page:** View, manage, and delete clips saved under your active profile. Export them to Anki.
5.  **Profile Dashboard (User Icon > Profile Settings in Menu):
    *   Manage your GPT prompt templates.
    *   View other profile-related data (e.g., list of saved transcripts, files - once backend fully supports serving these).

---

## Contributing

Contributions are welcome! If you'd like to contribute, please feel free to fork the repository, make your changes, and submit a pull request. For major changes, please open an issue first to discuss what you would like to change.

(Optional: You can create a `CONTRIBUTING.md` file with more detailed guidelines.)

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
