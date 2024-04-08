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

### 1. Instalação do Lazy

Primeiramente você deve instalar o [Lazy](https://github.com/folke/lazy.nvim) como gerenciador de pacotes. Na minha configuração criei o arquivo `~/.config/nvim/lua/lazy-config.lua`
e utilizei o seguinte script:

```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.localleader = " "
require("lazy").setup("plugins", opts)
```
Posteriormente, no arquivo `~/.config/nvim/init.lua` adicionei o parâmetro  

```lua
require("lazy-config")
```
Este arquivo `ìnit.lua` será o primeiro carregado ao iniciar o Neovim. Sendo assim, ele será utilizado como uma rerenciadas para importação de todas as dependencias.

### 2. Arquivo Options  
No arquivo `options.lua` são definidas algumas configurações próprias do Neovim, como por exemplo:  

```lua
local opt = vim.opt

--adicionar numeração das linhas
opt.number = true

--adicionar numeração relativa nas linhas
opt.relativenumber = true
```
Você pode entender como outras opções podem ser aplicadas consultando o [guia do Neovim para Lua](https://neovim.io/doc/user/lua-guide.html#lua-guide-options) e as [opções para o neovim](https://neovim.io/doc/user/options.html#option-summary)  

Após criadas suas configurações, elas também devem ser importadas no arquivo `~/.config/nvim/init.lua` (no topo dele):  

```lua
require("options")
```
### 3. Arquivo Keymaps  

Neste arquivo é definido o mapeamento de atalhos do teclado para serem utilizado no Neovim, sejam mapeamentos gerais como mapeamentos utilizados com plugins instalados. O arquivo possui comentários para utilização de novos Keymaps, mas outra fonte que pode ser útil é [esta página do Lazy](http://www.lazyvim.org/keymaps).  

Os keymaps também devem ser importados no arquivo `~/.config/nvim/init.lua`:  

```lua
require("keymaps")
```

### 3. Instalando plugins  
No diretório `~/.config/nvim/lua/plugins` estão separados os scripts de instalação de cada um dos plugins. Estes scripts são apenas retornos de funções com especificações do repositório de origem do plugin, da versào a ser instalada e outras configurações opcionais, como por exemplo possíveis dependências.  
Após incluir o arquivo do plugin, você pode acessar o NETRW (acessando o neovim através do terminal especificando apenas o path local) (imagem A) ou através de qualquer arquivo acessado no Neovim e executando o comando `:Lazy` para acessar a interface do gerenciador de pacotes:  

![img1](https://github.com/peixeirodata/my-env-configs/assets/27984831/f0a14a79-2465-4603-9acd-d8871fde151e)  

![img2](https://github.com/peixeirodata/my-env-configs/assets/27984831/1f461aa3-213e-4843-861e-fd4170fb6c68)  

![Screenshot from 2024-04-07 22-46-03](https://github.com/peixeirodata/my-env-configs/assets/27984831/0c86d385-cdb9-4972-8828-f7a6e0bd7733)



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

