import requests
import time
from main import read_from_file, save_to_file, convert_file

my_api_key = read_from_file("api_key.json")
my_api_key = my_api_key['bb_api_key']

# The 5 category links
#Motherboard - abcat0507008
motherboard="https://api.bestbuy.com/v1/products((categoryPath.id=abcat0507008&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

#CPU - abcat0507010
cpu="https://api.bestbuy.com/v1/products((categoryPath.id=abcat0507010&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

#CPU Cooler - pcmcat339900050006
cpucooler="https://api.bestbuy.com/v1/products((categoryPath.id=pcmcat339900050006&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

#Memory(RAM) - abcat0506000
ram="https://api.bestbuy.com/v1/products((categoryPath.id=abcat0506000&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

#Storage(SSD/HDD) - pcmcat270900050001
storage="https://api.bestbuy.com/v1/products((categoryPath.id=pcmcat270900050001&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

#GPU - abcat0507002
gpu="https://api.bestbuy.com/v1/products((categoryPath.id=abcat0507002&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

#PSU - abcat0507009
psu="https://api.bestbuy.com/v1/products((categoryPath.id=abcat0507009&customerReviewAverage>=3.5))?&pageSize=100&format=json&show=categoryPath.id,name,regularPrice,salePrice,url,customerReviewAverage,manufacturer,image,longDescription&apiKey="

url_bb = motherboard+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="motherboard.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

url_bb = cpu+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="cpu.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

url_bb = cpucooler+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="cpucooler.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

url_bb = ram+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="ram.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

url_bb = storage+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="storage.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

url_bb = gpu+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="gpu.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

url_bb = psu+my_api_key
#bb_json=requests.get(url_bb).json()
bb_json_file_name="psu.json"
#save_to_file(bb_json, bb_json_file_name)
#time.sleep(7)

first=read_from_file('motherboard.json')
second=read_from_file("cpu.json")
third=read_from_file("cpucooler.json")
fourth=read_from_file("ram.json")
fifth=read_from_file("storage.json")
sixth=read_from_file("gpu.json")
seventh=read_from_file("psu.json")

for i in second["products"]:
    first["products"].append((i).copy())

for i in third["products"]:
    first["products"].append((i).copy())

for i in fourth["products"]:
    first["products"].append((i).copy())

for i in fifth["products"]:
    first["products"].append((i).copy())

for i in sixth["products"]:
    first["products"].append((i).copy())

for i in seventh["products"]:
    first["products"].append((i).copy())


newFile = "home.json"
#save_to_file(first, newFile)
#convert_file(newFile)