from fastapi import FastAPI
from fastapi.responses import RedirectResponse
# from fastapi.middleware.cors import CORSMiddleware

from langserve import add_routes

from agents.agente_atencion_cliente.agent import agent as agente_atencion_cliente
# from testing.agente_react.agent import agent as agente_atencion_cliente
# from testing.agente_sql.agent import agent as agente_atencion_cliente

app = FastAPI(
    title="Asistente Virtual de Pastelería",
    version="1.0",
    description="Asistente Virtual de Pastelería para la atención al cliente y asistencia de empleados.",
)

# Set all CORS enabled origins
# app.add_middleware(
#     CORSMiddleware,
#     allow_origins=["*"],
#     allow_credentials=True,
#     allow_methods=["*"],
#     allow_headers=["*"],
#     expose_headers=["*"],
# )

@app.get("/")
async def redirect_root_to_docs():
    return RedirectResponse("/docs")

add_routes(
    app,
    agente_atencion_cliente,
    path="/agente_atencion_cliente"
)

if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="0.0.0.0", port=8000)
