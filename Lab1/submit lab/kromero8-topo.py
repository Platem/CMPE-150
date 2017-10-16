#!/usr/bin/python
import sys

from mininet.topo import Topo
from mininet.net import Mininet
from mininet.cli import CLI

class Topology(Topo):
	"Basic topology"
	def __init__(self, n=2):
		Topo.__init__(self)
		# Set up topology
		switch = self.addSwitch('s1')
		for i in range(n):
			host = self.addHost('h%s' % (i+1))
			self.addLink(host, switch)

if __name__ == '__main__':
	hosts = 4;
	if len(sys.argv) == 2:
		hosts = int(sys.argv[1])
	topo = Topology(n=hosts)
	net = Mininet( topo=topo )
	net.start()

	CLI(net)

	net.stop()