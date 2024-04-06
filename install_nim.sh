# Install choosenim
curl https://nim-lang.org/choosenim/init.sh -sSf | sh

# Add to path for bash and zsh
#echo 'export PATH=$PATH:/home/kali/.nimble/bin' >> /home/kali/.bashrc
echo 'export PATH=$PATH:/home/kali/.nimble/bin' >> ~/.zshrc

# Choose nim version 2.0.2
choosenim 2.0.2

# Install nimlanggserver
nimble install nimlangserver --accept