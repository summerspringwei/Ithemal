#include "stdio.h"

// static char * getline(const char *s);
// static char *        getline (char * buf);

int main()
{
    printf("Hello World!\n");
    return 0;
}


// static char* getline(const char *s)
// {
//     return "Hello World!";
// }

// static char * getline (s)
//     register char *     s;
//     {
//     register char *     p;
//     register int        c;

//     p = s;
//     while ((c = getchar ()) != EOF && c != '\n')
//         *p++ = c;
//     }