# fastapi-htmx-template

## setup requirements

- [uv package manager](https://github.com/astral-sh/uv)
- [just command runner](https://github.com/casey/just)

## setup and run server

```bash
just install
```

```bash
just run
```

## deploy to render.com

1. Create a new repository using this repository as the template
1. Regenerate a requirements.txt (you can the recipe: `just pip-compile`)
1. Create a new web service on Render.com
    - Target your new repository
    - Set build command: `pip install -r requirements.txt`
    - Set start command: `uvicorn app.main:app --host 0.0.0.0 --port $PORT`
