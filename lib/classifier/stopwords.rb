module Classifier

  module StopWords

    def self.for(language, lang_dir=nil)
      unless STOP_WORDS.has_key?(language)
        STOP_WORDS[language] = load_stopwords(language, lang_dir) || []
      end
      STOP_WORDS[language]
    end

    def self.reset
      STOP_WORDS.clear
    end

    protected

      def self.load_stopwords(language, lang_dir)
        default_dir = File.join(File.dirname(__FILE__), 'stopwords')

        load_file(language, lang_dir) || load_file(language, default_dir) || []
      end

      def self.load_file(language, lang_dir)
        return if lang_dir.nil?

        lang_file = File.join(lang_dir, language)
        if File.exist?(lang_file)
          data = []
          File.open(lang_file, 'r:utf-8') do |f|
            f.each_line do |line|
              line = line.gsub(/#.*/, '').strip
              data << line unless line.empty?
            end
          end
          data unless data.empty?
        end
      end
        
    STOP_WORDS = {}
  end
end
