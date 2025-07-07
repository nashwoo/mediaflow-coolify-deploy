from fastapi import FastAPI

app = FastAPI()

@app.get("/speedtest")
def speedtest():
    return {"message": "Mediaflow Proxy Python OK 🚀"}
