#include <unistd.h>
#include <iostream>

int main() {
	float progress = 0.0;
	int barWidth = 70;
	while (progress < 1.0) {
		std::cout << "[";
		int pos = barWidth * progress;
		for (int i = 0; i < barWidth; ++i) {
			if (i < pos) std::cout << "=";
			else if (i == pos) std::cout << ">";
			else std::cout << " ";
		}
		std::cout << "] " << int(progress * 100.0) << " %\r";
		std::cout.flush();
		progress += 0.16; // for demonstration only
		sleep(1);
	}
	std::cout << std::endl;
	
	return 0;
}
