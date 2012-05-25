property name : "XDict"
property version : "1.6.1"
property XList : module

(*!@references
XList || help:openbook='XList Help'
XText || help:openbook='XText Help'
*)

(*!@title XDict Reference 
* Version : 1.6.1
* Author : Tetsuro KURITA ((<tkurita@mac.com>))

<!-- begin locale ja -->
XDict は連想配列オブジェクトを生成します。
<!-- begin locale en -->
XDict is an associative list type data collection. 
<!-- end locale -->
*)

(*!@group Constructer Methods *)

(*!
@abstruct
<!-- begin locale ja -->
連想配列オブジェクトのインスタンスを生成します。生成されたオブジェクトには何も値は設定されていません。
<!-- begin locale en -->
Make an empty XDict instance
<!-- end locale -->
@result script object : 
<!-- begin locale ja -->
連想配列オブジェクトのインスタンス
<!-- begin locale en -->
an instance of XDict
<!-- end locale -->
*)
on make
	return make_with_lists({}, {})
end make

(*!
@abstruct
<!-- begin locale ja -->
キー値とそれに対応した値のペア(リスト）のリストから XDict オブジェクトを生成します。
<!-- begin locale en -->
Make a new XDict instance with a list of pair lists of a key and a value.
<!-- end locale -->
@param pairs (list) :<!-- begin locale ja --> キー値と値のペアのリスト
<!-- begin locale en -->a list of pairs of a key and a value<!-- end locale -->
{{key1, value1}, {key2,value2},...}
@result script object : a XDict instance
*)
on make_with_pairs(pairs)
	set key_list to make XList
	set value_list to make XList
	set pair_list to XList's make_with(pairs)
	
	script PairsToLists
		on do(a_pair)
			key_list's push(item 1 of a_pair)
			value_list's push(item 2 of a_pair)
			return true
		end do
	end script
	pair_list's each(PairsToLists)
	return make_with_xlists(key_list, value_list)
end make_with_pairs

(*!
@abstruct
<!-- begin locale ja -->
キー値のリストとそれに対応する値のリストから、XDictオブジェクトを生成します。
<!-- begin locale en -->
Make a XDict instance with a list of keys and a list of values.
<!-- end locale -->

@param key_list (list) :<!-- begin locale ja --> キー値のリスト
<!-- begin locale en -->a list of keys<!-- end locale -->
@param value_list (list) : <!-- begin locale ja -->キー値に対応して設定する値のリスト
<!-- begin locale en -->a list of values corresponding keys.<!-- end locale -->
@result script object : a XDict instance
*)
on make_with_lists(key_list, value_list)
	set key_list to XList's make_with(key_list)
	set value_list to XList's make_with(value_list)
	return make_with_xlists(key_list, value_list)
end make_with_lists

script DefaultComparator
	on do(a_value, target_value)
		considering case
			return a_value is target_value
		end considering
	end do
end script

property _key_comparator : DefaultComparator
property _value_comparator : DefaultComparator

(*!
@abstruct
<!-- begin locale ja -->
キー値を要素とした ((<XList>)) と、それに対応する値を要素としたの ((<XList>)) から、XDict オブジェクトを生成します。
<!-- begin locale en -->
Make a XDict instance with a ((<XList>)) of keys and a ((<XList>)) of values.
<!-- end locale -->
@param key_list (script object) : 
<!-- begin locale ja -->キー値の XList
<!-- begin locale en -->a XList of keys<!-- end locale -->
@param value_list (script object) : <!-- begin locale ja -->キー値に対応して設定する値の XList
<!-- begin locale en -->a XList of values corresponding keys.<!-- end locale -->
@result script object : a XDict instance
*)
on make_with_xlists(key_list, value_list)
	set a_parent to me
	script XDict
		property parent : a_parent
		property _keys : key_list
		property _values : value_list
		property _key_comparator : my _key_comparator
		property _value_comparator : my _value_comparator
	end script
	return XDict
end make_with_xlists

(*!@group Instance Methods *)

on search_value(a_key, key_list, value_list, comparator)
	(*　-- when a value is a record, "is in" operator does not works.
	set exists_key to true
	try
		set exists_key to key_list's has_item(a_key)
	on error
		set exists_key to true
	end try
	
	if not exists_key then
		return missing value
	end if
	*)
	--log "start seatch_value"
	set invalid_key_indexes to {}
	key_list's reset()
	repeat while key_list's has_next()
		set current_key to key_list's next()
		try
			set current_key to contents of current_key
		on error msg number errno
			(* when current_key is script object, constants of ~ cause error *)
			--log msg & "number : " & errno
		end try
		try
			if comparator's do(current_key, a_key) then
				set an_index to key_list's current_index()
				set a_value to value_list's item_at(an_index)
				exit repeat
			end if
		on error msg number -43 -- if _keys have an alias, the original of the alias does not found.
			--log "error in search_value of XDict:" & msg
			set an_index to key_list's current_index()
			key_list's delete_at(an_index)
			value_list's delete_at(an_index)
		end try
		
	end repeat
	try
		return a_value
	on error number -2753
		try
			set msg to "No value associated with " & (a_value as Unicode text)
		on error
			set msg to "No value associated with a key value"
		end try
		error msg number 900
	end try
end search_value

(*!
@abstruct
<!-- begin locale ja -->
キー値に対応した値を取得します。キー値が存在しなければ、error number 900 が発生します。
<!-- begin locale en -->
Obtain a value associated with a specified key. If a key is not in a XDict, error number 900 will be rasied.
<!-- end locale -->
@param a_key (anything) : <!-- begin locale ja -->キー値として設定したオブジェクト
<!-- begin locale en -->a key to obtain its value<!-- end locale -->

@result anything : 
<!-- begin locale ja -->a_key に対応した値として設定されたオブジェクト
<!-- begin locale en -->an object associated with a_key<!-- end locale -->
*)
on value_for_key(a_key)
	return search_value(a_key, my _keys, my _values, my _key_comparator)
end value_for_key

(*!
@abstruct
<!-- begin locale ja -->
値に対応したキー値を取得します。is 演算子で同値になる値が存在しなければ、missing value が返り値になります。
<!-- begin locale en -->
Obtain a key associating a value. If a same value using "is" operator is not found, missing value is returened.
<!-- end locale -->
@description
<!-- begin locale ja -->
同じ値は、必ずしも一つとは限りません。最初に見つかった値のキー値を返します。
<!-- begin locale en -->
The values in XDict is not unique. A found value at the first will be returend.
<!-- end locale -->
@param a_key (anything) : 
<!-- begin locale ja --> 値として設定さているオブジェクト
<!-- begin locale en --> an object used as a value.<!-- end locale -->
@result
anything :<!-- begin locale ja --> a_value のキー値として設定されたオブジェクト
<!-- begin locale en --> an object used as a key.<!-- end locale -->
*)
on key_for_value(a_value)
	return search_value(a_value, my _values, my _keys, my _value_comparator)
end key_for_value

(*!
@abstruct
<!-- begin locale ja -->
キー値に対応する値を設定します。キー値が設定されていなければ、新しいキー値として追加されます。
<!-- begin locale en -->
Set a value associated with a key. If the key is not in the XDict, the key is added.
<!-- end locale -->
@param a_key (anything) : 
<!-- begin locale ja -->キー値となるオブジェクト。is 演算子で比較できる物なら何でも可。
<!-- begin locale en -->an object for a key, which must be able to compare with "is" operator.
<!-- end locale -->
@param a_value (anything) : 
<!-- begin locale ja -->キー値に対応して登録するオブジェクト。
<!-- begin locale en -->an object to set associated with a key.
<!-- end locale -->
*)
on set_value(a_key, a_value)
	try
		search_value(a_key, my _keys, my _values, my _key_comparator)
		set_item of (my _values) for a_value at (my _keys's current_index())
	on error number 900
		my _keys's push(a_key)
		my _values's push(a_value)
	end try
end set_value

(*!
@abstruct
<!-- begin locale ja -->
指定した値がキー値として存在するか調べます。
<!-- begin locale en -->
Chack whether a passed value is icluded as a key value or not.
<!-- end locale -->
@param a_key (anything) :
<!-- begin locale ja -->キー値
<!-- begin locale en -->a key to check<!-- end locale -->
@result boolean : <!-- begin locale ja -->指定したキー値が存在したら true
<!-- begin locale en -->true if a value exists as a key value.<!-- end locale -->
*)
on has_key(a_key)
	try
		if class of a_key is not in {record or list} then
			return my _keys's has_item(a_key)
		else
			error
		end if
	on error
		try
			search_value(a_key, my _keys, my _values, my _key_comparator)
			return true
		on error number 900
			return false
		end try
	end try
end has_key

(*!
@abstruct
<!-- begin locale ja -->
指定したキー値および、それに対応した値を削除します。
<!-- begin locale en -->
Remove a specified key and a associated value.
<!-- end locale -->
@param a_key (anything) :
<!-- begin locale ja -->削除したいキー値
<!-- begin locale en -->a key to remove<!-- end locale -->
@result boolean : 
<!-- begin locale ja -->指定したキー値が存在して、削除に成功したら true
<!-- begin locale en -->true if removing a key and a value is succeeded.<!-- end locale -->
*)
on remove_for_key(a_key)
	--log "start removeItem"
	try
		set old_value to search_value(a_key, my _keys, my _values, my _key_comparator)
	on error number 900
		return false
	end try
	
	set an_index to my _keys's current_index()
	my _keys's delete_at(an_index)
	my _values's delete_at(an_index)
	return true
end remove_for_key

on remove_for_value(a_val)
	--log "start removeItem"
	try
		set old_value to search_value(a_val, my _values, my _keys, my _value_comparator)
	on error number 900
		return false
	end try
	
	set an_index to my _values's current_index()
	my _keys's delete_at(an_index)
	my _values's delete_at(an_index)
	return true
end remove_for_value

(*!@abstruct
<!-- begin locale ja -->
キー値と設定されている値のリストを返します。
<!-- begin locale en -->
Obtain all keys as a list
<!-- end locale -->
@result list
*)
on all_keys()
	return my _keys's all_items()
end all_keys

(*!@abstruct
<!-- begin locale ja -->
キー値に対応する値として設定されている物のリストを返します。
<!-- begin locale en -->
Obtain all values as a list
<!-- end locale -->
@result list
*)
on all_values()
	return my _values's all_items()
end all_values

(*!@abstruct
<!-- begin locale ja -->
設定されているキー値の数を返します。
<!-- begin locale en -->
Obtain all keys as a list
<!-- end locale -->
@result list
*)
on count_keys()
	tell my _keys to count
	return result
end count_keys

(*!
@abstruct
<!-- begin locale ja -->
設定されている キー値と値をすべて消去します。
<!-- begin locale en -->
Remove all keys and values
<!-- end locale -->
*)
on forget()
	set my _values to make XList
	set my _keys to make XList
	return me
end forget

(*!@group Setting and Getting Comparators *)

(*!
@abstruct
<!-- begin locale ja -->
key comparator を設定します。key comparator は、キー値を比較する時に用いられます。
<!-- begin locale en -->
Set a key comparator script to the instance.
<!-- end locale -->
@description
<!-- begin locale ja -->
key comparator script は以下の仕様を満たしている必要があります。
* 二つの positional parameter を持つ do handler を実装している。
* do handler は二つの引数が同値の時に true を返す。それ以外の場合は false を返す。
<!-- begin locale en -->
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
<!-- end locale -->
@param a_script (script object)
@result script object : me
*)
on set_key_comparator(a_script)
	set my _key_comparator to a_script
	return me
end set_key_comparator

(*!
@abstruct
<!-- begin locale ja -->
value comparator を設定します。value comparator は、値を比較する時に用いられます。
<!-- begin locale en -->
Set a value comparator script to the instance.
<!-- end locale -->
@description
<!-- begin locale ja -->
value comparator script は以下の仕様を満たしている必要があります。
* 二つの positional parameter を持つ do handler を実装している。
* do handler は二つの引数が同値の時に true を返す。それ以外の場合は false を返す。
<!-- begin locale en -->
A key comparator script must have following specification.
* do handler which have two positional parameters.
* do handler return true if two argumetns are identical, otherwise return false.
<!-- end locale -->
@param a_script (script object)
@result script object : me
*)
on set_value_comparator(a_script)
	set my _value_comparator to a_script
	return me
end set_value_comparator

(*!@abstruct
<!-- begin locale ja -->
設定されている key comparator を取得します。
<!-- begin locale en -->
Obrain the key comprator of the XDict instance.
<!-- end locale -->
@result script object
*)
on key_comparator()
	return my _key_comparator
end key_comparator

(*!@abstruct
<!-- begin locale ja -->
設定されている value comparator を取得します。
<!-- begin locale en -->
Obrain the value comprator of the XDict instance.
<!-- end locale -->
@result script object
*)
on value_comparator()
	return my _value_comparator
end value_comparator

(*!@group Obtain Iterator Object*)

(*!@abstruct
<!-- begin locale ja -->
XDict のイテレータを取得します。 イテレータオブジェクトは ((<next>))() ハンドラでキーと値のペアリスト {a_key, a_value} を返します。
<!-- begin locale en -->
Make an iterator object of XDict. The iterator object return a pair list of key and a value i.e. {a_key, a_value} with ((<next>))() handler.
<!-- end locale -->
@result script object : An iterator
*)
on iterator()
	set a_dict to me
	set key_list to XList's make_with(my _keys's list_ref())
	set value_list to my _values
	(*!@group Methods of Iterator Object*)
	script XDictIterator
		property _values : value_list
		property _keys : key_list
		
		(*!@abstruct
		<!-- begin locale ja -->
		次のオブジェクトを取得できるかどうか調べます。
		<!-- begin locale en -->
		Check whether next object can be obtained or not.
		<!-- end locale -->
		@result boolean
		*)
		on has_next()
			return _keys's has_next()
		end has_next
		
		(*!@abstruct
		<!-- begin locale ja -->
		次のキー値と対応した値を取得します。
		<!-- begin locale en -->
		Obtain a next pair of a key and its value.
		<!-- end locale -->
		@description
		<!--begin locale ja-->
		次のキー値が取得できない場合は、error number 900 が発生します。
		<!-- begin locale en -->
		If it is fail to obtain next key value, error number 900 will be raised.
		<!--end locale-->
		@result list : { a_key, a_value}
		*)
		on next()
			set a_key to _keys's next()
			(*
			if a_key is missing value then
				return {missing value, missing value}
			end if
			*)
			set a_value to _values's item_at(_keys's current_index())
			return {a_key, a_value}
		end next
		
		(*!@abstruct
		<!-- begin locale ja -->
		((<next>))() で取得するキー値と値のペアを最初に戻します。
		<!-- begin locale en -->
		Make a pair of a key and a value retuned by ((<next>))() revert to first one.
		<!-- end locale -->
		*)
		on reset()
			_keys's reset()
		end reset
	end script
