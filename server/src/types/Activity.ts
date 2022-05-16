interface Activity {
    id: number
    name: string
//    icon: Image
 	description: string
}

interface Accomplishment {
    id: number
    name: string
//    let icon: Image
    description: string
    activity: Activity
    nextSteps: [Accomplishment]
}
