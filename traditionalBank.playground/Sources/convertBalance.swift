import Foundation

//create a function(public) to convert naira to kobo
public func toKobo(_ n: Int) -> Int{
    n * 100
}

//create a function(public) to convert kobo to naira
public func toNaira(_ n: Int) -> Int{
    n / 100
}
