Eye.application 'patroni' do
  working_dir '/var/lib/postgresql'
  stdall '/var/log/eye/patroni-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :patroni do
    pid_file '/var/run/patroni.pid'
    start_command 'sudo -u postgres /var/lib/postgresql/patroni.sh'

    daemonize true
    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
