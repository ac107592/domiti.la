
# Documentação

Estes são os códigos fontes do front-end do hotsite domiti.la. Basicamente uma *landpage* de página estática responsiva / fluída escrita em HTML5 e CSS3 com os estilos compilados em SASS Compass.

carregamento deve ser progressivo

A própria ordem de carregamento foi pensada para não onerar uma pessoa que esteja vendo o site em seu celular.

Os breakpoints escolhidos para este projeto foram:

    Mobile
    Mobile Landscape
    Tablet
    Tablet Landscape
    Desktop


# Compilação

Verifique o arquivo BASH `publica.sh` ajustando-o conforme seu webserver. Este pequeno script irá compactar os arquivos CSS. É necessário ter os programas *uglify-js* e *compass* instalados usando o npm.

``` bash
sudo npm install uglify-js compass -g
```
Depois basta rodar o seguinte código abaixo:

``` bash
chmod u+x publica.sh
./publica.sh
```


# Ficha técnica

## RECOMENDAÇÕES

	developers.google.com/+/web/snippet/
	schema.org/Event



## TIPOGRAFIA

	google.com/fonts/specimen/Open+Sans



## FERRAMENTAS ON-LINE EMPREGADAS

	fontsquirrel.com/tools/webfont-generator
	validator.w3.org
	colorschemedesigner.com
	kraken.io
	tools.dynamicdrive.com/favicon
	petercollingridge.appspot.com/svg-optimiser
	dataurl.net/#dataurlmaker
	google.com/fonts/



## MÉTODOS

	Mobile first
	Imagens SVG
	Microformats
	Safari Web Content Guide
	HTML Outline
	WAI-ARIA
	Data URI scheme
	CSS Sprites
	Websafefonts
	Graceful degradation
	Unobtrusive Javascript



## FERRAMENTAS

	OptiPNG:        Otimizar imagens PNG
	jpegoptim:      Otimizar imagens e suavizar o JPEG
	Gimp:           Pra realizar ajustes finos na arte
	InkScape:       Edição de SVG
	Pinta:          Edição rápidas de imagens
	freemind:       Organizar e estruturar o conteúdo
	SASS-compass:   Limpar, organizar e compactar o CSS
	BASH, uglifyjs: Compilar e compactar o JS
	Web Developer:  Extensão do firefox de auxílio ao desenvolvimento
	Outliner:       Extensão do chrome de auxílio ao SEO
