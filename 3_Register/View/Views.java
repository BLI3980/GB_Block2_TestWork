package View;

import java.util.Scanner;

public class Views {
    public String mainMenu() {
        String command = prompt("\nChoose the action from the list below:\n" +
                "1. See the entire register of animals\n" +
                "2. Add new animal to the register.\n" +
                "3. Delete an animal from the register\n" +
                "4. Find an animal\n" +
                "5. Show the list of commands for an animal.\n" +
                "6. Add new command to existing animal.\n" +
                "7. Exit.\n" +
                "Type your choice here: ");
        return command;
    }

    public String prompt(String message) {
        Scanner in = new Scanner(System.in);
        System.out.print(message);
        return in.nextLine();
    }
}
