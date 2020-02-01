export const gigasecond = function (birth) {
 let out = new Date();
 out.setTime(birth.getTime() + 1e12);

 return out;
}
