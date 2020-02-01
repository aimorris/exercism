export const isPangram = (string) => new Set(string.toLowerCase().split('').sort().filter(x => 'abcdefghijklmnopqrstuvwxyz'.includes(x))).size == 26;
