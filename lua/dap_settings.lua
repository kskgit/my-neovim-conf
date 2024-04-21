local dap = require('dap')

dap.configurations.go = {
	{
		type = "delve",
		name = "Debug",
		request = "launch",
		program = "${file}"
	}
}

dap.adapters.delve = {
	type = "server",
	port = "${port}",
	executable = {
		command = "dlv",
		args = {"dap", "-a", "${adapterServer}"},
	}
}

