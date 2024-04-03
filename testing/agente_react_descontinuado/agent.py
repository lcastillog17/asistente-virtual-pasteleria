from langchain.agents.agent_types import AgentType
from langchain.agents import initialize_agent
from langchain.memory import ConversationBufferMemory

from llms.gpt_3_turbo.llm import llm
from tools.catalogo_db.tool import tool as catalogo_db
from tools.calculadora.tool import tool as calculadora

memory = ConversationBufferMemory(memory_key="chat_history")

tools = [
    catalogo_db,
    calculadora,
]

agent = initialize_agent(
    agent=AgentType.CONVERSATIONAL_REACT_DESCRIPTION,
    tools=tools,
    llm=llm,
    verbose=True,
    max_iterations=5,
    memory=memory,
    handle_parsing_errors=True
)

print(agent("What's the price of 'Torta de Chocolate' after applying available promotions?")["output"])
print(agent("What I asked before?")["output"])

# print(agent.agent.llm_chain.prompt.template)

# print(agent("Can you find the relation between products and ingredientes to tell me which products use Harina?")["output"])
# print(agent("Tell me which products use Harina as an ingredient")["output"])
# print(agent("Tell me the price of Torta de Chocolate after promotions on January 25th")["output"])
