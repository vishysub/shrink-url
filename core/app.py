from fastapi import FastAPI, Response
app = FastAPI()


@app.get("/")
def home():
    return Response("Server is Up")


