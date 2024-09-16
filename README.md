# Pokémon App - Prueba Técnica

## Descripción

Esta aplicación de Flutter está diseñada para consumir la API pública de Pokémon y mostrar una lista de Pokémon utilizando un iframe. La aplicación es compatible con Web, Mobile (Android/iOS) y Windows, y utiliza el paquete `webviewx` para integrar el iframe en todas las plataformas.

## Requisitos Técnicos

1. **Consumo de la API de Pokémon**: La aplicación realiza una solicitud HTTP a la API pública de Pokémon para obtener una lista de Pokémon.
2. **Uso de iframe**: El contenido se muestra utilizando un iframe en todas las plataformas (Web, Mobile, Windows).
3. **Paquete `webviewx`**: Se utiliza el paquete `webviewx` para integrar el iframe en las plataformas compatibles.
4. **Compatibilidad Multiplataforma**: La aplicación debe funcionar en Flutter Web, Mobile y Windows.

## Instalación

1. **Clonar el repositorio**:

   ```bash
   git clone https://github.com/tu-usuario/pokemon_app.git
   cd pokemon_app
   ```

2. **Instalar dependencias**:

   Asegúrate de tener Flutter instalado y configurado. Luego, instala las dependencias del proyecto:

   ```bash
   flutter pub get
   ```

## Configuración

1. **Habilitar soporte para Web**:

   ```bash
   flutter config --enable-web
   ```

2. **Habilitar soporte para Windows**:

   ```bash
   flutter config --enable-windows-desktop
   ```

3. **Habilitar soporte para macOS (si deseas probar en macOS)**:

   ```bash
   flutter config --enable-macos-desktop
   ```

## Uso

### Ejecutar en un navegador web

Para probar la aplicación en un navegador web (por ejemplo, Chrome):

```bash
flutter run -d chrome
```

### Ejecutar en Windows Desktop

Para probar la aplicación en Windows (si tienes acceso a una máquina con Windows):

```bash
flutter run -d windows
```

### Ejecutar en macOS Desktop

Para probar la aplicación en macOS:

```bash
flutter run -d macos
```

### Ejecutar en Mobile (Android/iOS)

Para probar en un dispositivo Android o iOS, utiliza el siguiente comando:

```bash
flutter run
```

Asegúrate de tener un emulador o dispositivo conectado para ejecutar la aplicación.

## Funcionalidad

- **Lista de Pokémon**: Muestra una lista de Pokémon con nombre e imagen.
- **Iframe**: El contenido de la lista de Pokémon se muestra dentro de un iframe usando `webviewx`.

## Consideraciones

- **Responsive UI**: La aplicación adapta el tamaño del iframe según la plataforma y el tamaño de la ventana.
- **Manejo de Errores**: Se maneja el caso cuando la solicitud a la API falla.

## Recursos

- **Documentación de Flutter**: [Flutter](https://flutter.dev/)
- **API pública de Pokémon**: [PokeAPI](https://pokeapi.co/)
- **Paquete webviewx**: [webviewx en pub.dev](https://pub.dev/packages/webviewx)





