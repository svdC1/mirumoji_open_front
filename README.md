![alt-text](public/icons/icon-512.png)

## **Interactive Local Japanese Media Toolkit**

-   Built with **React 18 + Vite + Tailwind CSS**, along with [Python (FastAPI) backend.](https://github.com/svdC1/mirumoji_open_api)

---

## Overview

Mirumoji helps you learn Japanese from your favorite video and audio content. It runs entirely on your local machine _(Apart from the optional OpenAI API integration)_, giving you full control over your data. It uses a "Profile" system set up with SQLite to save your study materials, including transcripts, saved video clips, and custom GPT prompt templates. Once running it it's available from any device within your local network so you can use it in your phone, tablet,etc...

## Features

-   **Interactive Video Player:**
    -   HTML5 player with custom controls for an immersive learning experience.
-   **Clickable Japanese Subtitles:**
    -   Subtitles are tokenized (using kuromoji.js), allowing you to click individual words.
    -   Integrated offline JMDict for definitions.
    -   Get nuanced grammar and usage explanations for selected words/phrases _(requires connection to a GPT-compatible API and configuration on the backend, view installation instructions)_.
    -   Tailor the GPT explanations to your learning style via profile settings.
-   **Local Media Processing:**
    -   **Video Conversion:** Upload videos in various formats; they can be converted to MP4 for optimal playback. _(It automatically uses NVENC if you have a GPU available in your machine to speed up the conversion.)_
    -   **SRT Generation:** Generate subtitles for your videos. Runs [FasterWhisper](https://github.com/SYSTRAN/faster-whisper) with modified parameters to increase accuracy for longer
        media such as Anime/ J-Drama episodes.
    -   **Audio Transcription:** Transcribe Japanese audio from recordings or uploaded files.
-   **Profile-Based Data Management:**
    -   **Persistent Storage**: Profile configurations and all other profile-related data is stored and managed via SQLite database by the backend.
    -   **Clip Saving:** Save important video segments with their associated word breakdowns.
    -   **Transcript Saving:** Transcriptions are automatically saved to your active profile.
    -   **Anki Export:** Export your saved clips (video, word info, GPT explanation) as an Anki deck for review.

---

## Setup

-   Both the frontend _(This repo)_ along with the [backend](https://github.com/svdC1/mirumoji_open_api) can be set up using the [`docker-compose.yaml`](https://github.com/mirumoji_open_front/docker-compose.yaml). Images are pre-built and made available through the GitHub Registry.

-   **For detailed instructions on how to set it up, please refer to the [Setup Guide](https://github.com/svdC1/mirumoji_open_front/SETUP_README.md)**

---

## Usage

1.  **Set a Profile:** Open the application. Use the menu (☰ icon) to set a profile name. All your saved data (clips, templates, transcripts) will be associated with this profile.
2.  **Player Page:**
    -   Load a local video file.
    -   Load an SRT subtitle file, or generate SRTs from your video.
    -   Click on words in the subtitles to get dictionary definitions and GPT explanations.
    -   Save interesting clips using the bookmark icon in the word dialog.
3.  **Transcribe Page:**
    -   Upload an audio file or record directly in the browser.
    -   The generated transcript will be displayed and automatically saved to your active profile.
4.  **Saved Clips Page:**
    -   View, manage, and delete clips saved under your active profile. Export them to Anki.
5.  **Profile Dashboard (User Icon > Profile Settings in Menu):**
    -   Manage your GPT prompt templates.
    -   View other profile-related data

---
