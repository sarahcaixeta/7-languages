import collection.mutable.HashMap

trait Censor {
  val substitutes = new HashMap[String, String]()

  io.Source.fromFile("curse_words.txt").getLines().foreach { (line) =>
    val parts = line.split(": ")
    substitutes += parts(0) -> parts(1)
  }

  def censor(text: String) = {
    substitutes.foldLeft(text)((working_text, curse) =>
      working_text.replaceAll(curse._1, curse._2))
  }

}

class Person() extends Censor {

  def talk(text: String) {
    println(censor(text))
  }

}

val person = new Person()
person.talk("shoot, I should watch my darn language")
