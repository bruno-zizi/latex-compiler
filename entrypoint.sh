#!/bin/bash


export pdf_filename=cdn_design
export output_dir=/data/out/
rm ${output_dir}${pdf_filename}.log || true
rm ${output_dir}${pdf_filename}.out || true
rm ${output_dir}${pdf_filename}.aux || true
rm ${output_dir}${pdf_filename}.toc || true
pdflatex -jobname=${pdf_filename} -interaction=nonstopmode -output-directory=${output_dir} ${pdf_filename}
pdflatex -jobname=${pdf_filename} -interaction=nonstopmode -output-directory=${output_dir} ${pdf_filename}
rm ${output_dir}${pdf_filename}.log || true
rm ${output_dir}${pdf_filename}.out || true
rm ${output_dir}${pdf_filename}.aux || true
rm ${output_dir}${pdf_filename}.toc || true