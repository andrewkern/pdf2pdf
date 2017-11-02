using namespace std;
#include <unistd.h>
#include <iostream>

int main()
{
  
usleep(833333);	
cout	<< "###                     (16%)\r" << std::flush;
usleep(833333);	
cout	<< "######                  (33%)\r" << std::flush;
usleep(833333);	
cout	<< "#########               (50%)\r" << std::flush;
usleep(833333);	
cout	<< "############            (66%)\r" << std::flush;
usleep(833333);	
cout	<< "###############         (83%)\r" << std::flush;
usleep(833333);	
cout	<< "##################     (100%)\r" << std::flush;
cout	<< "\n";
return 0;
}

