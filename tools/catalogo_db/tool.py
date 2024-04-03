from langchain.agents import Tool

from langchain_community.utilities import SQLDatabase

from langchain_experimental.sql import SQLDatabaseChain

from llms.gpt_3_turbo.llm import llm

db = SQLDatabase.from_uri("sqlite:///tools/catalogo_db/Catalogo_2.db")

sql_chain = SQLDatabaseChain(llm=llm, database=db, verbose=True)
# sql_chain = SQLDatabaseChain.from_llm(llm, db, verbose=True)

tool = Tool(
    name="catalog_db",
    func=sql_chain.run,
    # description="Útil cuando necesitas responder preguntas acerca de la base de datos del catálogo."
    description="Useful when you need to answer questions about catalog's database."
)
