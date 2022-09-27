import hashlib

 
 
with open('../Trading_Apis/api_vault_storage/key','r') as f:

    
    key =f.read()

    validate=len(key)
    if validate == 0:

        print("Api key not detected. Refer to README.md for instructions on providing your API Key")

    elif validate == 18:

        #Encodes Key to encoded var
        key_encode  = key.encode()

        #hashes encoded string var
        vStringKey  = hashlib.md5(key_encode).hexdigest()

        #stores hash as binary var
        vBinKey     = bin(int(vStringKey,16))

        #opens key file
        f           = open('../Trading_Apis/api_vault_storage/key','w')

        #write binary as a hex to key file
        hKey = hex(int(vBinKey,2))
        f.write(hKey)


        f           = open('../Trading_Apis/api_vault_storage/key','r')
        key         = f.read()
        print(bytes.fromhex(key).decode('utf-8'))

        f.close()

    elif validate > 18:
        
        f           = open('../Trading_Apis/api_vault_storage/key','r')
        key         = f.read()
        print(bytes.fromhex(key).decode('utf-8'))

        f.close()
        


# print("String : ", end ="")
# print(string)
# print(result)
# print("Hexadecimal equivalent: ",result.hexdigest())
# apiKey='A5Ejvb6TM8Djhv3Ai5'

# apisecret='nGiKcURCBjPCEQ4vvM2Gghmeby7eaa12yMdk'