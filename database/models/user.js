var mongoose = require('mongoose');

var clientes = new mongoose.Schema({
    nome: String,
    rg: String,
    cpf: String,
}, {timestamps: false});

/*
  username: String,
  email: String,
  bio: String,
  image: String,
  hash: String,
  salt: String
  */
mongoose.model('clientes', clientes);