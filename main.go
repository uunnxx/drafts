package router

import (
  "log"
  "os"


)

func Factory(r *fiber.App, c *controller.Controller) {
  r.Get("/user/:id", func(c *fiber.Ctx) error)
}
