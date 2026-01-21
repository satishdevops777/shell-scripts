# 🎨 Colour Codes and Syntax in Shell Scripting

In **shell scripting (especially Bash)**, colour codes are used to add colors and styles to terminal output. This is done using **ANSI escape sequences**.

---

## 1. What are ANSI Escape Codes?

ANSI escape codes are special character sequences that control:

- Text color
- Background color
- Text formatting (bold, underline, etc.)

### General Syntax
```bash
\e[<codes>m
echo -e "\e[31mHello World\e[0m"
```

- -e → Enables escape sequence interpretation
- \e[31m → Red text
- \e[0m → Reset formatting

- Foreground (Text) Colour Codes

  | Colour  | Code |   
  | ------- | ---- |
  | Black   | `30` |
  | Red     | `31` |
  | Green   | `32` |
  | Yellow  | `33` |
  | Blue    | `34` |
  | Magenta | `35` |
  | Cyan    | `36` |
  | White   | `37` |

```echo -e "\e[32mSuccess Message\e[0m"```

- Background Colour Codes: Background colours are obtained by adding 10 to foreground colour codes.
  | Colour  | Code |
  | ------- | ---- |
  | Black   | `40` |
  | Red     | `41` |
  | Green   | `42` |
  | Yellow  | `43` |
  | Blue    | `44` |
  | Magenta | `45` |
  | Cyan    | `46` |
  | White   | `47` |

```echo -e "\e[30;43mWarning Message\e[0m"```

- Text Style Codes
  | Style     | Code |
  | --------- | ---- |
  | Reset     | `0`  |
  | Bold      | `1`  |
  | Dim       | `2`  |
  | Underline | `4`  |
  | Blink     | `5`  |
  | Reverse   | `7`  |

```echo -e "\e[1;34mBold Blue Text\e[0m"```
```\e[style;text_colour;background_colourm\e[0m"```
```
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
RESET="\e[0m"

echo -e "${GREEN}Build successful${RESET}"
echo -e "${RED}Build failed${RESET}"
```



