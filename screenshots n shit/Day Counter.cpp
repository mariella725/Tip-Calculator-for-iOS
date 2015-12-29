#include <iostream> 
#include <string> 

using namespace std; 


bool isLeap(int year) {
        bool isValid = false;

        if (year % 400 == 0)
                isValid == true;
        else if (year % 4 == 0 && year % 100 != 0)
                isValid = true;
        return isValid;
}


int daysInMonth(int month, int year) {
        int dayValueMonth = 0;

        if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
                dayValueMonth = 31;
        else if (month == 4 || month == 6 || month == 9 || month == 11)
                dayValueMonth = 30;
        else if (month == 2)
        {
                if(isLeap(year) == true)
                        dayValueMonth = 29;
                else dayValueMonth = 28;

        }
        return dayValueMonth;
}

int daysInYear(int year) {
        int dayValueYear = 0;

        if(isLeap(year) == true)
                dayValueYear = 366;
        else
                dayValueYear = 365;

        return dayValueYear;
}


int main() { 

	int day1, day2, month1, month2, year1, year2; 
	int totalDays = 0; 

	cout << "Hi please enter your first date (ex: 7 25 2015)" << endl; 
	cin >> month1 >> day1 >> year1; 

	cout << "Now plaese enter your second date (ex: 12 25 2015)" << endl;
	cint >> month2 >> day2 >> year2; 


		if(year1 == year2 && month1 == month2)
			totalDays = day2 - day1; 
		else if (year1 == year2){
			for(int i = 1; i < month2; i++) {
				totalDays += daysInMonth(i, year1) }
		}
			for(int i = month )

		else(year1 != year2 && month1 != month2 && day1 != day2)
		{
			for(int y = year1; y < year2; y++)
				totalDays += daysInYear(y); 
			for (int i = month1 + 1; i < month2; i++)
					totalDays += daysInMonth(i, year1);
					totalDays += day2;
		}
cout << totalDays << endl;

}