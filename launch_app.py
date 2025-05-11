import threading
import os
import webview
import pathlib
import time
import requests

def start_streamlit():
    app_path = pathlib.Path(__file__).parent / "main_app.py"
    os.system(f"streamlit run \"{app_path}\" --server.headless true")

def wait_for_server(url="http://localhost:8501", timeout=20):
    for _ in range(timeout):
        try:
            requests.get(url)
            return True
        except requests.exceptions.ConnectionError:
            time.sleep(1)
    return False

if __name__ == '__main__':
    threading.Thread(target=start_streamlit, daemon=True).start()
    if wait_for_server():
        webview.create_window("Offline PDF Q&A", "http://localhost:8501", width=1200, height=800)
        webview.start()
    else:
        print(" Streamlit failed to start. Please check logs.")
