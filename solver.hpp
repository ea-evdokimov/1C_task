//
// Created by egor on 4/14/21.
//
#include "deckstate.hpp"

#ifndef INC_1C_TASK_SOLVER_HPP
#define INC_1C_TASK_SOLVER_HPP

class Solver {
    DeckState cur_state_;
    std::stack<DeckState> stack_;
public:
    Solver(DeckState &state);

private:
    bool Solve();

    void Answer();
};

#endif //INC_1C_TASK_SOLVER_HPP
