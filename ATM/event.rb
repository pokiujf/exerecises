class BankEvent

  attr_reader :logfile
  def initialize
    @logfile = []
  end

  def new_transaction
    @logfile.push []
  end

  def run(object)
    save object.message
    puts object.message
  end

  def show(message)
    save message
    puts message
  end

  def save(message)
    @logfile.last.push message
  end
end