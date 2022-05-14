const express = require("express");
const router = express.Router();

const HomeController = require("../controllers/home");
const ProductController = require("../controllers/product");

router.get("/products", ProductController.index);
router.post("/products", ProductController.store);
router.get("/products/:id", ProductController.show);
router.put("/products/:id", ProductController.update);
router.delete("/products/:id", ProductController.destroy);

router.get("/:name?", HomeController.welcome);

module.exports = router;