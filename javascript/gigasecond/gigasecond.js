function Gigasecond(birth) {
 let newDate = new Date();
 newDate.setTime(birth.getTime() + Math.pow(10, 9) * 1000);

 this.date = function() {
   return newDate;
 }

}

module.exports = Gigasecond;