from pcpp import CmdPreprocessor


p = CmdPreprocessor(['pcpp', '-o', 'output.sv',
                     '--passthru-defines', '--line-directive','', '--passthru-comments',
                     '/home/liuyunqi/tree/ip_builder/input.sv'])
p.ip_build_prefix = 'DW_'
p.run()
