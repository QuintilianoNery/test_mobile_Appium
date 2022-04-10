<h1 align="center">Automation Teste Mobile Appium</h1>

---

## Configurando o Ambiente :gear:

### Instalação do Python
- [Download Python](https://www.python.org/downloads/)
```
- Instalar adicionando Python PATH
- Instalação personalizada, manter tudo marcado e instalar para todos usuários
- Instalar na pasta c:\Python38. 
- OBS.: 38 é a versão do Python instalado
- Conferir no cmd se o Python e o pip foram instalados
- no cmd:python --version
- no cmd:pip --version
```
### Instalação do VScode e extenções sugeridas
- [Download Vscode](https://code.visualstudio.com/download)
- [Python](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
- [Robot Framework Intellisense](https://marketplace.visualstudio.com/items?itemName=TomiTurtiainen.rf-intellisense)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

### Instalação versão full cmder
- [Download cmder](https://cmder.net/)
```
- Configurar dentro da variavel de ambiente(variáveis do sistema) Path  o caminho completo da pasta do cmeder EX.: C:\cmder\vendor\git-for-windows\bin 
- Configurar dentro da variavel de ambiente(variáveis do sistema) Path  o caminho completo da pasta do cmeder EX.: C:\cmder\vendor\git-for-windows\usr\bin
- OBS.: Esta ferramenta é opicional, pois alguns comandos linux não rodam no cmd
```

### Instalação Java JDK 8 ou superior caso tenha
- [Download Java JDK](https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html)
```
- OBS.: Deve-se realizar o login para conseguir baixar o JDK
        * E deve-se instalar também o java JRE que vem junto com o JDK
        * Conferir se o java foi instalado corretamente java -version
```
```
- Configurações de ambiente com o java 8
    * Criar variáveis de ambiente em variáveis do SISTEMA com o caminho completo das pastas
        * Nome da Variável: JAVA_HOME
        * valor da variável: C:\Program Files\Java\jdk1.8.0_202

    
    * Adicionar configurações na variável path do sistema
        * %JAVA_HOME%\bin
```
```
- Para testar se as configurações estão OK digite os comandos no CMD, deve-se aparecer o caminho completo do arquivo ou pasta
    * echo %JAVA_HOME%
    * echo %PATH%
```

### Instalação Android Studio
[Android Studio](https://developer.android.com/studio)
```
OBS.: Manter marcado na instalação a opção Android Virtual Device 
- Marcar na instalação do not import settings
```

```
- Configurações de ambiente Android
    * Criar variáveis de ambiente em variáveis do SISTEMA com o caminho completo das pastas
        * Nome da Variável: ANDROID_HOME
        * valor da variável: C:\Users\[SEU USUÁRIO AQUI]\AppData\Local\Android\Sdk
    
    * Adicionar configurações na variável path do sistema
        * %ANDROID_HOME%\platform-tools
        * %ANDROID_HOME%\tools
        * %ANDROID_HOME%\tools\lib
        * %ANDROID_HOME%\tools\bin
```

```
- Para testar se as configurações estão OK digite os comandos no CMD, deve-se aparecer o caminho completo do arquivo ou pasta
    * echo %ANDROID_HOME%
    * echo %PATH%
```

### Instalação Node
- [Node.js](https://nodejs.org/en/)
```
- Adicionar configurações na variável path do sistema
OBS.: Verificar se foi criada com a instalação
    * C:\Program Files\nodejs\
```

```
- Conferir se o node e npm foi instalado 
- no cmd:node --version
- no cmd:npm --version
```

### Instalação do Appium de forma global
- [Node.js](https://nodejs.org/en/)
```
- no cmd:npm install appium -g
- no cmd:npm install appium-doctor -g
```

```
- Comandos para iniciar o servidor Appium :gear:
- no cmd:appium
Obs.: isso irá iniciar o servidor

- no cmd:appium-doctor --android
Obs.: Esse comando realiza um diagnóstico no computador, para identificar se está preparado para criar sessões appium no android, caso não tenha erro, está OK
```

### Instalação do Appium desktop
- [Appium desktop](https://appium.io/)
- [Appium-Inspector](https://github.com/appium/appium-inspector/releases)

```
- OBS.: * Baixar a versão referente ao seu sistema
        * Caso tenha permissão, instale para todos os usuários
        * Após instalar, apenas clique em start server na página do appium e marque as permissões do firewall
```

### Instalação do Robot Framework
```
cmd: pip install robotframework
cmd: pip install --upgrade robotframework-appiumlibrary
```
```
Para utilizar e rodar um testes, é só executar robot teste.robot
O segundo comando é para a utilização da biblioteca do Robot Framework com o appium
```

### Configurar um dispositivo virtual no AVD Manager no Android Studio
```
- Abra o android studio
- Vá na opção AVD Manager
- Clique em Create Virtual Device
- Selecione o tipo de dispositivo Pixel 2 com a opção de play store - Mais leve para executar no computador
- Selecione a versão de imagem do android - Sugiro Instalar a release Android V9 Pie
- Depois de instalado, pode clicar em play para executar, mas antes execute o passo seguinte
- Para resolver um problema, clique em opções da coluna Actions e selecione Wipe Data, para resetar o Android com a as configurações padrão do android 
```


### Configurar os capabilits 
- [Appium Documentation > Desired Capabilities](https://appium.io/docs/en/writing-running-appium/caps/)

```
- Capabilities mais usados
{
  "automationName": "UiAutomator2",
  "deviceName": "Android",
  "platformName": "Android",
  "app": "CAMINHO DO APP FISICO NO COMPUTADOR",
  "udid": "emulator-5554"
}
```