require 'twopence'

# this module monkeypatch some basic commands from twopence
module LavandaBasic
  def run(cmd, user = 'root', timeout = 150)
    out, _lo, _rem, code = test_and_store_results_together(cmd, user, timeout)
    raise "FAIL: command  #{cmd} returned #{code}. output : #{out}" if code != 0
    [out, code]
  end
end
