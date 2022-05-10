import express from "express";
import {graphqlHTTP} from "express-graphql";
import {
	GraphQLSchema,
	GraphQLObjectType,
	GraphQLString,
	GraphQLList,
	GraphQLInt,
	GraphQLNonNull
} from "graphql"

import {activities, users} from "./mock_database";

const app = express();



const ActivityType = new GraphQLObjectType({
	name: "Activity",
	description: "Type of water sport activity",
	fields: () => ({
		id: { type: new GraphQLNonNull(GraphQLInt) },
		name: {type: new GraphQLNonNull(GraphQLString) },
	})
})	

const UserType = new GraphQLObjectType({
	name: "User",
	description: "User's information",
	fields: () => ({
		id: { type: new GraphQLNonNull(GraphQLInt) },
		name: {type: new GraphQLNonNull(GraphQLString) },
		favActivityId: { type: new GraphQLNonNull(GraphQLInt) },
		favActivity: {
			type: ActivityType,
			resolve: (user) => {
				return activities.find(activity => activity.id === user.favActivityId)
			}
		}
	})
})	

const RootQueryType = new GraphQLObjectType({
	name: "Query",
	description: 'Root Query',
	fields: () => ({
		activities: {
			type: new GraphQLList(ActivityType),
			description: 'List of all activities',
			resolve: () => activities
		},
		users: {
			type: new GraphQLList(UserType),
			description: 'List of all users',
			resolve: () => users
		}
	})
})

const schema = new GraphQLSchema({
	query: RootQueryType
})

app.use('/graphql', graphqlHTTP({
	graphiql: true,
	schema: schema
}))

export default app;