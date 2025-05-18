Rails.application.routes.draw do
  get("/", { controller: "dice", action: "home" })
  get("/dice/:num/:sides", { controller: "dice", action: "roll" })
end
