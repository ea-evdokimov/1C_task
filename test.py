import random
import numpy as np

class generate_example(object):

    def __init__(self, type = "bad_start_1"):
        number_of_cards = 72
        self.big_array_of_cards = np.arange(number_of_cards)
        for i in range(0, 72):
            self.big_array_of_cards[i] = self.big_array_of_cards[i] % 9 + 6
        np.random.shuffle(self.big_array_of_cards)
        self.big_array_of_cards = self.big_array_of_cards.reshape(8, 9)
        if (type == "bad_start_1"):
            for array in self.big_array_of_cards:
                for ind in range(0, 7):
                    if array[8]%2 != 0:
                        array[8], array[ind] = array[ind], array[8]
                    else:
                        break

        if (type == "bad_start_2"):
            for array in self.big_array_of_cards:
                for ind in range(0, 7):
                    if array[8]%2 == 0:
                        array[8], array[ind] = array[ind], array[8]
                    else:
                        break
        if (type == "stupid good"):
            arrays_of_lines_with_cards = np.arange(number_of_cards)
            for i in range(0, 72):
                arrays_of_lines_with_cards[i] = arrays_of_lines_with_cards[i] % 9 + 6
            arrays_of_lines_with_cards = arrays_of_lines_with_cards.reshape(9, 8)
            self.big_array_of_cards = np.zeros((8, 9), dtype = int)
            for i in range (0, 8):
                for j in range (0, 9):
                    self.big_array_of_cards[i][j] = arrays_of_lines_with_cards[j][i]
            for i in range (0, 8):
                self.big_array_of_cards[i] = np.flip(self.big_array_of_cards[i], 0)
        print(self.big_array_of_cards)
            #есть еще варинаты, нужно больше времени для придумывания и анализации
        pass

number_of_tests = input()
for i in range(0, int(number_of_tests)):
    array_of_variants = ["stupid good", "bad_start_2", "bad_start_1"]
    type = random.choice (array_of_variants)
    test = generate_example(type)
    if(type == "stupid good"):
        print("Can play")
    else:
        print("Can't play!")
