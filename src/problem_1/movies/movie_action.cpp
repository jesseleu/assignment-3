#include "movie_action.h"

int MovieAction::calculate_late_fees(int num_of_days_past_due) {
    /*
     * TODO: homework
     */
    int fee;
    if (num_of_days_past_due >= 5) {

        fee = 2 * (num_of_days_past_due * get_late_fee_per_day_in_dollar());

    }
    else {

        fee = num_of_days_past_due * get_late_fee_per_day_in_dollar();
    }

    if ( get_inventory_id() % 13 == 0 && action_movie_mercy_rule_apply() ){

        fee = 0;
    }
    return fee;
}

bool MovieAction::action_movie_mercy_rule_apply() {
    return title.find("pulp fiction") != std::string::npos;
}

bool MovieAction::mercy_rule_apply() {
    return StoreMediaInterface::mercy_rule_apply() && action_movie_mercy_rule_apply();
}