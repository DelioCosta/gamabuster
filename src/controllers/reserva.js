const ReservaController = {
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
        cliente_id: 1,
        data_reserva: '25/04/2022',
        data_limite: '25/05/2022',
        valor: 'R$ 23,00',
        status: 3,
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
  
  module.exports = ReservaController;