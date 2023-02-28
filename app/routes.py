from starlette.routing import Mount
from shiny import App
from app.views.homepage import app_ui, server


app_shiny = App(app_ui, server)

routes = [
    Mount('/shiny', app=app_shiny)
]
