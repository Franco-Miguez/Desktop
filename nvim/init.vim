set title  " Muestra el nombre del archivo en la ventana de la terminal
set relativenumber " Muestra los números de las líneas
set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)

set wrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español

""""" ATAJOS DE TECLADO """""

let g:mapleader = ','  " Tecla líder

nnoremap <leader>s :w<CR>  " Guardar con <líder> + s

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + n
nnoremap <leader>n :bnext<CR>

" Moverse al buffer anterior con <líder> + b
nnoremap <leader>b :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

""""" Plugins """""

call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree' "Navegador de archivos

" Abre/cierra NERDTree
map <C-n> :NERDTreeToggle<CR>


Plug 'itchyny/lightline.vim' "Barra de Estado inferior

" Configuración básica de Lightline
set laststatus=2
let g:lightline = {
  \ 'active': {
  \   'left': [ ['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified'] ],
  \   'right': [ ['lineinfo'], ['percent'], ['filetype'] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head',
  \   'lineinfo': 'v:lua.line_info()',
  \ },
  \ 'component': {
  \   'line_info': '%3l/%L'
  \ },
  \ 'subseparator': { 'left': '⮂', 'right': '⮃' },
  \ 'separator': { 'left': '⮀', 'right': '⮁' },
  \ }


Plug 'tpope/vim-fugitive' "Controlador de Git add :Git

Plug 'nvim-telescope/telescope.nvim' " Buscador de Archivos
Plug 'nvim-lua/plenary.nvim' " Dependencia para usar telescope


" Configuración básica de Telescope
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>

" Cambia el tema (opcional)
let g:telescope_theme = "dropdown"  " Puedes elegir entre dropdown, cursor, u otros.


Plug 'luochen1990/rainbow' "Resaltado corchetes y parentecis

" Activa el resaltado de paréntesis al abrir o cerrar uno
let g:rainbow_active = 1

" Cambia los colores utilizados para resaltar paréntesis
let g:rainbow_conf = {
      \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \ 'ctermfgs': [25, 208, 65, 124],
      \ 'operators': '_,_',
      \ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \ 'separately': {
      \   '*': {},
      \   'tex': {'parentheses': 'off'},
      \ },
      \}


Plug 'neoclide/coc.nvim', {'branch': 'release'} "completador de texto

" Habilita Coc.nvim en todos los archivos de código
autocmd FileType * if exists(':CocConfig') | call coc#config() | endif

" Configura el teclado para activar el autocompletado
inoremap <silent><expr> <C-Space> coc#refresh()
inoremap <silent><expr> <CR>      coc#_select_confirm()



call plug#end()
