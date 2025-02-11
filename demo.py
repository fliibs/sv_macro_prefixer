from pcpp import CmdPreprocessor


p = CmdPreprocessor(['pcpp', '-o', 'output.sv',
                     '--passthru-defines', '--line-directive','', '--passthru-comments',
                     'input.sv'])
p.ip_build_prefix = 'DW_'
p.run()
