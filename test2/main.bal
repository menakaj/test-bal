import ballerina/http;

listener http:Listener helloEP = new(9090);

service / on helloEP {
    resource function get sayHello(http:Caller caller, http:Request req) returns error? {
        http:Response res = new;
        res.setTextPayload("Hello, World from service hello!");
        http:ListenerError? respond = caller->respond(res);
        return respond;
    }
}
