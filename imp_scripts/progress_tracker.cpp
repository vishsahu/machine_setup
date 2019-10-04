#include <unistd.h>
#include <iostream>

// this can be declared extern in a header and can updated by application being
// tracked.
double normalized_work_done;

int main() {
	// create thread with track_progress as callback function
	return 0;
}

/*
 * Function to track progress of a binary. Consumer application of this function
 * must define normalized_work_done variable.
 */
void *
track_progress(void *data) {
	int barWidth = 70;
	do {
		std::cout << "[";
		int pos = barWidth * normalized_work_done;
		for (int i = 0; i < barWidth; ++i)
			std::cout << (i <= pos ? "#" : " ");
		std::cout << "] " << int(ceil(normalized_work_done * 100.0))
		    << " %\r";
		std::cout.flush();
		sleep(1);
	} while (normalized_work_done < 1.0);
	std::cout << std::endl;

	return NULL;
}
