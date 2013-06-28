#!/usr/bin/env ruby
if Dir.exist? '.git'
    staged = {}
    not_staged = {}
    `git status -s`.split("\n").each do |line| 
        staged[line[0]] = staged[line[0]].nil? ? 1 : staged[line[0]] + 1 unless line[0] == ' ' || line[1] == '?'
        not_staged[line[1]] = not_staged[line[1]].nil? ? 1 : not_staged[line[1]] + 1 unless line[1] == ' '
    end
    if staged.empty? && not_staged.empty?
    	print '(clear)'
    else
    	print "(#{not_staged.map{|k,v| "#{k}#{v}"}.join('')}|#{staged.map{|k,v| "#{k}#{v}"}.join('')})"
    end
end
