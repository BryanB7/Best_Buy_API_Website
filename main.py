import json
import requests
import xmltodict

def save_to_file(data,file_name):
    with open(file_name, "w") as write_file:
        json.dump(data,write_file,indent=4)
        print("The file {0} was successfully created.".format(file_name))

def read_from_file(file_name):
    with open(file_name,"r") as read_file:
        file=json.load(read_file)
        print("You successfully read from {0}.".format(file_name))
        return file

def convert_file(file_name):
    product_json = read_from_file(file_name)
    product_json2 = {"info": product_json}
    product_json2 = xmltodict.unparse(product_json2, pretty=True)
    file_name_fixed = file_name.replace('.json', '')
    product_json_final =  product_json2[:38] + '\n<?xml-stylesheet type="text/xsl"' \
                                                'href="' + file_name_fixed \
                                                + '.xsl"?>\n' + product_json2[38:]
    from xml.etree import ElementTree as ET
    file_name_xml = file_name_fixed + ".xml"
    with open(file_name_xml, "w") as f:
        f.write(product_json_final)
