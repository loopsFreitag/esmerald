from starlette.applications import Starlette
from app.routes import routes


app = Starlette(routes=routes)
