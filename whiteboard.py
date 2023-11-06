#DESCRIPTION:
# Character recognition software is widely used to digitise printed texts. Thus the texts can be edited, searched and stored on a computer.
# When documents (especially pretty old ones written with a typewriter), are digitised character recognition softwares often make mistakes.
# Your task is correct the errors in the digitised text. You only have to handle the following mistakes:
# S is misinterpreted as 5
# O is misinterpreted as 0
# I is misinterpreted as 1
# The test cases contain numbers only by mistake.
# EXAMPLES
# fix_string('T0PP1NG5') => 'TOPPINGS'
# fix_string('5OUR') => 'SOUR'
# fix_string('1GLO0') => 'IGLOO

def fix_string(case_string):
    output_string = ''    

    for char in case_string:
        if char == '5':
            output_string += 'S'
        elif char == '0':
            output_string += 'O'
        elif char == '1':
            output_string += 'I'
        else:
            output_string += char
    return output_string

print(fix_string('T0PP1NG5'))