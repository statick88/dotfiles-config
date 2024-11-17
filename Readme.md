# Configuración Personalizada de Entorno

Este repositorio almacena configuraciones personalizadas para mi entorno en Linux, con un enfoque en herramientas clave como **Zsh**, **Neovim** y **Hyprland**. Estas configuraciones están diseñadas para ofrecer una experiencia de usuario optimizada y eficiente.

## Archivos Incluidos

- **`.zshrc`**: Configuración de Zsh, que incluye temas, alias y ajustes personalizados para mejorar la experiencia de la terminal.
- **`.config/nvim/`**: Archivos de configuración de Neovim, incluyendo configuraciones de plugins y ajustes personalizados para la edición de texto.
- **`.config/hypr/`**: Configuración personalizada para **Hyprland**, un gestor de ventanas dinámico para Wayland, que optimiza la experiencia de uso en múltiples monitores.

## Estructura del Repositorio

```plaintext
.zshrc
.config/
  ├── nvim/
  └── hypr/
```

## Cómo Usar

1. Clona el Repositorio

Clona este repositorio en tu máquina:

```
git clone https://github.com/statick88/dotfiles-config.git
```

2. Copia los Archivos de Configuración

Para aplicar las configuraciones, debes copiar los archivos desde el repositorio a las ubicaciones correspondientes de tu sistema:

**Zsh**: Copia el archivo .zshrc a tu directorio home:

```bash
cp dotfiles-config/.zshrc ~/.zshrc
```

**Neovim**: Copia la carpeta nvim a ~/.config/:

```bash
cp -r dotfiles-config/.config/nvim ~/.config/
```

**Hyprland**: Copia la carpeta hypr a ~/.config/:

```bash
cp -r dotfiles-config/.config/hypr ~/.config/
```

3. Recarga las Configuraciones

Para Zsh, simplemente cierra y abre una nueva terminal, o ejecuta:

```bash
source ~/.zshrc
```

Para Neovim, ejecuta :PlugInstall (si usas vim-plug) para instalar los plugins.

Para Hyprland, asegúrate de reiniciar el entorno de Wayland para que se apliquen los cambios de configuración.

## Personalización

Si deseas personalizar alguna de estas configuraciones, siéntete libre de editar los archivos correspondientes en el directorio de configuración de este repositorio y luego empujarlos de vuelta a tu repositorio personal.

## Contribuciones

Las contribuciones son bienvenidas. Si tienes sugerencias o mejoras para cualquiera de las configuraciones, no dudes en crear un pull request.

## Licencia

Este repositorio está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
