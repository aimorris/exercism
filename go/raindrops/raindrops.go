package raindrops

import ( "strconv" )

func Convert (num int) string {
  out := ""

  if num % 3 == 0 {
    out += "Pling"
  }

  if num % 5 == 0 {
    out += "Plang"
  }

  if num % 7 == 0 {
    out += "Plong"
  }

  if out == "" {
    out = strconv.Itoa(num)
  }

  return out

}
