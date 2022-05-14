const HomeController = {
    welcome: (req, res) => {
      const { name } = req.params;
  
      res.send(`Hello ${name || "world"}`);
    },
  };
  
  module.exports = HomeController;