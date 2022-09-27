# Sentinel Trade Bot
Utilizing ByBit and PyBit development libraries the Sentinel Trade Bot was created. This is in early satages of development and is currently being worked on by two contributors. 

## Setup Configuration

Currently being built out is the setup coinfiguration powershell script. This is where a user will have all of their system dependencies built from if needed

The directory setup contains one script in powershell but may contain more scripts called by a Master run script deployed later in development. 

To test the current deployment 
Open Powershell as administrator
`cd ../Sentinel_Trade_Bot/Tests`
`.\Run.ps1`


## API key/secret
On your local machine enter into the directory where you have downloaded the *Syndicate Trader*

Within this directory the folder`../SyndicatedTrader/api_vault_storage`
Once in this folder you will  see two files `key` and `secret`

These are the locations where your *ByBit* api key and secret will be stored. This only needs to be done once (Unless you have an expiration on your key/secret in which you will need to make changes here when needed)

Once input they will be converted to protect the integrity of the key in the chance of a breach of your system. It is suggested that you store a copy of your key/secret in a safe place before you run `SyndicatedTrader` for the first time





