package org.rinha;
import io.javalin.Javalin;

public class Main {
    public static void main(String[] args) {
        Javalin app = Javalin.create(config -> {
            config.showJavalinBanner = true;
        }).start(7000);

        app.get("/", ctx -> ctx.result("Olá, Javalin! 🚀"));
    }
}
