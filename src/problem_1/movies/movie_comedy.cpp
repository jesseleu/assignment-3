#include "movie_comedy.h"

int MovieComedy::calculate_late_fees(int num_of_days_past_due) {
    /*
     * TODO: homework
     */
    int fee;
    if ( num_of_days_past_due == 0 ) {

        fee = 0;
    }
    else if  ( num_of_days_past_due <= 5 ) {

        fee = get_late_fee_per_day_in_dollar();
    }
    else if ( num_of_days_past_due <= 10 ) {

        fee = 2 * get_late_fee_per_day_in_dollar();
    }

    else {
        fee = num_of_days_past_due * get_late_fee_per_day_in_dollar() ;
    }

    return fee;
}
