export const hey = x => {
  let isYelling = x.toUpperCase() == x && x.toLowerCase() != x
  let isNothing = x.trim() == ""
  let isQuestion = [...(x.trim())].pop() == '?'

  if (isNothing) return 'Fine. Be that way!'
  if (isYelling && isQuestion) return "Calm down, I know what I'm doing!"
  if (isYelling) return "Whoa, chill out!"
  if (isQuestion) return "Sure."
  return "Whatever."
}
