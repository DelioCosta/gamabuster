const ClienteController = {
    index: (req, res) => {
      res.json([]);
    },
    store: (req, res) => {
      res.json(req.body);
    },
    show: (req, res) => {
      const { id } = req.params;
  
      res.json({
        id,
        nome: 'Délio',
        sobrenome: 'Costa',
        telefone: '(37)99999-9999',
        email: 'deliocqcosta@gmail.com',
        data_nasc: '25/07/1994',
        endereço_id: 1
      });
    },
    update: (req, res) => {
      const { id } = req.params;
  
      res.json({
        id,
        ...(req.body || {}),
      });
    },
    destroy: (req, res) => {
      res.status(204).send("");
    },
  };
  
  module.exports = ClienteController;