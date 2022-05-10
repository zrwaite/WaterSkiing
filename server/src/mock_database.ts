interface Activity {
	id: number,
	name: string
}
const activities:Activity[] = [
	{ id: 1, name: "Water Skiing" },
	{ id: 2, name: "Wake Boarding" },
	{ id: 3, name: "Wake Surfing" },
	{ id: 4, name: "Fly Boarding" },
	{ id: 5, name: "Slalom Skiing" },
	{ id: 6, name: "Swivel Skiing" },
	{ id: 7, name: "Doubles" },
	{ id: 8, name: "Pyramid" },
	{ id: 9, name: "Barefooting" },
]

interface User {
	id: number,
	name: string,
	favActivityId: number
}
const users:User[] = [
	{ id: 1, name: "Zac Waite", favActivityId: 1},
	{ id: 2, name: "Elle Waite", favActivityId: 6},
	{ id: 3, name: "Person 3", favActivityId: 1},
	{ id: 4, name: "Person 4", favActivityId: 9},
	{ id: 5, name: "Person 5", favActivityId: 3},
]

export {activities, users}
export type {Activity, User}