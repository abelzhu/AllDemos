const {
    GraphQLSchema,
    GraphQLObjectType,
    GraphQLBoolean,
    GraphQLString,
    GraphQLInt
} = require("graphql");

const queryObj = new GraphQLObjectType({
    name: 'Query1',
    descripton: 'a hello world demo',
    fields: {
        hello: {
            name: 'a hello',
            descripton: 'a hello desc',
            type: GraphQLString,
            resolve(parentValue, args, request) {
                return "Hello world! Abel";
            }
        },
        person: {
            name: 'personQuery',
            description: 'query a person',
            type: new GraphQLObjectType({ // 这里定义查询结果包含name,age,sex三个字段，并且都是不同的类型。
                name: 'person',
                fields: {
                  name: {
                    type: GraphQLString
                  },
                  age: {
                    type: GraphQLInt
                  },
                  sex: {
                    type: GraphQLBoolean
                  }
                }
            }),
            args: {
                name: {
                    type: GraphQLString,
                    defaultValue: 'Charming'
                }
            },
            resolve(parentValue, args, request) {
                return {
                    name: args.name,
                    age: args.name.length,
                    sex: Math.random() > 0.5
                };
            }
        }
    }
});

module.exports = new GraphQLSchema({
    query: queryObj
})