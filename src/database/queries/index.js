const { checkUserQuery, addUserQuery } = require('./signupQueries');
const { loginEmailQuery, loginUserNameQuery } = require('./loginQueries');
const { postComments } = require('./commentsQueries');
const {
    getAllPosts,
    getCategoryPosts,
    numberOfComments,
    owner,
    getSinglePost,
    getUserPosts,
    incrementViews,
    addPost,
    removePost,
    ownerID
} = require('./postsQueries');

module.exports = {
    checkUserQuery,
    addUserQuery,
    loginUserNameQuery,
    loginEmailQuery,
    getAllPosts,
    getCategoryPosts,
    numberOfComments,
    owner,
    getSinglePost,
    postComments,
    getUserPosts,
    incrementViews,
    addPost,
    removePost,
    ownerID
};