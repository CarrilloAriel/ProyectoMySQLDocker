
data = []

departamentos = [
    "Ventas",
    "Marketing",
    "Atención al Cliente",
    "Desarrollo de Productos",
    "Redes y Telecomunicaciones",
    "Recursos Humanos",
    "Finanzas",
    "Operaciones",
    "Calidad y Control",
    "Legal"
]
for indice, departamento in enumerate(departamentos, start=1):
    data.append((indice, departamento))

print(data)
