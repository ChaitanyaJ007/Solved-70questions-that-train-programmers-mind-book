/* To add a method to return reverse order to string type */
String.prototype.reverse = function (){
    return this.split("").reverse().join("");
  }
  
  /* Search stars at 11 */
  var num = 11;
  while (true){
    if ((num.toString() == num.toString().reverse()) && (num.toString(8) == num.toString(8).reverse()) &&
        (num.toString(2) == num.toString(2).reverse())){
      console.log(num);
      break;
    }
    /* Increase by 2 to find only odd numbers */
    num += 2;
  }
  