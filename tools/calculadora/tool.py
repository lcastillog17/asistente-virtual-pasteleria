from langchain.agents import Tool
from langchain.chains import LLMMathChain

from llms.gpt_3_turbo.llm import llm

math_chain = LLMMathChain(llm=llm)

tool = Tool(
    name='calculator',
    func=math_chain.run,
    # description="Útil cuando necesitas responder preguntas sobre matemáticas."
    description="Useful when you need to answer questions about math."
)
