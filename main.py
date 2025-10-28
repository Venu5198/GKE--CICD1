# main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "🚀 FastAPI app deployed on GKE with GitHub Actions + Helm!"}

@app.get("/health")
def health_check():
    return {"status": "healthy"}

