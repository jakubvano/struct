spec('1.2.0') do
	configuration('my-configuration') do
		profile 'general:debug'
		profile 'ios:debug'
		override 'OVERRIDE', '1'
		type 'debug'
	end
	target('my-target') do
		type :application
		source_dir 'support_files/abc'
		configuration do end
	end
	variant('$base') do
		target('my-target') do
			source_dir 123
			i18n_resource_dir 456
			exclude_files_matching 567
			system_reference 678
			script 789
		end
	end
end