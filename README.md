
# 📄 Oasis AI: Offline Research Companion

**Oasis AI** is a fully offline desktop application that allows users to ask questions about any PDF document — whether typed or handwritten — and receive intelligent, context-aware answers powered by local LLMs (e.g., LLaMA via Ollama) and sentence-transformer embeddings.

---

## 🚀 Features

- 🧠 **AI Q&A** from both standard and handwritten PDFs
- 🔍 **Semantic Search** using FAISS and MiniLM embeddings
- 🖼️ **Image-aware context**: extracts relevant visuals for standard PDFs
- 🪄 **No internet required**: Runs entirely offline on your desktop
- 🧾 **OCR support** via Tesseract for scanned/handwritten documents
- ⚡ Streamlit-based UI embedded in a native desktop window via PyWebView

---

## 🖥️ Application Preview

<p align="center">
  <img src="assets/screenshot.png" alt="Oasis AI Screenshot" width="700">
</p>

---

## 🧰 Installation

### 💾 Requirements

- Windows 10/11 (64-bit)
- Python 3.10 or bundled executable
- Tesseract-OCR installed system-wide and added to PATH (https://github.com/tesseract-ocr/tesseract)

---

## 🔧 For Developers

### 1. Clone the Repository

```bash
git clone https://github.com/your-repo/Oasis-AI-ORC-.git
cd Oasis-AI-ORC
````

### 2. Install Python Dependencies

```bash
pip install -r requirements.txt
```

> Optionally, install from wheels for offline use.

### 3. Run the Application

```bash
python launch_app.py
```

---

## 🛠️ Building the Desktop App

### 🔨 PyInstaller Packaging

Use the included `launch_app.spec` to generate the executable:

```bash
pyinstaller launch_app.spec
```

### 🧾 Inno Setup Installer

Build a Windows installer using [Inno Setup](http://www.jrsoftware.org/isinfo.php):

```ini
[Files]
Source: "dist\OasisAI.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "models\all-MiniLM-L6-v2\*"; DestDir: "{app}\models\all-MiniLM-L6-v2"; Flags: ignoreversion recursesubdirs
Source: "assets\*"; DestDir: "{app}\assets"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{commondesktop}\Oasis AI"; Filename: "{app}\OasisAI.exe"; Tasks: desktopicon
```

---

## 📁 Project Structure

```
oasis AI/
├── main_app.py              # Main Streamlit app
├── launch_app.py            # Launches Streamlit in PyWebView
├── InnoSetupScript.iss      # Installer script for Inno Setup
├── models/
│   └── all-MiniLM-L6-v2/    # Local embedding model
├── assets/
│   ├── logo.ico             # App icon
│   └── screenshot.png       # (Optional) Preview image
├── requirements.txt
```

---

## 🤖 How It Works

1. User uploads a PDF.
2. The app extracts text (and images if applicable).
3. FAISS indexes all extracted text chunks.
4. A semantic search narrows the context.
5. The LLaMA model (via Ollama) answers the user’s question using the relevant chunks.
6. Relevant images (if any) are displayed.

---

## 🔒 Offline & Privacy

No data leaves your machine. All processing — OCR, embeddings, vector search, LLM — is done locally. Ideal for research, sensitive documents, or restricted environments.

---

## 🧠 Powered By

* [Streamlit](https://streamlit.io)
* [PyWebView](https://pywebview.flowrl.com/)
* [FAISS](https://github.com/facebookresearch/faiss)
* [Sentence-Transformers](https://www.sbert.net/)
* [Tesseract OCR](https://github.com/tesseract-ocr)
* [Ollama (local LLaMA models)](https://ollama.com)

---

## 📬 Contact

For suggestions or collaboration: \[[your\_email@example.com](mailto:doddishiva055@gmail.com)]


---

```
#