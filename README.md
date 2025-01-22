# CustomFlutter -> Componests

### Pasta com os componentes modificados: `lib/modules` 📂

<details>
<summary style="font-size: 22px">Lembretes basicos</summary>
<br>

> Evite em alterar algo nesse diretorio: **`android\app\src\main\res`**

### Controle do Widget

- Usando o **StateFulWidget**
> StateFul é uma widget voltada a estrutura que receberá atualizações.
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
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

## Gerenciador de pacotes

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
</details>

## Tipos de operadores logicos

## Operadores aritméticos: Realizam operações matemáticas básicas.

`-` : Subtração<br>
`-expr` : Inversão (Reverte os sinais de uma expressão)<br>
`*` : Multiplicação<br>
`/` : Divisão<br>
`~/` : Divisão que retorna apenas a parte inteira do resultado<br>
`%` : Módulo (resto de divisão)<br>
`++var` : Incremento<br>
`--var` : Decremento<br>
## Operadores relacionais: Comparam dois valores.<br>
`>` : Maior que<br>
`<` : Menor que<br>
`>=` : Maior ou igual a<br>
`<=` : Menor ou igual a<br>
`==` : Igual a<br>
`!=` : Diferente de<br>
## Operadores de atribuição: Atribuem valor a uma variável.<br>
`=` : Atribuição<br>
`+=` : Adição e atribuição<br>
`-=` : Subtração e atribuição<br>
`*=` : Multiplicação e atribuição<br>
`/=` : Divisão e atribuição<br>
`~/=` : Divisão inteira e atribuição<br>
`%=` : Módulo e atribuição<br>
## Operadores lógicos: Realizam operações lógicas (AND, OR, NOT).<br>
`&&` : AND lógico<br>
`||` : OR lógico<br>
`!` : NOT lógico<br>
## Operadores bit a bit: Realizam operações bit a bit.<br>
`&` : AND bit a bit<br>
`|` : OR bit a bit<br>
`^` : XOR bit a bit<br>
`~` : NOT bit a bit<br>
`<<` : Deslocamento para a esquerda<br>
`>>` : Deslocamento para a direita<br>
## Outros operadores:<br>
`??` : Operador if-null<br>
`?.` : Operador de acesso seguro a membros<br>
`..` : Operador de cascata<br>
`?..` : Operador de cascata nula<br>
`...` : Operador de propagação<br>
`...?` : Operador de propagação nula<br>

<details>
<summary style="font-size: 20px">Comandos basicos <a href=""><img src="https://cdn-icons-png.flaticon.com/512/10381/10381760.png" width="30px"></a></summary>
<br>

> Comando para **buscar atualizações do flutter**<br>
Comando para **registrar novo icone** antes do build<br>
Comando para realizar **build padrão para Android**<br>
Comando para realizar **build para Android gerando 3 arquivos para celulares com<br> arquiteturas diferentes `x64`, `x86` e `para ambas arquiteturas`**
Comando para realizar **build com codigo fonte criptografado**<br>

`flutter pub get`<br>
`flutter pub run flutter_launcher_icons:main` ou `dart run flutter_launcher_icons:main`<br>
`flutter build apk --release`<br>
`flutter build apk --split-per-abi`<br>
`flutter build apk --obfuscate`
</details>

## Configurações opcionais - Visual Studio Code

**Arquivo de configurações do VSCode:** `settings.json`<br>
Configuração para `dart` junto ao pacote flutter

```json
"[dart]": {
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "editor.rulers": [
    /*Manter comentado faz tirar linha de exibição lateral*/
    // 80 
  ],
  "editor.selectionHighlight": false,
  "editor.suggestSelection": "first",
  "editor.tabCompletion": "onlySnippets",
  "editor.wordBasedSuggestions": "off"
},
```