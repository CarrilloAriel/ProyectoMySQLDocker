
data = []

categorias = [
    "No Relevante",
    "Baja Prioridad",
    "Media Prioridad",
    "Alta Prioridad"
]
for indice, categoria in enumerate(categorias, start=1):
    data.append((indice, categoria))

print(data)
