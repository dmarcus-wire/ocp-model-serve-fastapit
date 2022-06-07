from fastapi import FastAPI
import uvicorn

# the application instance is saved under a variable called app
app = FastAPI()

# There are two endpoints: / and /message
@app.get('/')
def index():
    return {'data': 'Hello FastAPI!'}

@app.get('/message')
def index():
    return {'data': 'FastAPI is great!'}

# The host is set to 0.0.0.0 and the port to 8080
if __name__ == "__main__":
    uvicorn.run(app, host='0.0.0.0', port=8080)