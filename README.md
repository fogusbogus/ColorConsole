# ColorConsole

Returns the Unicode coloring convention for console output. **Note this will not work in the debug console (March 2023).**

## How to use example:

`
import ColorConsole

print(ColorConsoleCodes.red.foreground(.underline) + "This is underlined an in red text" + ColorConsoleCodes.default.foreground())
`
