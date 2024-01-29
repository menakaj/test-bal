import ballerina/http;

listener http:Listener helloEP = new(9090);

service / on helloEP {

    resource function get pets() returns string {
        return "hello";
    }
}