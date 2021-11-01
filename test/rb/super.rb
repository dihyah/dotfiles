#Classes, Inheritence, Super

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
  @@messages_sent += 1
  end
end

my_message = Message.new("A", "B")

class Email < Message
  def initialize(from, to)
  super.description
  end
end