/*
 * Copyright (c) 2011, Daniel Kuschny
 * All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 
 * - Redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE HAXE PROJECT CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA,
 * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
 * THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
package umlgen.model;

/**
 * This class represents a package which can contain datatypes.
 */
class Package 
{
	/**
	 * The full qualified name of the package
	 */
    public var name(default, default) : String;
    
    /**
     * a list of all data types within this package
     */
    public var dataTypes(default, null) : List<ModelType>;
    
    /**
     * Initializes a new instance of the Package class.
     * @param pkg the full qualified package name.
     */
    public function new(pkg:String)
    {
    	name = pkg;
    	dataTypes = new List<ModelType>();
    }
    
    /**
     * Adds a datatype to the package.
     * @param type the type to add
     * @throws string thrown if the package of the specified type does not match
     * the name of this package.
     */
    public function addDataType(type:ModelType)
    {
    	if(type.pkg != name) 
    	   throw ("the package of the type does not match this package");
    	dataTypes.add(type);
    }
}
