require 'test_helper'
require  'telApp'

describe TelApp do
  describe ".ajouter" do
    describe "cas avec aucun argument n'est retourner" do
      it "retourne [] lorsque recoit [] peu importe fichier" do
        TelApp.ajouter( nil, nil, nil,nil )
            .must_be_empty

        TelApp.ajouter( nil, nil, nil, nil)
            .must_be_empty
      end
    end
  end
end
