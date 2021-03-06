module cli

fn version_flag(with_abbrev bool) Flag {
	return Flag{
		flag: .bool,
		name: 'version',
		abbrev: if with_abbrev { 'v' } else { '' },
		description: 'Prints version information',
	}
}

fn version_cmd() Command {
	return Command{
		name: 'version'
		description: 'Prints version information',
		execute: version_func,
	}
}

fn version_func(version_cmd Command) {
	cmd := version_cmd.parent
	version := '${cmd.name} v${cmd.version}'
	println(version)
}
