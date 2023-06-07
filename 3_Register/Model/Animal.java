package Model;

public abstract class Animal {
    private String  name,
                    commands,
                    birthday;


    public Animal(String name, String commands, String birthday) {
        this.setName(name);
        this.setCommands(commands);
        this.setBirthday(birthday);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCommands() {
        return commands;
    }

    public void setCommands(String commands) {
        this.commands = commands;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
}
