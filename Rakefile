require 'net/ssh'


task :fix_do_fqdn, [:address, :fqdn] do |t, args|
  args.with_defaults(:fqdn => args.address)

  Net::SSH.start(args.address, 'root') do |ssh|
    previous_fqdn = ssh.exec!("hostname -f").strip!

    if previous_fqdn == args.fqdn
      puts "FQDN is already fixed"
    else
      puts "Previous FQDN is #{previous_fqdn}"
      ssh.exec!("sed -i \"s/127\\.0\\.0\\.1.*/127.0.0.1 #{args.fqdn} #{args.fqdn.split('.').first} localhost/\" /etc/hosts")
      puts "New FQDN is #{ssh.exec!("hostname -f").strip!}"
    end
  end
end
