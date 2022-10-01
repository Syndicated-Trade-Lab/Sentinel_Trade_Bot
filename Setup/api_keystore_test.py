# Synoposis
# Reads api key and secret based on string lenght. If the key within the key file meets the required length then the key and secret will be set to global variables for integration with the users Bybit account.

with open("../api_vault_storage/key",'r') as f:
    key =f.read()
    validate=len(key)
    if validate == 0:
        print("Api key not detected. Refer to README.md for instructions on providing your API Key")
    elif validate == 18:
        #opens key file
        
        f      = open('../api_vault_storage/key','r')
        s     = open('../api_vault_storage/secret','r')
                      
        v_key    = f.read()
        v_secret = s.read() 

        f.close()
        s.close()
        print("Key and Secret Detected")
    elif validate > 18:
                print("Api key incorrectly formatted. Reference to wiki or readme section API-Key")
    f.close()