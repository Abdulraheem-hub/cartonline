/*
 * Svix API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * API version: 1.1.1
 */

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// ValidationError Validation errors have their own schema to provide context for invalid requests eg. mismatched types and out of bounds values. There may be any number of these per 422 UNPROCESSABLE ENTITY error.
type ValidationError struct {
	// The location as a [`Vec`] of [`String`]s -- often in the form `[\"body\", \"field_name\"]`, `[\"query\", \"field_name\"]`, etc. They may, however, be arbitrarily deep.
	Loc []string `json:"loc"`
	// The message accompanying the validation error item.
	Msg string `json:"msg"`
	// The type of error, often \"type_error\" or \"value_error\", but sometimes with more context like as \"value_error.number.not_ge\"
	Type string `json:"type"`
}

// NewValidationError instantiates a new ValidationError object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewValidationError(loc []string, msg string, type_ string) *ValidationError {
	this := ValidationError{}
	this.Loc = loc
	this.Msg = msg
	this.Type = type_
	return &this
}

// NewValidationErrorWithDefaults instantiates a new ValidationError object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewValidationErrorWithDefaults() *ValidationError {
	this := ValidationError{}
	return &this
}

// GetLoc returns the Loc field value
func (o *ValidationError) GetLoc() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Loc
}

// GetLocOk returns a tuple with the Loc field value
// and a boolean to check if the value has been set.
func (o *ValidationError) GetLocOk() (*[]string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Loc, true
}

// SetLoc sets field value
func (o *ValidationError) SetLoc(v []string) {
	o.Loc = v
}

// GetMsg returns the Msg field value
func (o *ValidationError) GetMsg() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Msg
}

// GetMsgOk returns a tuple with the Msg field value
// and a boolean to check if the value has been set.
func (o *ValidationError) GetMsgOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Msg, true
}

// SetMsg sets field value
func (o *ValidationError) SetMsg(v string) {
	o.Msg = v
}

// GetType returns the Type field value
func (o *ValidationError) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *ValidationError) GetTypeOk() (*string, bool) {
	if o == nil  {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *ValidationError) SetType(v string) {
	o.Type = v
}

func (o ValidationError) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["loc"] = o.Loc
	}
	if true {
		toSerialize["msg"] = o.Msg
	}
	if true {
		toSerialize["type"] = o.Type
	}
	return json.Marshal(toSerialize)
}

type NullableValidationError struct {
	value *ValidationError
	isSet bool
}

func (v NullableValidationError) Get() *ValidationError {
	return v.value
}

func (v *NullableValidationError) Set(val *ValidationError) {
	v.value = val
	v.isSet = true
}

func (v NullableValidationError) IsSet() bool {
	return v.isSet
}

func (v *NullableValidationError) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableValidationError(val *ValidationError) *NullableValidationError {
	return &NullableValidationError{value: val, isSet: true}
}

func (v NullableValidationError) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableValidationError) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

