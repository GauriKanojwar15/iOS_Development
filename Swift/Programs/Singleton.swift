//Singleton is a design pattern where we ensure that class can have only single object and whih can be accesible overall
//Ex-  1)Manager of team, 2)public lobi in hotel which available for everyone, 3)Audio Player

//In swift Singleton is bydefault threadsafe 
import Foundation
class Singleton{
    static let sObj = Singleton()
    private init(){

    }
    func displayData(){
        print("Singlton is called")
    }
}

Singleton.sObj.displayData()





//But if we are having mutable variable in it , which can be change by myltiple threads at single time , 
// reace condition can occure , so we have to make it manualy thread safe by using GCD
class AudioPlayer{
    static let aObj = AudioPlayer()
    var queue = DispatchQueue(label: "com.audioPlayer.syncQueue")
    var isPlay = false
    private init(){

    }
    func playSong1(){
        queue.sync{
            isPlay = true
            print("playing song 1")
        }
    }
    func playSong2(){
       queue.sync{
            isPlay = true
            print("playing song 2")
        }
    }
    func playSong3(){
       queue.sync{
            isPlay = true
            print("playing song 3")
        }
    }
    func stop(){
        queue.sync{
            isPlay = false
            print("songs stopes")
        }
    }
    func getStatus() -> (Bool) {
    return queue.sync {
        return isPlay
    }
    }

}
let a = AudioPlayer.aObj
a.playSong1()
print("Is playing: \(a.getStatus())")
