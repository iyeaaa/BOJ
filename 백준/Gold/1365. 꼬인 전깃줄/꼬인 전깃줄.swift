
let n = Int(readLine()!)!
let l = readLine()!.split{$0==" "}.map{Int(String($0))!}
var s = [l[0]]
for v in l {
    if s.last! < v { s.append(v) }
    var lf=0,ryt=s.count-1
    while lf<ryt {
        let mid=(lf+ryt)/2
        if s[mid] >= v {ryt=mid}
        else {lf=mid+1}
    }
    s[ryt]=v
}
print(n-s.count)