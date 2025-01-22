# CustomFlutter -> Componests

### Pasta com os componentes modificados: `lib/modules` 📂

# Lembretes

> Evite em alterar algo nesse diretorio: **`android\app\src\main\res`**

### Controle do Widget

- Usando o **StateFulWidget**
> StateFul é uma widget voltada a estrutura que receberá atualizações.
```dart
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
```
# 
- Usando o **StateLessWidget**
> StateLess é uma widget voltada a estrutura que permacene sempre constante.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
```
# Gerenciador de pacotes

O `pubspec.yaml` é um arquivo essencial para o projeto **Flutter**. Ele serve para especificar as configurações do projeto, tais como de **versão**, **pacotes** e dentre outras para formatação. 
```yaml
name: nome_do_projeto
version: 1.0.0

dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.3

flutter:
  assets:
    - assets/images/
  fonts:
    - family: Roboto
      fonts:
        - asset: fonts/Roboto-Regular.ttf
```

# Lista de comandos
- [Comando para **buscar atualizações do flutter**](#comandos)
- [Comando para **registrar novo icone** antes do build](##comandos)
- [Comando para realizar **build padrão para Android**](#comandos)
- [Comando para realizar **build para Android gerando 3 arquivos para celulares com arquiteturas diferentes `x64`, `x86` e `para ambas arquiteturas`**](#comandos)
- [Comando para realizar **build com codigo fonte criptografado**](#comandos)

## Comandos
`flutter pub get`<br>
`flutter pub run flutter_launcher_icons:main` ou `dart run flutter_launcher_icons:main`<br>
`flutter build apk --release`<br>
`flutter build apk --split-per-abi`<br>
`flutter build apk --obfuscate`