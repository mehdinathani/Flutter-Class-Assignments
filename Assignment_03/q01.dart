void main() {
List Numbers =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List even_numbers = [];
List Odd_numbers = [];

for(var i in Numbers){
if(i % 2 == 0){
even_numbers.add(i);
}
else{
Odd_numbers.add(i);
}
}
print(even_numbers);
print(Odd_numbers);

}