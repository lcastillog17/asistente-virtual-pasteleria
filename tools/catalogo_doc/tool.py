from langchain.tools.retriever import create_retriever_tool
from langchain_openai import OpenAIEmbeddings
from langchain_community.vectorstores import FAISS
from langchain_community.document_loaders import TextLoader
from langchain_text_splitters import CharacterTextSplitter

loader = TextLoader("tools/catalogo_doc/catalogo.txt")
documents = loader.load()

text_splitter = CharacterTextSplitter(chunk_size=1000, chunk_overlap=0)
texts = text_splitter.split_documents(documents)
embeddings = OpenAIEmbeddings()
db = FAISS.from_documents(texts, embeddings)

retriever = db.as_retriever()

tool = create_retriever_tool(
    retriever,
    "catalog_doc",
    # "Útil cuando necesitas responder preguntas acerca de la base de datos del catálogo.",
    # "Útil cuando necesitas responder preguntas acerca del catálogo de la pastelería.",
    "Useful when you need to anser questions about bakery's catalog.",
)
