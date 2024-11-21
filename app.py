#Consumo de API de google Maps en Python
import requests
import folium

def obtener_ruta(partida, destino, paradas, api_key):
    origin = partida.replace(" ", "+")
    destination = destino.replace(" ", "+")
    waypoints = "|".join(paradas.split(","))
  
