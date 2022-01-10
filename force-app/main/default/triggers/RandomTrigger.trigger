trigger RandomTrigger on Account (before insert) {
    RandomAccountTrigger.randomAccountInserter(trigger.new);
}