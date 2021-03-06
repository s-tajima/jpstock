# coding: utf-8
$:.unshift(File.dirname(__FILE__)) unless $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
require 'open-uri'
require 'nokogiri'
require 'date'
require 'csv'
require 'jpstock/base'
require 'jpstock/price'
require 'jpstock/historicalprices'
require 'jpstock/brand' # 非推奨
require 'jpstock/sector'
require 'jpstock/quote'
require 'jpstock/nipd'
require 'jpstock/tdnet'
require 'jpstock/edinet'
require 'jpstock/credit'
