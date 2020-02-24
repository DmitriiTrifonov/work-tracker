import Foundation

struct Work {
    let uuid: String
    let start: Date
    let stop: Date
    let breaks: [Break]
}

struct Break {
    let uuid: String
    let workId: String
    let start: Date
    let stop: Date
}

struct Day {
    let uuid: String
    let date: Date
    let type: DayType
    let work: Work?
    
}

enum DayType: String {
    case WorkingDay
    case DayOff
    case Holiday
    case Vacation
    case SickLeave
}
