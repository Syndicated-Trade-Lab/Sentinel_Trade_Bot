# Synoposis
# Reads api key and secret based on string lenght. If the key within the key file meets the required length then the key and secret will be set to global variables for integration with the users Bybit account.

with open('../Trading_Apis/api_vault_storage/key','r') as f:

    
    key =f.read()

    validate=len(key)
    if validate == 0:

        print("Api key not detected. Refer to README.md for instructions on providing your API Key")

    elif validate == 18:

        #opens key file
        f      = open('../Trading_Apis/api_vault_storage/key','r')
        s     = open('../Trading_Apis/api_vault_storage/secret','r')

        key    = f.read()
        secret = s.read() 

        f.close()
        s.close()

    elif validate > 18:
        
        print("Api key incorrectly formatted. Reference to wiki or readme section API-Key")
        f.close()