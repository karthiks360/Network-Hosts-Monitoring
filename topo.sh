# Start Mininet
echo "Creating network topology"
sudo mn --topo single,3

#Create a custom topology
h1 = net.addHost('h1')
h2 = net.addHost('h2')
h3 = net.addHost('h3')
s1 = net.addSwitch('s1')
net.addLink(h1, s1)
net.addLink(h2, s1)
net.addLink(h3, s1)

# Start the network
net.start()

