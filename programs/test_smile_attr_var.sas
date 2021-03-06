%************************************************************************************************************************;
%* Project    : SMILE – SAS Macros, Intuitive Library Extention 
%* Purpose    : Example program for macro calls of %smile_attr_var
%* Author     : Katja Glass
%* Creation	  : 2021-01-18
%* SAS Version: SAS 9.4
%* License    : MIT (see bottom)
%************************************************************************************************************************;

%LET path = /folders/myshortcuts/git/SMILE-SmartSASMacros/macros;
%INCLUDE "&path/smile_attr_var.sas";

%PUT VARTYPE for name:  %smile_attr_var(sashelp.class, name, vartype);
%PUT VARTYPE for age:   %smile_attr_var(sashelp.class, age, vartype);
%PUT VARLABEL for name: %smile_attr_var(sashelp.class, name, varlabel);
%PUT VARLEN for name:   %smile_attr_var(sashelp.class, name, varlen);

%PUT data does not exist:     %smile_attr_var(dummy, name, varlen);
%PUT variable does not exist: %smile_attr_var(sashelp.class, dummy, varlen);
%PUT invalid attribute:       %smile_attr_var(sashelp.class, name, dummy);

%************************************************************************************************************************;
%**                                                                                                                    **;
%** License: MIT                                                                                                       **;
%**                                                                                                                    **;
%** Copyright (c) 2021 Katja Glass Consulting                                                                          **;
%**                                                                                                                    **;
%** Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated       **;
%** documentation files (the "Software"), to deal in the Software without restriction, including without limitation    **;
%** the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and   **;
%** to permit persons to whom the Software is furnished to do so, subject to the following conditions:                 **;
%**                                                                                                                    **;
%** The above copyright notice and this permission notice shall be included in all copies or substantial portions of   **;
%** the Software.                                                                                                      **;
%**                                                                                                                    **;
%** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO   **;
%** THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE     **;
%** AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,**;
%** TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE     **;
%** SOFTWARE.                                                                                                          **;
%************************************************************************************************************************;
