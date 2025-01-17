module Jekyll
  class BankPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      csv_data = site.data['ifsc_codes']
      banks = csv_data.group_by { |row| row['Bank Name'] }

      banks.each do |bank_name, codes|
        page = Page.new(site, site.source, "_banks", "#{bank_name.downcase.gsub(' ', '-')}.md")
        page.data['layout'] = 'bank'
        page.data['bank_name'] = bank_name
        page.data['ifsc_codes'] = codes
        page.output = true
        site.pages << page
      end
    end
  end
end
