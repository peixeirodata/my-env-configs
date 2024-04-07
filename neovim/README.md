**Go to English README [here](#what-is-neovim)**

---
[ :brazil: ]
## O que é o Neovim?
O [Neovim](https://neovim.io/) é um editor de textos baseado no [Vim](https://www.vim.org/) para utilização no terminal. Por ser altamente customizável algumas pessoas utilizam plugins para transformá-lo em uma IDE. Existem diversas abordagens de como fazer isso e a que utilizo no momento é a que esta aqui neste diretório.

## O que contém este diretório?  

├📂 ~/.config/nvim -> diretório de configuração do nvim  
│       ├── init.lua -> carrega as configuraçãoes de pacotes Lua  
│       └📂 lua -> localização dos scripts  
│         ├── keymaps.lua -> mapeamento de atalhos do teclado (keymap)  
│         ├── lazy-config.lua -> configurações do gerenciador de pacotes (Lazy)  
│         ├── options.lua -> configuração de opções básicas do Neovim  
│         └📂 plugins -> diretório com as diretrizes de cada plugin  
│           ├── fugitive.lua  
│           └── telescope.lua  


## Como funciona?  
Primeiramente você deve instalar o [Lazy](https://github.com/folke/lazy.nvim) como gerenciador de pacotes. Na minha configuração criei o arquivo `lazy-config.lua.lua`
e utilizei o seguinte script:

```lua

```
## Como irá ficar com esse arquivo de configuração? (Preview)  


---
[ :us: ]
## What is Neovim?

[Neovim](https://neovim.io/) is a text editor based on [Vim](https://www.vim.org/) used in the terminal emulator. As it is highly customizable, some people use plugins to transform and use it as an IDE. There are many ways of doing this and the one that I use at this moment is described in this directory.

## What does this directory contains?  
 
├📂 ~/.config/nvim -> configuration directory  
│       ├── init.lua -> loads the configurations of a Lua packages  
│       └📂 lua -> scripts location  
│         ├── keymaps.lua -> shortcuts keymapping  
│         ├── lazy-config.lua -> package manager config script (Lazy)  
│         ├── options.lua -> Neovim's basic configurations  
│         └📂 plugins -> directory with each installed plugin definitions  
│           ├── fugitive.lua  
│           └── telescope.lua  

## How does it works?  

## How will it look like with this config file? (Preview)  

