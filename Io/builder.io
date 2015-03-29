Builder := Object clone

Builder identationLevel := 0
Builder identation := method(
  return "  " repeated(self identationLevel)
)

Builder forward := method(
  identationString := identation();
  self identationLevel = self identationLevel + 1
  writeln(identationString, "<", call message name, ">")
  call message arguments foreach(
    arg,
    content := self doMessage(arg);
    if(content type == "Sequence", writeln(identation(), content))
  )
  writeln(identationString, "</", call message name, ">")
  self identationLevel = self identationLevel - 1
)
Builder curlyBrackets := method(
  call message arguments foreach(arg,
    arg println
  )
)
Builder ul(
  li({"color":"blue"}, "Io"),
  li("Lua"),
  li("JavaScript")
)
