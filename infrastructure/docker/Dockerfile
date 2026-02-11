FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir flask==3.0.3

RUN printf '%s\n' \
"from flask import Flask" \
"app = Flask(__name__)" \
"@app.get('/')" \
"def hello():" \
"    return {'status':'ok'}" \
"if __name__ == '__main__':" \
"    app.run(host='0.0.0.0', port=8080)" \
> app.py

EXPOSE 8080
CMD ["python", "app.py"]
