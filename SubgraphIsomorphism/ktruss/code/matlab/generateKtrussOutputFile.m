function generateKtrussOutputFile(fname, output_fname)

%inc_mtx_file = '../../../data/ktruss_example.tsv';
inc_mtx_file = fname;

E_expected =  [1  1  0  0  0; ...
               0  1  1  0  0; ...
               1  0  0  1  0; ...
               0  0  1  1  0; ...
               1  0  1  0  0; ...
               0  0  0  0  0];


E = ktruss(inc_mtx_file, 3);
[idx1,idx2,vertex] = find(E);

f = fopen(output_fname, 'w');
for c = 1:size(idx1) 
  fprintf(f,'%d %d %d\n', idx1(c),idx2(c), vertex(c));
end
fclose(f);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph Challenge benchmark
% Developer : Dr. Siddharth Samsi (ssamsi@mit.edu)
%
% MIT
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% (c) <2017> Massachusetts Institute of Technology
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end
