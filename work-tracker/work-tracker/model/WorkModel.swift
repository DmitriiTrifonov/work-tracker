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
    case workingDay
    case dayOff
    case holiday
    case vacation
    case sickLeave
}

enum WorkStatus: String {
    case none
    case working
    case havingBreak
}
