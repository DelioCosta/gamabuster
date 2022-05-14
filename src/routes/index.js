const express = require("express");
const router = express.Router();

const HomeController = require("../controllers/home");
const GeneroController = require("../controllers/genero");
const FilmeController = require("../controllers/filme");
const ClienteController = require("../controllers/cliente");
const ReservaController = require("../controllers/reserva");

router.get("/genero", GeneroController.index);
router.post("/genero", GeneroController.store);
router.get("/genero/:id", GeneroController.show);
router.put("/genero/:id", GeneroController.update);
router.delete("/genero/:id", GeneroController.destroy);

router.get("/filme", FilmeController.index);
router.post("/filme", FilmeController.store);
router.get("/filme/:id", FilmeController.show);
router.put("/filme/:id", FilmeController.update);
router.delete("/filme/:id", FilmeController.destroy);

router.get("/cliente", ClienteController.index);
router.post("/cliente", ClienteController.store);
router.get("/cliente/:id", ClienteController.show);
router.put("/cliente/:id", ClienteController.update);
router.delete("/cliente/:id", ClienteController.destroy);

router.get("/reserva", ReservaController.index);
router.post("/reserva", ReservaController.store);
router.get("/reserva/:id", ReservaController.show);
router.put("/reserva/:id", ReservaController.update);
router.delete("/reserva/:id", ReservaController.destroy);

router.get("/:name?", HomeController.welcome);

module.exports = router;