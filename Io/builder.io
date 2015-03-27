Builder := Object clone

Builder identation := 0

Builder forward := method(
  identationString := "    " repeated(self identation)
  writeln(identationString, "<", call message name, ">")
  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(("#{identationString} ") interpolate, content))
  )
  writeln(identationString, "</", call message name, ">")
)
Builder ul(
  li("Io"),
  li("Lua"),
  li("JavaScript")
)