end iterator

(*!@group Loop with Script Object *)

(*!
@abstruct
<!--begin locale ja-->
キー値と値のペアリストのを引数にしてスクリプトオブジェクトの do ハンドラを繰り返し実行します。
<!--begin locale en-->
Perform do handler of given script object with passing pair lists of each key and value as a argument.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script は引数を一つだけとる do ハンドラを実装していなければなりません。do ハンドラの返り値は true もしくは false である必要があります。do ハンドラが false を 返すと処理を中止します。

<!--begin locale en-->
a_script must have a do handler which require only argument. The do handler must return true or false.

When the do handler return false, the process is stoped immediately.
<!--end locale-->
@param
<!--begin locale ja-->
a_script(スクリプトオブジェクト) : 引数を一つだけとる do ハンドラを持っている必要があります。 do ハンドラは真偽値を返さなくてはなりません。
<!--begin locale en-->
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
<!--end locale-->
*)
on each(a_script)
	set an_iterator to iterator()
	repeat while an_iterator's has_next()
		set a_pair to an_iterator's next()
		if (a_script's do(a_pair) is false) then
			exit repeat
		end if
	end repeat
end each

(*!
@abstruct 
<!--begin locale ja-->
キー値と値のペアリストのを引数にしてスクリプトオブジェクトの do ハンドラを繰り返し実行します。
do ハンドラの返り値を要素とした ((<XList>)) が結果になります。
<!--begin locale en-->
Perform do handler of given script object with passing pair lists of each key and value as a argument.　A ((<XList>)) consisting of the results of do handler is returned.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script は引数を一つだけとる do ハンドラを実装していなければなりません。
<!--begin locale en-->
a_script must have a　do handler which require only argument.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> 引数を一つだけとる do ハンドラを持っている必要があります。
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result script object : a XList instance
*)
on map(a_script)
	set out_list to map_as_list(a_script)
	return XList's make_with(out_list)
end map

(*!
@abstruct 
<!--begin locale ja-->
((<map>)) とほぼ同じですが、返り値が AppleScript のリストオブジェクトになります。
<!--begin locale en-->
Almost same to ((<map>)), but a result of this method is AppleScript's list.
<!--end locale-->
@description 
<!--begin locale ja-->
キー値と値のペアリストのを引数にしてスクリプトオブジェクトの do ハンドラを繰り返し実行します。
do ハンドラの返り値を要素とした list が結果になります。

a_script は引数を一つだけとる do ハンドラを実装していなければなりません。
<!--begin locale en-->
Perform do handler of given script object with passing pair lists of each key and value as a argument.　A list consisting of the results of do handler is returned.

a_script must have a　do handler which require only argument.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> 引数を一つだけとる do ハンドラを持っている必要があります。
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->
@result list
*)
on map_as_list(a_script)
	set out_list to {}
	set an_iterator to iterator()
	repeat while an_iterator's has_next()
		set a_pair to an_iterator's next()
		set end of out_list to a_script's do(a_pair)
	end repeat
	return out_list
end map_as_list


(*!@group Debugging *)
(*!
@abstruct
<!-- begin locale ja -->
設定されているキー値と対応する値の一覧を文字列として返します。デバック用に使って下さい。
<!-- begin locale en -->
Dump keys and values in XDict as text. Use this method for debugging.
<!-- end locale -->
@description
<!-- begin locale ja -->
キー値もしくはそれに対応する値に文字列に変換できないオブジェクトが設定されているとエラーが発生します。
<!-- begin locale en -->
If objects which can be coerce to string, error raise.
<!-- end locale -->
@result
string

  "key1 -> Value1 
    key2 -> Value2
    ......."
 
 <!-- begin locale ja -->
というフォーマットでキー値と対応する値の一覧を文字列にされた物が返されます。
<!-- end locale -->
*)
on dump()
	set a_text to ""
	repeat with n from 1 to (my _keys's item_counts())
		set a_text to a_text & (my _keys's item_at(n)) & tab & "->" & tab & (my _values's item_at(n)) & return
	end repeat
	return a_text
end dump

(** private **)

on debug()
	set a_dict to make_with_lists({"key1", "key2"}, {"value1", "value2"})
	--a_dict's remove_for_key("key1")
	log a_dict's dump()
	a_dict
end debug

on run
	--return debug()
	try
		show helpbook (path to me) with recovering InfoPlist
	on error msg number errno
		activate
		display alert (msg & return & errno)
	end try
end run

