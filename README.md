CONFIGURACOES DE AMBIENTE NECESSARIAS PARA RODAR O PROJETO

a. Instalar o Homebrew:
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"r
   
b. Instalar JDK para o Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Instalando e configurando o rbenv:
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.3.1 #Ou versão superior estável
   rbenv local 2.3.1

d. Instalar Android Studio
   https://developer.android.com/studio/index.html?hl=pt-br
   
e. Instalar Appium Desktop
   http://appium.io/ => Clique em download e baixe a versão mais recente para o seu SO
Variáveis de Ambiente JAVA
Abrir arquivo de configuração
open ~/.bash_profile

Preencher com:
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH 
Variáveis de Ambiente do Android
Abrir arquivo de configuração
open ~/.bash_profile

Preencher com:
export ANDROID_HOME=/Users/<usuario>/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools/adb:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH

NOTE: Trocar o <usuario> pelo nome do seu usuário
Instalando Gerenciador de gems do Ruby
gem install bundler
Executando o Projeto 🎯
1. Faça um clone do projeto:
   git clone https://github.com/Thialison/Appium-Android.git

2. Acesse a pasta pelo terminal e execute o comando:
   bundle

3. Emulando android virtual device: 
   emulator @"<Nome do seu emulator>"&
   
4. Abra o Appium e inicie o servidor do mesmo.

5. Executando todos os cenários da feature "Minhas conversões": 
   cucumber
   
6. Executando features com report: 
   cucumber -p report
