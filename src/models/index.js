const Filme = require("./Filme");
const Genero = require("./Genero");
const Cliente = require("./Cliente");
const Endereco = require("./Endereco");
const FilmeGenero = require("./FilmeGenero");

Cliente.hasOne(Endereco);
Endereco.belongsTo(Cliente, {
  foreignKey: "cliente_codigo",
});

Filme.belongsToMany(Genero, {
    foreignKey: "filme_codigo",
    through: FilmeGenero,
});

Genero.belongsToMany(Filme, {
    foreignKey: "genero_codigo",
    through: FilmeGenero,
});

module.exports = {
  Filme,
  Genero,
  Cliente,
  Endereco,
};