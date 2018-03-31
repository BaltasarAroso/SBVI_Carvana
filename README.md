# SBVI_Carvana
SBVI (Sistemas Baseados em Visão) means Vision Based Systems and is a curricular unit in the field of Automation in the Eletrical and Computer Engineering Master Degree that aims to study segmentation and image processing.

According to the `Pratical_Assignment_Proposal.pdf`, in this **CARVANA** project are three diferent tasks:
- **TASK 1**  Development of an algorithm to perform car segmentation. The segmentation algorithm should be automatic, i.e., work without any user interaction. Four different views are provided for each vehicle. Finally, the performance of the segmentation method should be compared with the ground-truth via the Sørensen–Dice coefficient, which is also to be implemented by the group.
- **TASK 2**  Development of an algorithm that, given the car segmentation ground-truth or task 1 result (and the original image, if needed), classifies the vehicle in one of four classes: compact, pick up, sedan or SUV. The performance of the classification method is to be evaluated via accuracy.
- **TASK 3**  Development of an algorithm that, given the car segmentation and the original image, predicts the brand of the vehicle.

The **Dataset** given to this project is in the folders `compacto`, `pick_up`, `sedan` and `SUV`.
Each vehicle has 4 images corresponding to the front, back, side and another view, as well as the corresponding segmentation ground truth (binary mask).

## Execution of TASK 1
 - Execute `task1.m`.
 - To see the table with all the efficiency values, open the variable (matrix) 'similarity' after the execution of the program.

## Execution of TASK 2
 - To get the values from the tables displayed, open `database.m`, uncomment what you want to measure and run it.
 - To test the tasks, execute `task2.m` and select the file you want to test (the request of the file is an infinite loop that ends when the button Cancel is pressed)

## Execution of TASK 3
 - Execute `task3.m`. This program will run all 16 rear view vehicle images and print the results like this: image index, brand number obtained, brand obtained.

## Execution of TASK 1 + TASK 2
This execution corresponds to the task 2, but using the results of task 1 as the dataset instead of the ground-truth files.

 - Open `task1_task2.m` and uncomment the algorithm you want to use and which is located at the end of the file. By standard the first of the four possible algorithms is already uncommented.
 - Execute that same file.
