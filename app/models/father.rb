class Father < ApplicationRecord
    has_many :children
    belongs_to :occupation
    has_one_attached :avatar


    def occupation_description
        if self.occupation.blank?
            " - "
        else
            self.occupation.description
        end
    end


    def arquivo=(value)
  
        if value.is_a?(String)
            super(value)
        else 
            nome_arquivo = "#{Time.now.to_i}-#{value.original_filename}"
            caminho_do_arquivo = "#{Rails.root}/public/arquivos/"
            caminho_com_arquivo = "#{caminho_do_arquivo}#{nome_arquivo}"

            Dir.mkdir(caminho_do_arquivo) unless Dir.exist?(caminho_do_arquivo)
            File.open(caminho_com_arquivo, "wb") { |f| f.write(value.read)}

            super("/arquivos/#{nome_arquivo}")
        end
    end
end
                                                                                                                                        