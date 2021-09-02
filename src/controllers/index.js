const { signup, getSignupPage } = require('./signupControllers');
const { login, getLoginPage } = require('./loginControllers');
const { fetchPosts, createPost, deletePost } = require('./postsControllers');
const { fetchComments } = require('./commentsControllers');

module.exports = {
    signup,
    getSignupPage,
    login,
    getLoginPage,
    fetchPosts,
    fetchComments,
    createPost,
    deletePost
};