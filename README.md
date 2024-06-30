# conky-yasno
This conky theme displays [YASNO](https://yasno.com.ua/) power outages.

![](./docs/screenshot.png)

## Dependencies
This script requires modules/libraries: 
* Conky module, which can be installed using: </br>
`sudo apt install conky-all`
* jq: </br>
`sudo apt install jq`

## Installation
1. Dowload the project and extract it to your `/home` folder.
2. Navigate to the folder and run the install script in the terminal
```
./install
```
## Config

Rename `config.example.json` to `config.json` and fill with your values.

### Add your address
1. Go to [Yasno power outages page](https://yasno.com.ua/schedule-turn-off-electricity) and choose your address;
2. Copy the link of the button that leads to downloading the pdf file;
![](./docs/url-getting.png)
3. Paste your link to `config.json` - `private_url` field.

### Online status
I used `white ip` and router settings such as `DDNS` and `allowing pings` from the internet to check status.
You can use different tools if you want, from a smart outlet - to an old phone.

By default this function is disabled, so you will need to turn on it and insert your url to `config.json`.

## Tests
This code/script has been tested on Ubuntu 22

