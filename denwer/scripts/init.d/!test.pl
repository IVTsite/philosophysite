#!perl -w
# +-------------------------------------------------------------------------+
# | �������������� ����� Web-������������                                   |
# | ������: ������-3 2013-06-02                                             |
# +-------------------------------------------------------------------------+
# | Copyright (C) 2001-2010 ������� �������.                                |
# +-------------------------------------------------------------------------+
# | ������ ���� �������� ������ ��������� �������� "������-3". �� �� ������ |
# | ������������  ��� � ������������  �����.  ������� ������ ����������� �� |
# | �������������.  ���� �� ������ ������ ��������� � �������� ���,  ������ |
# | ����� ���� �������� �� ��� ����������� � ���������. �������� ������!    |
# +-------------------------------------------------------------------------+
# | �������� ��������: http://denwer.ru                                     |
# | ��������: http://forum.dklab.ru/denwer                                  |
# +-------------------------------------------------------------------------+

package Starters::Mysql;
BEGIN { @INC = "../lib" }
use Net::MySQL8;

my $mysql = Net::MySQL->new(
      hostname => '127.0.0.1',
      database => 'mysql',
      user     => 'root',
      password => '',
      debug    => 1
);
$mysql->_execute_command(Net::MySQL::COMMAND_SHUTDOWN, "");
