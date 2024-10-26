// Этот сервер запускается на 8080 порту с помощью команды
// spawn-fcgi -p 8080 server1

#include <stdio.h>

#include "fcgi_stdio.h"

int main() {
  while (FCGI_Accept() >= 0) {
    printf("Content-Type: text/html\r\n\r\n");
    printf("<html><body><h1>Hello, World1!</h1></body></html>");
  }

  return 0;
}

// Если есть необходимость запускать сервер через команду ./server1
// Код должен быть переписан вот в такм виде,
// причем сокет должен открываться явно прямо в коде

// #include <fcgiapp.h>

// int main(){
//     int sockfd = FCGX_OpenSocket("localhost:8080", 20);
//     FCGX_Request req;
//     FCGX_InitRequest(&req, sockfd, 0);

//     while (FCGX_Accept_r(&req) >= 0) {
//     FCGX_FPrintF(req.out, "Content-Type: text/html\n\n");
//     FCGX_FPrintF(req.out, "hello world");
//     FCGX_Finish_r(&req);
//     }

//     return 0;
// }
