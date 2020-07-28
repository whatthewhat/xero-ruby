=begin
#Xero Projects API

#This is the Xero Projects API

The version of the OpenAPI document: 2.2.9
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Projects
  class Project
    # Identifier of the project.
    attr_accessor :project_id
    
    # Identifier of the contact this project was created for.
    attr_accessor :contact_id
    
    # Name of the project.
    attr_accessor :name
    

    attr_accessor :currency_code
    
    # A total of minutes logged against all tasks on the Project.
    attr_accessor :minutes_logged
    

    attr_accessor :total_task_amount
    

    attr_accessor :total_expense_amount
    

    attr_accessor :estimate_amount
    
    # Minutes which have not been invoiced across all chargeable tasks in the project.
    attr_accessor :minutes_to_be_invoiced
    

    attr_accessor :task_amount_to_be_invoiced
    

    attr_accessor :task_amount_invoiced
    

    attr_accessor :expense_amount_to_be_invoiced
    

    attr_accessor :expense_amount_invoiced
    

    attr_accessor :project_amount_invoiced
    

    attr_accessor :deposit
    

    attr_accessor :deposit_applied
    

    attr_accessor :credit_note_amount
    
    # Deadline for the project. UTC Date Time in ISO-8601 format.
    attr_accessor :deadline_utc
    

    attr_accessor :total_invoiced
    

    attr_accessor :total_to_be_invoiced
    

    attr_accessor :estimate
    

    attr_accessor :status
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'project_id' => :'projectId',
        :'contact_id' => :'contactId',
        :'name' => :'name',
        :'currency_code' => :'currencyCode',
        :'minutes_logged' => :'minutesLogged',
        :'total_task_amount' => :'totalTaskAmount',
        :'total_expense_amount' => :'totalExpenseAmount',
        :'estimate_amount' => :'estimateAmount',
        :'minutes_to_be_invoiced' => :'minutesToBeInvoiced',
        :'task_amount_to_be_invoiced' => :'taskAmountToBeInvoiced',
        :'task_amount_invoiced' => :'taskAmountInvoiced',
        :'expense_amount_to_be_invoiced' => :'expenseAmountToBeInvoiced',
        :'expense_amount_invoiced' => :'expenseAmountInvoiced',
        :'project_amount_invoiced' => :'projectAmountInvoiced',
        :'deposit' => :'deposit',
        :'deposit_applied' => :'depositApplied',
        :'credit_note_amount' => :'creditNoteAmount',
        :'deadline_utc' => :'deadlineUtc',
        :'total_invoiced' => :'totalInvoiced',
        :'total_to_be_invoiced' => :'totalToBeInvoiced',
        :'estimate' => :'estimate',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'project_id' => :'String',
        :'contact_id' => :'String',
        :'name' => :'String',
        :'currency_code' => :'CurrencyCode',
        :'minutes_logged' => :'Integer',
        :'total_task_amount' => :'Amount',
        :'total_expense_amount' => :'Amount',
        :'estimate_amount' => :'Amount',
        :'minutes_to_be_invoiced' => :'Integer',
        :'task_amount_to_be_invoiced' => :'Amount',
        :'task_amount_invoiced' => :'Amount',
        :'expense_amount_to_be_invoiced' => :'Amount',
        :'expense_amount_invoiced' => :'Amount',
        :'project_amount_invoiced' => :'Amount',
        :'deposit' => :'Amount',
        :'deposit_applied' => :'Amount',
        :'credit_note_amount' => :'Amount',
        :'deadline_utc' => :'DateTime',
        :'total_invoiced' => :'Amount',
        :'total_to_be_invoiced' => :'Amount',
        :'estimate' => :'Amount',
        :'status' => :'ProjectStatus'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Projects::Project` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Projects::Project`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'minutes_logged')
        self.minutes_logged = attributes[:'minutes_logged']
      end

      if attributes.key?(:'total_task_amount')
        self.total_task_amount = attributes[:'total_task_amount']
      end

      if attributes.key?(:'total_expense_amount')
        self.total_expense_amount = attributes[:'total_expense_amount']
      end

      if attributes.key?(:'estimate_amount')
        self.estimate_amount = attributes[:'estimate_amount']
      end

      if attributes.key?(:'minutes_to_be_invoiced')
        self.minutes_to_be_invoiced = attributes[:'minutes_to_be_invoiced']
      end

      if attributes.key?(:'task_amount_to_be_invoiced')
        self.task_amount_to_be_invoiced = attributes[:'task_amount_to_be_invoiced']
      end

      if attributes.key?(:'task_amount_invoiced')
        self.task_amount_invoiced = attributes[:'task_amount_invoiced']
      end

      if attributes.key?(:'expense_amount_to_be_invoiced')
        self.expense_amount_to_be_invoiced = attributes[:'expense_amount_to_be_invoiced']
      end

      if attributes.key?(:'expense_amount_invoiced')
        self.expense_amount_invoiced = attributes[:'expense_amount_invoiced']
      end

      if attributes.key?(:'project_amount_invoiced')
        self.project_amount_invoiced = attributes[:'project_amount_invoiced']
      end

      if attributes.key?(:'deposit')
        self.deposit = attributes[:'deposit']
      end

      if attributes.key?(:'deposit_applied')
        self.deposit_applied = attributes[:'deposit_applied']
      end

      if attributes.key?(:'credit_note_amount')
        self.credit_note_amount = attributes[:'credit_note_amount']
      end

      if attributes.key?(:'deadline_utc')
        self.deadline_utc = attributes[:'deadline_utc']
      end

      if attributes.key?(:'total_invoiced')
        self.total_invoiced = attributes[:'total_invoiced']
      end

      if attributes.key?(:'total_to_be_invoiced')
        self.total_to_be_invoiced = attributes[:'total_to_be_invoiced']
      end

      if attributes.key?(:'estimate')
        self.estimate = attributes[:'estimate']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          project_id == o.project_id &&
          contact_id == o.contact_id &&
          name == o.name &&
          currency_code == o.currency_code &&
          minutes_logged == o.minutes_logged &&
          total_task_amount == o.total_task_amount &&
          total_expense_amount == o.total_expense_amount &&
          estimate_amount == o.estimate_amount &&
          minutes_to_be_invoiced == o.minutes_to_be_invoiced &&
          task_amount_to_be_invoiced == o.task_amount_to_be_invoiced &&
          task_amount_invoiced == o.task_amount_invoiced &&
          expense_amount_to_be_invoiced == o.expense_amount_to_be_invoiced &&
          expense_amount_invoiced == o.expense_amount_invoiced &&
          project_amount_invoiced == o.project_amount_invoiced &&
          deposit == o.deposit &&
          deposit_applied == o.deposit_applied &&
          credit_note_amount == o.credit_note_amount &&
          deadline_utc == o.deadline_utc &&
          total_invoiced == o.total_invoiced &&
          total_to_be_invoiced == o.total_to_be_invoiced &&
          estimate == o.estimate &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [project_id, contact_id, name, currency_code, minutes_logged, total_task_amount, total_expense_amount, estimate_amount, minutes_to_be_invoiced, task_amount_to_be_invoiced, task_amount_invoiced, expense_amount_to_be_invoiced, expense_amount_invoiced, project_amount_invoiced, deposit, deposit_applied, credit_note_amount, deadline_utc, total_invoiced, total_to_be_invoiced, estimate, status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::Projects.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
