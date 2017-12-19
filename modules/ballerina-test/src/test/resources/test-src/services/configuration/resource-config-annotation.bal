import ballerina.net.http;

@http:configuration {basePath:"/hello"}
service<http> helloWorldResourceConfig {

    @http:resourceConfig {
        methods:["GET"],
        path:"/"
    }
    @http:resourceConfig {
        methods:["POST"]
    }
    resource sayHello (http:Connection con, http:Request req) {
        http:Response res = {};
        res.setStringPayload("Hello World !!!");
        _ = con.respond(res);
    }
}
