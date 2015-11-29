trait Censor {
  val substitutes = Map("shoot" -> "pucky", "darn" -> "beans")

  def censor(text: String) =
    substitutes.foldLeft(text)((working_text, curse) =>
      working_text.replaceAll(curse._1, curse._2))

}

class Person() extends Censor {

  def talk(text: String) {
    println(censor(text))
  }

}

val person = new Person()
person.talk("shoot, I should watch my darn language")
