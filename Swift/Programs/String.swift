var str = "Gauri"
print(str.count)


for i in str {
    print(i, terminator: " ")
}

var rev = ""
for i in str {
    rev = String(i) + rev
}
print(rev)


//++++++++++++++++++++++++++++++++++++++





//Count word from paragram
var para = "I love my country"
var words = para.split(separator: " ")
var cnt = 0
print(words)
for i in words{
    print(i)
    cnt = cnt + 1
}
print(cnt)


//Count repetative word from paragram
var count = 0
for i in words{
    print(i)
    if(i == "my"){
        count = count + 1
    }
    
}
print(count)


var arrs = [34,5,2,3]
var res = arrs.sorted()
print(res)
print(arrs.first)
print(arrs.last)
print(arrs.count-2)