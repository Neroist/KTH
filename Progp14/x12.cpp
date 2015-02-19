//============================================================================
// Name        : x1.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;


int main(void) {


	int w;
	int antal;
	cin >> w>>antal;
	antal = antal+1;
	int L[antal];
	L[0] = w;
	int i;
	for(i=1;i<antal;i++){
		cin >> L[i];
	}
	int j;
	int temp;
	int temp2;
	int part;
	vector<int> vec;
	for(i =0;i<antal;i++){
		temp =L[i];
		if(find(vec.begin(), vec.end(), temp) != vec.end()) {
		    ;
		}
		else vec.push_back(temp);

		for(j =0;j<antal;j++){
			temp2=L[j];
			part = abs(temp-temp2);
			if(part>0 && part <w){
				if(find(vec.begin(), vec.end(), part) != vec.end() || part ==0) {
					;
				}else vec.push_back(part);
			}
		}
	}
	sort(vec.begin(), vec.end());
	for(int i =0;i<vec.size();i++){
		cout << vec[i]<<' ';
	}

	return 0;
}

