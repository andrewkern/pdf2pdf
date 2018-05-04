using namespace std;
#include <unistd.h>
#include <iostream>

int main()
{
  
usleep(833333);	
cout	<< "###                     (20%)\r" << std::flush;
usleep(833333);	
cout	<< "######                  (40%)\r" << std::flush;
usleep(833333);	
cout	<< "#########               (60%)\r" << std::flush;
usleep(833333);	
cout	<< "##############          (80%)\r" << std::flush;
usleep(833333);	
cout	<< "##################     (100%)\r" << std::flush;
cout	<< "\n";
return 0;
}

