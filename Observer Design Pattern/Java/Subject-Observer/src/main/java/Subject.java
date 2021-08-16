import java.util.ArrayList;
import java.util.List;

public interface Subject {
    void registerObserver(Observer oberver);
    void removeObserver(Observer observer);
    void notifyObservers(Message message);
}

interface Observer {
    void update(Message message);
}

class Message {}

class ConcreteSubject implements  Subject {
    private List<Observer> observers = new ArrayList<>();
    @Override
    public void registerObserver(Observer oberver) {
        observers.add(oberver);
    }

    @Override
    public void removeObserver(Observer observer) {
        observers.remove(observer);
    }

    @Override
    public void notifyObservers(Message message) {
        for (Observer oberver :
                observers) {
            oberver.update(message);
        }
    }
}

class ConcreteObserverOne implements Observer {
    @Override
    public void update(Message message) {
        //TODO: 获取消息通知，执行自己的逻辑...
        System.out.println("ConcreteObserverOne is notified.");
    }
}

class ConcreteObserverTwo implements Observer {
    @Override
    public void update(Message message) {
        //TODO: 获取消息通知，执行自己的逻辑...
        System.out.println("ConcreteObserverTwo is notified.");
    }
}

class Demo {
    public static void main(String[] args) {
        ConcreteSubject subject = new ConcreteSubject();
        subject.registerObserver(new ConcreteObserverOne());
        subject.registerObserver(new ConcreteObserverTwo());
        subject.notifyObservers(new Message());
    }
}


