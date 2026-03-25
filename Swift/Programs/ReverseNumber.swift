
//Reverse Number

var num = 12345
var no = num
var rev = 0
var rem = 0
print(num)
while num>0{
    rem = num%10
    rev = rev*10+rem
    num = num/10
    print("digit", rem)
}
print("rev = ", rev)


//Count digit From Number  
num = 12345
var count = 0
while num>0{
    rem = num%10
    rev = rev*10+rem
    num = num/10
    count = count + 1
}
print("count = ", count)



//Count repitative digit From Number  
num = 1233344445
var n = 3
var cnt = 0
while num>0{
    rem = num%10
    num = num/10

    if(rem == n){
    cnt = cnt + 1
    }
    
    }
print("cnt = ", cnt)