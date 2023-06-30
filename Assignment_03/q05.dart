
void main() {
List numbers = [1,2,3,4,5];
num sum = 0;

for(var i = 0; i < numbers.length; i++){
sum += numbers[i];  
}
print("Sum of digits: $sum");
}