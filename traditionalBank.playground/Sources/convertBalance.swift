import Foundation

//create a function(public) to convert naira to kobo
public func convertToKobo(_ n: Int) -> Int{
    n * 100
}

//create a function(public) to convert kobo to naira
public func convertToNaira(_ n: Int) -> Int{
    n / 100
}
