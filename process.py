log_file = open("um-server-01.txt") #Links variable log_file to the csv file called um_server.csv where code can then pull information from.


def sales_reports(log_file): #defines function called sales_reports that takes in one argument called log_file
    for line in log_file: #loop statement that will look through each line in log_file, assigning the variable line = to each line of information looped over
        line = line.rstrip() #the variable line is experiencing the attached .rstrip() function that removes any trailing character at the end of each string
        day = line[0:3] #the index [0.3] is extracting a portion from the list. It starts at the index value of 0 and then takes in up to but not including 3 characters.
        if day == "Mon": #if the three characters taken in are equal to MON then do what follows
            print(line) #print out the line of information 


sales_reports(log_file) #calls the sales_report function passing in the argument of variable: log_file


#extra credit

log_file = open("um_server.csv") 


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        line = line.split()
        num = int(line[2])
        if num > 10:
          print(' '.join(line))


sales_reports(log_file)
