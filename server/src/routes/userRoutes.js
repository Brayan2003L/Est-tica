const { Router } = require('express');
const router = Router(); //routes
const usersController = require('../controllers/usersController');
router.post('/users', usersController.register);
module.exports = router;