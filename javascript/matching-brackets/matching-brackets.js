export const isPaired = str => {
  let stack = []
  let splitStr = str.split('').filter(c => '{}[]()'.split('').includes(c))

  for (let c of splitStr) {
    if (brace[c])
      stack.push(brace[c])
    else
      if (stack.pop() !== c) return false
  }

  return stack.length === 0
}

const brace = {
  '{': '}',
  '[': ']',
  '(': ')'
}
