import streamlit as st
import pyshorteners as pyst
import pyperclip


shortner = pyst.Shortener()

def copying():
    pyperclip.copy(shorted_url)


st.set_page_config(page_title="✨ Stylish URL Shortener", page_icon="🔗", layout="centered")


st.markdown("""
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Rubik&display=swap');

    html, body, [class*="css"]  {
        font-family: 'Rubik', sans-serif;
        background: linear-gradient(135deg, #e0eafc, #cfdef3);
    }

    .title-container {
        padding: 20px 0;
        text-align: center;
    }

    h1 {
        color: #1a73e8;
        font-size: 2.5rem;
        margin-bottom: 10px;
    }

    .glass-card {
        background: rgba(255, 255, 255, 0.25);
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        border-radius: 15px;
        padding: 2rem;
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.1);
        max-width: 600px;
        margin: 0 auto 2rem;
        border: 1px solid rgba(255, 255, 255, 0.2);
    }

    .stTextInput>div>div>input {
        border-radius: 10px;
        padding: 12px;
        border: 1px solid #ccc;
    }

    .stButton>button {
        background-color: #1a73e8;
        color: white;
        font-weight: bold;
        border: none;
        border-radius: 10px;
        padding: 10px 20px;
        transition: all 0.3s ease;
    }

    .stButton>button:hover {
        background-color: #0b5ed7;
        color: #fff;
        transform: scale(1.03);
    }

    h3 {
        color: #333;
        text-align: center;
        font-weight: 600;
    }

    .short-url {
        font-size: 1.3rem;
        text-align: center;
        color: #1a73e8;
        margin-top: 10px;
        background: #fff;
        padding: 10px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.05);
    }
    </style>
""", unsafe_allow_html=True)


st.markdown("""
    <div class="title-container">
        <h1>🔗 URL Shortener</h1>
    </div>
""", unsafe_allow_html=True)


form = st.form("name")
url = form.text_input("📥 Paste your long URL below:")
with st.container():
    st.markdown("<div style='text-align: center;'>", unsafe_allow_html=True)
    button = form.form_submit_button("🔧 Shorten URL")
    st.markdown("</div>", unsafe_allow_html=True)

st.markdown('</div>', unsafe_allow_html=True)


if button:
    shorted_url = shortner.tinyurl.short(url)

    st.success("✅ Your link is ready!")
    st.markdown("<h3>Your Shortened URL</h3>", unsafe_allow_html=True)
    st.markdown(f"<div class='short-url'>{shorted_url}</div>", unsafe_allow_html=True)

    
    st.markdown("<div style='text-align: center;'>", unsafe_allow_html=True)
    st.button("📎 Copy", on_click=copying)
    st.markdown("</div>", unsafe_allow_html=True)
