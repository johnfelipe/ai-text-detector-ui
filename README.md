# 🤖 AI Text Detector - Web Interface

A beautiful, modern web interface for AI text detection powered by RunPod GPU infrastructure.

## 🚀 Live Demo

This application provides real-time AI content detection with sentence-level analysis and interactive visualizations.

## ✨ Features

- **🎯 Real-time AI Detection**: Instant analysis powered by RunPod GPU infrastructure
- **📊 Sentence-level Analysis**: Color-coded highlighting of individual sentences
- **📈 Interactive Charts**: Visual probability distributions with Plotly
- **💬 Feedback System**: Help improve the model with user feedback
- **🎨 Modern UI**: Clean, professional interface inspired by GPTZero
- **📱 Mobile Responsive**: Works perfectly on all devices

## 🛠️ Technology Stack

- **Frontend**: Streamlit with custom CSS styling
- **Backend**: FastAPI running on RunPod GPU infrastructure
- **AI Models**: DeBERTa transformer models + XGBoost ensemble
- **Visualization**: Plotly for interactive charts
- **Infrastructure**: RunPod for GPU-accelerated inference

## 🚀 Quick Start

### Local Development

```bash
# Install dependencies
pip install -r requirements.txt

# Run the Streamlit app
streamlit run app.py
```

The interface will be available at `http://localhost:8501`

### Environment Variables

The app automatically connects to the RunPod API, but you can override URLs:

```bash
export API_URL="https://your-runpod-url/api/v1/predict"
export FEEDBACK_URL="https://your-runpod-url/api/v1/feedback"
```

## 🎯 How to Use

1. **📝 Enter Text**: Paste or type text in the main input area
2. **🔍 Analyze**: Click the "Analyze" button to detect AI content
3. **📊 Review Results**: 
   - See overall AI probability score
   - View color-coded sentence highlighting
   - Examine interactive probability charts
   - Explore detailed sentence-by-sentence analysis
4. **💬 Provide Feedback**: Help improve the model accuracy

## 🎨 Visual Features

### Color Coding System
- **🔴 Red** (70%+ AI probability): Strong indication of AI-generated content
- **🟡 Orange/Yellow** (30-70% AI probability): Mixed or uncertain content
- **🟢 Green** (<30% AI probability): Strong indication of human-written content

### Interactive Elements
- **Hover Tooltips**: Mouse over highlighted sentences for exact probabilities
- **Responsive Charts**: Interactive Plotly charts with zoom and pan
- **Expandable Sections**: Detailed analysis available on demand

## 📊 API Integration

The UI communicates with the RunPod FastAPI backend:

- **Health Check**: `GET /api/v1/health`
- **Text Analysis**: `POST /api/v1/predict`
- **User Feedback**: `POST /api/v1/feedback`

## 🚀 Deployment Options

### 1. Streamlit Cloud (Recommended - Free)
1. Push this code to GitHub
2. Go to [share.streamlit.io](https://share.streamlit.io)
3. Connect your repository
4. Deploy with one click

### 2. Hugging Face Spaces
1. Create a new Space at [huggingface.co/spaces](https://huggingface.co/spaces)
2. Upload the files (rename `app.py` to match requirements)
3. Select Streamlit as the SDK

### 3. Railway / Render / Vercel
All support Streamlit apps with minimal configuration.

## 🔧 Customization

### Styling
Modify the CSS in the `st.markdown()` section of `app.py` to customize:
- Colors and themes
- Layout and spacing
- Typography and fonts

### Thresholds
Adjust AI detection thresholds in the `get_highlight_color()` function:

```python
def get_highlight_color(probability):
    if probability >= 0.8:  # Adjust threshold here
        return "#ffebee", "#c62828"  # High AI probability
    # ... rest of the function
```

## 🎭 Demo Texts

Try these sample texts to see the detection in action:

**Human-written example:**
```
I walked to the coffee shop this morning and ordered my usual latte. The barista, Sarah, asked about my weekend plans while preparing my drink.
```

**AI-generated example:**
```
In today's rapidly evolving technological landscape, artificial intelligence represents a paradigm shift that fundamentally transforms our understanding of computational capabilities.
```

## 📈 Performance Tips

- **Optimal Text Length**: 100-1000 words for best results
- **Multiple Sentences**: Ensure text has multiple sentences for highlighting
- **Connection**: Stable internet required for API communication

## 🔗 Related Links

- **API Documentation**: https://9l4pjnll4k9miw-8000.proxy.runpod.net/docs
- **RunPod Platform**: https://runpod.io
- **Streamlit Framework**: https://streamlit.io

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📝 License

MIT License - see LICENSE file for details

## 🙋‍♂️ Support

For issues or questions:
- Check the API health endpoint
- Review browser console for errors
- Ensure stable internet connection

---

**Powered by RunPod GPU Infrastructure** 🚀
