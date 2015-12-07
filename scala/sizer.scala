import scala.io._
import scala.actors._
import Actor._
import scala.xml.XML

object PageLoader {

 val linkRegex = "<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r

 def getPageSize(url : String) = Source.fromURL(url).mkString.length

 def getPageLinks(url: String) = {
  val page = Source.fromURL(url).mkString
  linkRegex.findAllMatchIn(page).length

 }
}

object PageLinks {}
object PageSize {}

val urls = List("http://www.scala-lang.org/",
  "https://www.yahoo.com/")

def timeMethod(method: () => Unit) = {
 val start = System.nanoTime
 method()
 val end = System.nanoTime
 println("Method took " + (end - start)/1000000000.0 + " seconds.")
}

def getPageSizeSequentially() = {
 for(url <- urls) {
   println("Size for " + url + ": " + PageLoader.getPageSize(url))
   println("Links for " + url + ": " + PageLoader.getPageLinks(url))
 }
}

def getPageSizeConcurrently() = {
 val caller = self

 for(url <- urls) {
   actor { caller ! (url, PageSize, PageLoader.getPageSize(url))
      caller ! (url, PageLinks, PageLoader.getPageLinks(url))
    }
 }

 for(i <- 1 to urls.size * 2) {
   receive {
    case (url, PageSize, size) =>
       println("Size for " + url + ": " + size)
    case (url, PageLinks, size) =>
         println("Links for " + url + ": " + size)
   }
 }
}

println("Sequential run:")
timeMethod { getPageSizeSequentially }

println("Concurrent run")
timeMethod { getPageSizeConcurrently }
