var num:Int? = 10

if let no = num{
    print("Data prestnt")
}else{
    print("Not Present")
}

func data(){
guard let n = num else{return}
print("Data pr")
}
data()