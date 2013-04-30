# encoding: UTF-8

module Geographer
  module Countries
    def self.included(base)
      base.extend( ClassMethods )
    end

    module ClassMethods
      def find_by(property, value)
        COUNTRIES_LIST.each do |country|
          return country if country[property.to_sym] == value
        end
        nil
      end
    end

    # http://en.wikipedia.org/wiki/ISO_3166-1
    COUNTRIES_LIST = [
      {:iso => 'AD', :name => 'ANDORRA', :printable_name => 'Andorra', :iso3 => 'AND', :numcode => '020'},
      {:iso => 'AE', :name => 'UNITED ARAB EMIRATES', :printable_name => 'United Arab Emirates', :iso3 => 'ARE', :numcode => '784'},
      {:iso => 'AF', :name => 'AFGHANISTAN', :printable_name => 'Afghanistan', :iso3 => 'AFG', :numcode => '004'},
      {:iso => 'AG', :name => 'ANTIGUA AND BARBUDA', :printable_name => 'Antigua and Barbuda', :iso3 => 'ATG', :numcode => '028'},
      {:iso => 'AI', :name => 'ANGUILLA', :printable_name => 'Anguilla', :iso3 => 'AIA', :numcode => '660'},
      {:iso => 'AL', :name => 'ALBANIA', :printable_name => 'Albania', :iso3 => 'ALB', :numcode => '008'},
      {:iso => 'AM', :name => 'ARMENIA', :printable_name => 'Armenia', :iso3 => 'ARM', :numcode => '051'},
      {:iso => 'AO', :name => 'ANGOLA', :printable_name => 'Angola', :iso3 => 'AGO', :numcode => '024'},
      {:iso => 'AQ', :name => 'ANTARCTICA', :printable_name => 'Antarctica', :iso3 => 'ATA', :numcode => '010'},
      {:iso => 'AR', :name => 'ARGENTINA', :printable_name => 'Argentina', :iso3 => 'ARG', :numcode => '032'},
      {:iso => 'AS', :name => 'AMERICAN SAMOA', :printable_name => 'American Samoa', :iso3 => 'ASM', :numcode => '016'},
      {:iso => 'AT', :name => 'AUSTRIA', :printable_name => 'Austria', :iso3 => 'AUT', :numcode => '040'},
      {:iso => 'AU', :name => 'AUSTRALIA', :printable_name => 'Australia', :iso3 => 'AUS', :numcode => '036'},
      {:iso => 'AW', :name => 'ARUBA', :printable_name => 'Aruba', :iso3 => 'ABW', :numcode => '533'},
      {:iso => 'AX', :name => 'ÅLAND ISLANDS', :printable_name => 'Åland Islands', :iso3 => 'ALA', :numcode => '248'},
      {:iso => 'AZ', :name => 'AZERBAIJAN', :printable_name => 'Azerbaijan', :iso3 => 'AZE', :numcode => '031'},
      {:iso => 'BA', :name => 'BOSNIA AND HERZEGOVINA', :printable_name => 'Bosnia and Herzegovina', :iso3 => 'BIH', :numcode => '070'},
      {:iso => 'BB', :name => 'BARBADOS', :printable_name => 'Barbados', :iso3 => 'BRB', :numcode => '052'},
      {:iso => 'BD', :name => 'BANGLADESH', :printable_name => 'Bangladesh', :iso3 => 'BGD', :numcode => '050'},
      {:iso => 'BE', :name => 'BELGIUM', :printable_name => 'Belgium', :iso3 => 'BEL', :numcode => '056'},
      {:iso => 'BF', :name => 'BURKINA FASO', :printable_name => 'Burkina Faso', :iso3 => 'BFA', :numcode => '854'},
      {:iso => 'BG', :name => 'BULGARIA', :printable_name => 'Bulgaria', :iso3 => 'BGR', :numcode => '100'},
      {:iso => 'BH', :name => 'BAHRAIN', :printable_name => 'Bahrain', :iso3 => 'BHR', :numcode => '048'},
      {:iso => 'BI', :name => 'BURUNDI', :printable_name => 'Burundi', :iso3 => 'BDI', :numcode => '108'},
      {:iso => 'BJ', :name => 'BENIN', :printable_name => 'Benin', :iso3 => 'BEN', :numcode => '204'},
      {:iso => 'BL', :name => 'SAINT BARTHELEMY', :printable_name => 'Saint Barthélemy', :iso3 => 'BLM', :numcode => '652' },
      {:iso => 'BM', :name => 'BERMUDA', :printable_name => 'Bermuda', :iso3 => 'BMU', :numcode => '060'},
      {:iso => 'BN', :name => 'BRUNEI DARUSSALAM', :printable_name => 'Brunei Darussalam', :iso3 => 'BRN', :numcode => '096'},
      {:iso => 'BO', :name => 'BOLIVIA', :printable_name => 'Bolivia', :iso3 => 'BOL', :numcode => '068'},
      {:iso => 'BQ', :name => 'BONAIRE, SINT EUSTATIUS AND SABA', :printable_name => 'Bonaire, Sint Eustatius and Saba', :iso3 => 'BES', :numcode => '535'},
      {:iso => 'BR', :name => 'BRAZIL', :printable_name => 'Brazil', :iso3 => 'BRA', :numcode => '076'},
      {:iso => 'BS', :name => 'BAHAMAS', :printable_name => 'Bahamas', :iso3 => 'BHS', :numcode => '044'},
      {:iso => 'BT', :name => 'BHUTAN', :printable_name => 'Bhutan', :iso3 => 'BTN', :numcode => '064'},
      {:iso => 'BV', :name => 'BOUVET ISLAND', :printable_name => 'Bouvet Island', :iso3 => 'BVT', :numcode => '074' },
      {:iso => 'BW', :name => 'BOTSWANA', :printable_name => 'Botswana', :iso3 => 'BWA', :numcode => '072'},
      {:iso => 'BY', :name => 'BELARUS', :printable_name => 'Belarus', :iso3 => 'BLR', :numcode => '112'},
      {:iso => 'BZ', :name => 'BELIZE', :printable_name => 'Belize', :iso3 => 'BLZ', :numcode => '084'},
      {:iso => 'CA', :name => 'CANADA', :printable_name => 'Canada', :iso3 => 'CAN', :numcode => '124'},
      {:iso => 'CC', :name => 'COCOS (KEELING) ISLANDS', :printable_name => 'Cocos (Keeling) Islands' },
      {:iso => 'CD', :name => 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', :printable_name => 'Congo, the Democratic Republic of the', :iso3 => 'COD', :numcode => '180'},
      {:iso => 'CF', :name => 'CENTRAL AFRICAN REPUBLIC', :printable_name => 'Central African Republic', :iso3 => 'CAF', :numcode => '140'},
      {:iso => 'CG', :name => 'CONGO', :printable_name => 'Congo', :iso3 => 'COG', :numcode => '178'},
      {:iso => 'CH', :name => 'SWITZERLAND', :printable_name => 'Switzerland', :iso3 => 'CHE', :numcode => '756'},
      {:iso => 'CI', :name => 'COTE D\'IVOIRE', :printable_name => 'Cote D\'Ivoire', :iso3 => 'CIV', :numcode => '384'},
      {:iso => 'CK', :name => 'COOK ISLANDS', :printable_name => 'Cook Islands', :iso3 => 'COK', :numcode => '184'},
      {:iso => 'CL', :name => 'CHILE', :printable_name => 'Chile', :iso3 => 'CHL', :numcode => '152'},
      {:iso => 'CM', :name => 'CAMEROON', :printable_name => 'Cameroon', :iso3 => 'CMR', :numcode => '120'},
      {:iso => 'CN', :name => 'CHINA', :printable_name => 'China', :iso3 => 'CHN', :numcode => '156'},
      {:iso => 'CO', :name => 'COLOMBIA', :printable_name => 'Colombia', :iso3 => 'COL', :numcode => '170'},
      {:iso => 'CR', :name => 'COSTA RICA', :printable_name => 'Costa Rica', :iso3 => 'CRI', :numcode => '188'},
      {:iso => 'CU', :name => 'CUBA', :printable_name => 'Cuba', :iso3 => 'CUB', :numcode => '192'},
      {:iso => 'CV', :name => 'CAPE VERDE', :printable_name => 'Cape Verde', :iso3 => 'CPV', :numcode => '132'},
      {:iso => 'CW', :name => 'CURAÇAO', :printable_name => 'Curaçao', :iso3 => 'CUW', :numcode => '531'},
      {:iso => 'CX', :name => 'CHRISTMAS ISLAND', :printable_name => 'Christmas Island', :iso3 => 'CXR', :numcode => '162' },
      {:iso => 'CY', :name => 'CYPRUS', :printable_name => 'Cyprus', :iso3 => 'CYP', :numcode => '196'},
      {:iso => 'CZ', :name => 'CZECH REPUBLIC', :printable_name => 'Czech Republic', :iso3 => 'CZE', :numcode => '203'},
      {:iso => 'DE', :name => 'GERMANY', :printable_name => 'Germany', :iso3 => 'DEU', :numcode => '276'},
      {:iso => 'DJ', :name => 'DJIBOUTI', :printable_name => 'Djibouti', :iso3 => 'DJI', :numcode => '262'},
      {:iso => 'DK', :name => 'DENMARK', :printable_name => 'Denmark', :iso3 => 'DNK', :numcode => '208'},
      {:iso => 'DM', :name => 'DOMINICA', :printable_name => 'Dominica', :iso3 => 'DMA', :numcode => '212'},
      {:iso => 'DO', :name => 'DOMINICAN REPUBLIC', :printable_name => 'Dominican Republic', :iso3 => 'DOM', :numcode => '214'},
      {:iso => 'DZ', :name => 'ALGERIA', :printable_name => 'Algeria', :iso3 => 'DZA', :numcode => '012'},
      {:iso => 'EC', :name => 'ECUADOR', :printable_name => 'Ecuador', :iso3 => 'ECU', :numcode => '218'},
      {:iso => 'EE', :name => 'ESTONIA', :printable_name => 'Estonia', :iso3 => 'EST', :numcode => '233'},
      {:iso => 'EG', :name => 'EGYPT', :printable_name => 'Egypt', :iso3 => 'EGY', :numcode => '818'},
      {:iso => 'EH', :name => 'WESTERN SAHARA', :printable_name => 'Western Sahara', :iso3 => 'ESH', :numcode => '732'},
      {:iso => 'ER', :name => 'ERITREA', :printable_name => 'Eritrea', :iso3 => 'ERI', :numcode => '232'},
      {:iso => 'ES', :name => 'SPAIN', :printable_name => 'Spain', :iso3 => 'ESP', :numcode => '724'},
      {:iso => 'ET', :name => 'ETHIOPIA', :printable_name => 'Ethiopia', :iso3 => 'ETH', :numcode => '231'},
      {:iso => 'FI', :name => 'FINLAND', :printable_name => 'Finland', :iso3 => 'FIN', :numcode => '246'},
      {:iso => 'FJ', :name => 'FIJI', :printable_name => 'Fiji', :iso3 => 'FJI', :numcode => '242'},
      {:iso => 'FK', :name => 'FALKLAND ISLANDS (MALVINAS)', :printable_name => 'Falkland Islands (Malvinas)', :iso3 => 'FLK', :numcode => '238'},
      {:iso => 'FM', :name => 'MICRONESIA, FEDERATED STATES OF', :printable_name => 'Micronesia, Federated States of', :iso3 => 'FSM', :numcode => '583'},
      {:iso => 'FO', :name => 'FAROE ISLANDS', :printable_name => 'Faroe Islands', :iso3 => 'FRO', :numcode => '234'},
      {:iso => 'FR', :name => 'FRANCE', :printable_name => 'France', :iso3 => 'FRA', :numcode => '250'},
      {:iso => 'GA', :name => 'GABON', :printable_name => 'Gabon', :iso3 => 'GAB', :numcode => '266'},
      {:iso => 'GB', :name => 'UNITED KINGDOM', :printable_name => 'United Kingdom', :iso3 => 'GBR', :numcode => '826'},
      {:iso => 'GD', :name => 'GRENADA', :printable_name => 'Grenada', :iso3 => 'GRD', :numcode => '308'},
      {:iso => 'GE', :name => 'GEORGIA', :printable_name => 'Georgia', :iso3 => 'GEO', :numcode => '268'},
      {:iso => 'GF', :name => 'FRENCH GUIANA', :printable_name => 'French Guiana', :iso3 => 'GUF', :numcode => '254'},
      {:iso => 'GG', :name => 'GUERNSEY', :printable_name => 'Guernsey', :iso3 => 'GGY', :numcode => '831' },
      {:iso => 'GH', :name => 'GHANA', :printable_name => 'Ghana', :iso3 => 'GHA', :numcode => '288'},
      {:iso => 'GI', :name => 'GIBRALTAR', :printable_name => 'Gibraltar', :iso3 => 'GIB', :numcode => '292'},
      {:iso => 'GL', :name => 'GREENLAND', :printable_name => 'Greenland', :iso3 => 'GRL', :numcode => '304'},
      {:iso => 'GM', :name => 'GAMBIA', :printable_name => 'Gambia', :iso3 => 'GMB', :numcode => '270'},
      {:iso => 'GN', :name => 'GUINEA', :printable_name => 'Guinea', :iso3 => 'GIN', :numcode => '324'},
      {:iso => 'GP', :name => 'GUADELOUPE', :printable_name => 'Guadeloupe', :iso3 => 'GLP', :numcode => '312'},
      {:iso => 'GQ', :name => 'EQUATORIAL GUINEA', :printable_name => 'Equatorial Guinea', :iso3 => 'GNQ', :numcode => '226'},
      {:iso => 'GR', :name => 'GREECE', :printable_name => 'Greece', :iso3 => 'GRC', :numcode => '300'},
      {:iso => 'GS', :name => 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', :printable_name => 'South Georgia and the South Sandwich Islands', :iso3 => 'SGS', :numcode => '239'},
      {:iso => 'GT', :name => 'GUATEMALA', :printable_name => 'Guatemala', :iso3 => 'GTM', :numcode => '320'},
      {:iso => 'GU', :name => 'GUAM', :printable_name => 'Guam', :iso3 => 'GUM', :numcode => '316'},
      {:iso => 'GW', :name => 'GUINEA-BISSAU', :printable_name => 'Guinea-Bissau', :iso3 => 'GNB', :numcode => '624'},
      {:iso => 'GY', :name => 'GUYANA', :printable_name => 'Guyana', :iso3 => 'GUY', :numcode => '328'},
      {:iso => 'HK', :name => 'HONG KONG', :printable_name => 'Hong Kong', :iso3 => 'HKG', :numcode => '344'},
      {:iso => 'HM', :name => 'HEARD ISLAND AND MCDONALD ISLANDS', :printable_name => 'Heard Island and McDonald Islands', :iso3 => 'HMD', :numcode => '334' },
      {:iso => 'HN', :name => 'HONDURAS', :printable_name => 'Honduras', :iso3 => 'HND', :numcode => '340'},
      {:iso => 'HR', :name => 'CROATIA', :printable_name => 'Croatia', :iso3 => 'HRV', :numcode => '191'},
      {:iso => 'HT', :name => 'HAITI', :printable_name => 'Haiti', :iso3 => 'HTI', :numcode => '332'},
      {:iso => 'HU', :name => 'HUNGARY', :printable_name => 'Hungary', :iso3 => 'HUN', :numcode => '348'},
      {:iso => 'ID', :name => 'INDONESIA', :printable_name => 'Indonesia', :iso3 => 'IDN', :numcode => '360'},
      {:iso => 'IE', :name => 'IRELAND', :printable_name => 'Ireland', :iso3 => 'IRL', :numcode => '372'},
      {:iso => 'IL', :name => 'ISRAEL', :printable_name => 'Israel', :iso3 => 'ISR', :numcode => '376'},
      {:iso => 'IM', :name => 'ISLE OF MAN', :printable_name => 'Isle of Man', :iso3 => 'IMN', :numcode => '833' },
      {:iso => 'IN', :name => 'INDIA', :printable_name => 'India', :iso3 => 'IND', :numcode => '356'},
      {:iso => 'IO', :name => 'BRITISH INDIAN OCEAN TERRITORY', :printable_name => 'British Indian Ocean Territory', :iso3 => 'IOT', :numcode => '086'},
      {:iso => 'IQ', :name => 'IRAQ', :printable_name => 'Iraq', :iso3 => 'IRQ', :numcode => '368'},
      {:iso => 'IR', :name => 'IRAN, ISLAMIC REPUBLIC OF', :printable_name => 'Iran, Islamic Republic of', :iso3 => 'IRN', :numcode => '364'},
      {:iso => 'IS', :name => 'ICELAND', :printable_name => 'Iceland', :iso3 => 'ISL', :numcode => '352'},
      {:iso => 'IT', :name => 'ITALY', :printable_name => 'Italy', :iso3 => 'ITA', :numcode => '380'},
      {:iso => 'JE', :name => 'JERSEY', :printable_name => 'Jersey', :iso3 => 'JEY', :numcode => '832' },
      {:iso => 'JM', :name => 'JAMAICA', :printable_name => 'Jamaica', :iso3 => 'JAM', :numcode => '388'},
      {:iso => 'JO', :name => 'JORDAN', :printable_name => 'Jordan', :iso3 => 'JOR', :numcode => '400'},
      {:iso => 'JP', :name => 'JAPAN', :printable_name => 'Japan', :iso3 => 'JPN', :numcode => '392'},
      {:iso => 'KE', :name => 'KENYA', :printable_name => 'Kenya', :iso3 => 'KEN', :numcode => '404'},
      {:iso => 'KG', :name => 'KYRGYZSTAN', :printable_name => 'Kyrgyzstan', :iso3 => 'KGZ', :numcode => '417'},
      {:iso => 'KH', :name => 'CAMBODIA', :printable_name => 'Cambodia', :iso3 => 'KHM', :numcode => '116'},
      {:iso => 'KI', :name => 'KIRIBATI', :printable_name => 'Kiribati', :iso3 => 'KIR', :numcode => '296'},
      {:iso => 'KM', :name => 'COMOROS', :printable_name => 'Comoros', :iso3 => 'COM', :numcode => '174'},
      {:iso => 'KN', :name => 'SAINT KITTS AND NEVIS', :printable_name => 'Saint Kitts and Nevis', :iso3 => 'KNA', :numcode => '659'},
      {:iso => 'KP', :name => 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', :printable_name => 'Korea, Democratic People\'s Republic of', :iso3 => 'PRK', :numcode => '408'},
      {:iso => 'KR', :name => 'KOREA, REPUBLIC OF', :printable_name => 'Korea, Republic of', :iso3 => 'KOR', :numcode => '410'},
      {:iso => 'KW', :name => 'KUWAIT', :printable_name => 'Kuwait', :iso3 => 'KWT', :numcode => '414'},
      {:iso => 'KY', :name => 'CAYMAN ISLANDS', :printable_name => 'Cayman Islands', :iso3 => 'CYM', :numcode => '136'},
      {:iso => 'KZ', :name => 'KAZAKHSTAN', :printable_name => 'Kazakhstan', :iso3 => 'KAZ', :numcode => '398'},
      {:iso => 'LA', :name => 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', :printable_name => 'Lao People\'s Democratic Republic', :iso3 => 'LAO', :numcode => '418'},
      {:iso => 'LB', :name => 'LEBANON', :printable_name => 'Lebanon', :iso3 => 'LBN', :numcode => '422'},
      {:iso => 'LC', :name => 'SAINT LUCIA', :printable_name => 'Saint Lucia', :iso3 => 'LCA', :numcode => '662'},
      {:iso => 'LI', :name => 'LIECHTENSTEIN', :printable_name => 'Liechtenstein', :iso3 => 'LIE', :numcode => '438'},
      {:iso => 'LK', :name => 'SRI LANKA', :printable_name => 'Sri Lanka', :iso3 => 'LKA', :numcode => '144'},
      {:iso => 'LR', :name => 'LIBERIA', :printable_name => 'Liberia', :iso3 => 'LBR', :numcode => '430'},
      {:iso => 'LS', :name => 'LESOTHO', :printable_name => 'Lesotho', :iso3 => 'LSO', :numcode => '426'},
      {:iso => 'LT', :name => 'LITHUANIA', :printable_name => 'Lithuania', :iso3 => 'LTU', :numcode => '440'},
      {:iso => 'LU', :name => 'LUXEMBOURG', :printable_name => 'Luxembourg', :iso3 => 'LUX', :numcode => '442'},
      {:iso => 'LV', :name => 'LATVIA', :printable_name => 'Latvia', :iso3 => 'LVA', :numcode => '428'},
      {:iso => 'LY', :name => 'LIBYAN ARAB JAMAHIRIYA', :printable_name => 'Libyan Arab Jamahiriya', :iso3 => 'LBY', :numcode => '434'},
      {:iso => 'MA', :name => 'MOROCCO', :printable_name => 'Morocco', :iso3 => 'MAR', :numcode => '504'},
      {:iso => 'MC', :name => 'MONACO', :printable_name => 'Monaco', :iso3 => 'MCO', :numcode => '492'},
      {:iso => 'MD', :name => 'MOLDOVA, REPUBLIC OF', :printable_name => 'Moldova, Republic of', :iso3 => 'MDA', :numcode => '498'},
      {:iso => 'ME', :name => 'MONTENEGRO', :printable_name => 'Montenegro', :iso3 => 'MNE', :numcode => '499'},
      {:iso => 'MF', :name => 'SAINT MARTIN (FRENCH PART)', :printable_name => 'Saint Martin (French part)', :iso3 => 'MAF', :numcode => '663' },
      {:iso => 'MG', :name => 'MADAGASCAR', :printable_name => 'Madagascar', :iso3 => 'MDG', :numcode => '450'},
      {:iso => 'MH', :name => 'MARSHALL ISLANDS', :printable_name => 'Marshall Islands', :iso3 => 'MHL', :numcode => '584'},
      {:iso => 'MK', :name => 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', :printable_name => 'Macedonia, the Former Yugoslav Republic of', :iso3 => 'MKD', :numcode => '807'},
      {:iso => 'ML', :name => 'MALI', :printable_name => 'Mali', :iso3 => 'MLI', :numcode => '466'},
      {:iso => 'MM', :name => 'MYANMAR', :printable_name => 'Myanmar', :iso3 => 'MMR', :numcode => '104'},
      {:iso => 'MN', :name => 'MONGOLIA', :printable_name => 'Mongolia', :iso3 => 'MNG', :numcode => '496'},
      {:iso => 'MO', :name => 'MACAO', :printable_name => 'Macao', :iso3 => 'MAC', :numcode => '446'},
      {:iso => 'MP', :name => 'NORTHERN MARIANA ISLANDS', :printable_name => 'Northern Mariana Islands', :iso3 => 'MNP', :numcode => '580'},
      {:iso => 'MQ', :name => 'MARTINIQUE', :printable_name => 'Martinique', :iso3 => 'MTQ', :numcode => '474'},
      {:iso => 'MR', :name => 'MAURITANIA', :printable_name => 'Mauritania', :iso3 => 'MRT', :numcode => '478'},
      {:iso => 'MS', :name => 'MONTSERRAT', :printable_name => 'Montserrat', :iso3 => 'MSR', :numcode => '500'},
      {:iso => 'MT', :name => 'MALTA', :printable_name => 'Malta', :iso3 => 'MLT', :numcode => '470'},
      {:iso => 'MU', :name => 'MAURITIUS', :printable_name => 'Mauritius', :iso3 => 'MUS', :numcode => '480'},
      {:iso => 'MV', :name => 'MALDIVES', :printable_name => 'Maldives', :iso3 => 'MDV', :numcode => '462'},
      {:iso => 'MW', :name => 'MALAWI', :printable_name => 'Malawi', :iso3 => 'MWI', :numcode => '454'},
      {:iso => 'MX', :name => 'MEXICO', :printable_name => 'Mexico', :iso3 => 'MEX', :numcode => '484'},
      {:iso => 'MY', :name => 'MALAYSIA', :printable_name => 'Malaysia', :iso3 => 'MYS', :numcode => '458'},
      {:iso => 'MZ', :name => 'MOZAMBIQUE', :printable_name => 'Mozambique', :iso3 => 'MOZ', :numcode => '508'},
      {:iso => 'NA', :name => 'NAMIBIA', :printable_name => 'Namibia', :iso3 => 'NAM', :numcode => '516'},
      {:iso => 'NC', :name => 'NEW CALEDONIA', :printable_name => 'New Caledonia', :iso3 => 'NCL', :numcode => '540'},
      {:iso => 'NE', :name => 'NIGER', :printable_name => 'Niger', :iso3 => 'NER', :numcode => '562'},
      {:iso => 'NF', :name => 'NORFOLK ISLAND', :printable_name => 'Norfolk Island', :iso3 => 'NFK', :numcode => '574'},
      {:iso => 'NG', :name => 'NIGERIA', :printable_name => 'Nigeria', :iso3 => 'NGA', :numcode => '566'},
      {:iso => 'NI', :name => 'NICARAGUA', :printable_name => 'Nicaragua', :iso3 => 'NIC', :numcode => '558'},
      {:iso => 'NL', :name => 'NETHERLANDS', :printable_name => 'Netherlands', :iso3 => 'NLD', :numcode => '528'},
      {:iso => 'NO', :name => 'NORWAY', :printable_name => 'Norway', :iso3 => 'NOR', :numcode => '578'},
      {:iso => 'NP', :name => 'NEPAL', :printable_name => 'Nepal', :iso3 => 'NPL', :numcode => '524'},
      {:iso => 'NR', :name => 'NAURU', :printable_name => 'Nauru', :iso3 => 'NRU', :numcode => '520'},
      {:iso => 'NU', :name => 'NIUE', :printable_name => 'Niue', :iso3 => 'NIU', :numcode => '570'},
      {:iso => 'NZ', :name => 'NEW ZEALAND', :printable_name => 'New Zealand', :iso3 => 'NZL', :numcode => '554'},
      {:iso => 'OM', :name => 'OMAN', :printable_name => 'Oman', :iso3 => 'OMN', :numcode => '512'},
      {:iso => 'PA', :name => 'PANAMA', :printable_name => 'Panama', :iso3 => 'PAN', :numcode => '591'},
      {:iso => 'PE', :name => 'PERU', :printable_name => 'Peru', :iso3 => 'PER', :numcode => '604'},
      {:iso => 'PF', :name => 'FRENCH POLYNESIA', :printable_name => 'French Polynesia', :iso3 => 'PYF', :numcode => '258'},
      {:iso => 'PG', :name => 'PAPUA NEW GUINEA', :printable_name => 'Papua New Guinea', :iso3 => 'PNG', :numcode => '598'},
      {:iso => 'PH', :name => 'PHILIPPINES', :printable_name => 'Philippines', :iso3 => 'PHL', :numcode => '608'},
      {:iso => 'PK', :name => 'PAKISTAN', :printable_name => 'Pakistan', :iso3 => 'PAK', :numcode => '586'},
      {:iso => 'PL', :name => 'POLAND', :printable_name => 'Poland', :iso3 => 'POL', :numcode => '616'},
      {:iso => 'PM', :name => 'SAINT PIERRE AND MIQUELON', :printable_name => 'Saint Pierre and Miquelon', :iso3 => 'SPM', :numcode => '666'},
      {:iso => 'PN', :name => 'PITCAIRN', :printable_name => 'Pitcairn', :iso3 => 'PCN', :numcode => '612'},
      {:iso => 'PR', :name => 'PUERTO RICO', :printable_name => 'Puerto Rico', :iso3 => 'PRI', :numcode => '630'},
      {:iso => 'PS', :name => 'PALESTINE, STATE OF', :printable_name => 'Palestine, State of', :iso3 => 'PSE', :numcode => '275'},
      {:iso => 'PT', :name => 'PORTUGAL', :printable_name => 'Portugal', :iso3 => 'PRT', :numcode => '620'},
      {:iso => 'PW', :name => 'PALAU', :printable_name => 'Palau', :iso3 => 'PLW', :numcode => '585'},
      {:iso => 'PY', :name => 'PARAGUAY', :printable_name => 'Paraguay', :iso3 => 'PRY', :numcode => '600'},
      {:iso => 'QA', :name => 'QATAR', :printable_name => 'Qatar', :iso3 => 'QAT', :numcode => '634'},
      {:iso => 'RE', :name => 'REUNION', :printable_name => 'Reunion', :iso3 => 'REU', :numcode => '638'},
      {:iso => 'RO', :name => 'ROMANIA', :printable_name => 'Romania', :iso3 => 'ROM', :numcode => '642'},
      {:iso => 'RS', :name => 'SERBIA', :printable_name => 'Serbia', :iso3 => 'SRB', :numcode => '688' },
      {:iso => 'RU', :name => 'RUSSIAN FEDERATION', :printable_name => 'Russian Federation', :iso3 => 'RUS', :numcode => '643'},
      {:iso => 'RW', :name => 'RWANDA', :printable_name => 'Rwanda', :iso3 => 'RWA', :numcode => '646'},
      {:iso => 'SA', :name => 'SAUDI ARABIA', :printable_name => 'Saudi Arabia', :iso3 => 'SAU', :numcode => '682'},
      {:iso => 'SB', :name => 'SOLOMON ISLANDS', :printable_name => 'Solomon Islands', :iso3 => 'SLB', :numcode => '090'},
      {:iso => 'SC', :name => 'SEYCHELLES', :printable_name => 'Seychelles', :iso3 => 'SYC', :numcode => '690'},
      {:iso => 'SD', :name => 'SUDAN', :printable_name => 'Sudan', :iso3 => 'SDN', :numcode => '736'},
      {:iso => 'SE', :name => 'SWEDEN', :printable_name => 'Sweden', :iso3 => 'SWE', :numcode => '752'},
      {:iso => 'SG', :name => 'SINGAPORE', :printable_name => 'Singapore', :iso3 => 'SGP', :numcode => '702'},
      {:iso => 'SH', :name => 'SAINT HELENA', :printable_name => 'Saint Helena', :iso3 => 'SHN', :numcode => '654'},
      {:iso => 'SI', :name => 'SLOVENIA', :printable_name => 'Slovenia', :iso3 => 'SVN', :numcode => '705'},
      {:iso => 'SJ', :name => 'SVALBARD AND JAN MAYEN', :printable_name => 'Svalbard and Jan Mayen', :iso3 => 'SJM', :numcode => '744'},
      {:iso => 'SK', :name => 'SLOVAKIA', :printable_name => 'Slovakia', :iso3 => 'SVK', :numcode => '703'},
      {:iso => 'SL', :name => 'SIERRA LEONE', :printable_name => 'Sierra Leone', :iso3 => 'SLE', :numcode => '694'},
      {:iso => 'SM', :name => 'SAN MARINO', :printable_name => 'San Marino', :iso3 => 'SMR', :numcode => '674'},
      {:iso => 'SN', :name => 'SENEGAL', :printable_name => 'Senegal', :iso3 => 'SEN', :numcode => '686'},
      {:iso => 'SO', :name => 'SOMALIA', :printable_name => 'Somalia', :iso3 => 'SOM', :numcode => '706'},
      {:iso => 'SR', :name => 'SURINAME', :printable_name => 'Suriname', :iso3 => 'SUR', :numcode => '740'},
      {:iso => 'ST', :name => 'SAO TOME AND PRINCIPE', :printable_name => 'Sao Tome and Principe', :iso3 => 'STP', :numcode => '678'},
      {:iso => 'SV', :name => 'EL SALVADOR', :printable_name => 'El Salvador', :iso3 => 'SLV', :numcode => '222'},
      {:iso => 'SX', :name => 'SINT MAARTEN (DUTCH PART)', :printable_name => 'Sint Maarten (Dutch part)', :iso3 => 'SXM', :numcode => '534'},
      {:iso => 'SY', :name => 'SYRIAN ARAB REPUBLIC', :printable_name => 'Syrian Arab Republic', :iso3 => 'SYR', :numcode => '760'},
      {:iso => 'SZ', :name => 'SWAZILAND', :printable_name => 'Swaziland', :iso3 => 'SWZ', :numcode => '748'},
      {:iso => 'TC', :name => 'TURKS AND CAICOS ISLANDS', :printable_name => 'Turks and Caicos Islands', :iso3 => 'TCA', :numcode => '796'},
      {:iso => 'TD', :name => 'CHAD', :printable_name => 'Chad', :iso3 => 'TCD', :numcode => '148'},
      {:iso => 'TF', :name => 'FRENCH SOUTHERN TERRITORIES', :printable_name => 'French Southern Territories', :iso3 => 'ATF', :numcode => '260' },
      {:iso => 'TG', :name => 'TOGO', :printable_name => 'Togo', :iso3 => 'TGO', :numcode => '768'},
      {:iso => 'TH', :name => 'THAILAND', :printable_name => 'Thailand', :iso3 => 'THA', :numcode => '764'},
      {:iso => 'TJ', :name => 'TAJIKISTAN', :printable_name => 'Tajikistan', :iso3 => 'TJK', :numcode => '762'},
      {:iso => 'TK', :name => 'TOKELAU', :printable_name => 'Tokelau', :iso3 => 'TKL', :numcode => '772'},
      {:iso => 'TL', :name => 'TIMOR-LESTE', :printable_name => 'Timor-Leste', :iso3 => 'TLS', :numcode => '626'},
      {:iso => 'TM', :name => 'TURKMENISTAN', :printable_name => 'Turkmenistan', :iso3 => 'TKM', :numcode => '795'},
      {:iso => 'TN', :name => 'TUNISIA', :printable_name => 'Tunisia', :iso3 => 'TUN', :numcode => '788'},
      {:iso => 'TO', :name => 'TONGA', :printable_name => 'Tonga', :iso3 => 'TON', :numcode => '776'},
      {:iso => 'TR', :name => 'TURKEY', :printable_name => 'Turkey', :iso3 => 'TUR', :numcode => '792'},
      {:iso => 'TT', :name => 'TRINIDAD AND TOBAGO', :printable_name => 'Trinidad and Tobago', :iso3 => 'TTO', :numcode => '780'},
      {:iso => 'TV', :name => 'TUVALU', :printable_name => 'Tuvalu', :iso3 => 'TUV', :numcode => '798'},
      {:iso => 'TW', :name => 'TAIWAN, PROVINCE OF CHINA', :printable_name => 'Taiwan, Province of China', :iso3 => 'TWN', :numcode => '158'},
      {:iso => 'TZ', :name => 'TANZANIA, UNITED REPUBLIC OF', :printable_name => 'Tanzania, United Republic of', :iso3 => 'TZA', :numcode => '834'},
      {:iso => 'UA', :name => 'UKRAINE', :printable_name => 'Ukraine', :iso3 => 'UKR', :numcode => '804'},
      {:iso => 'UG', :name => 'UGANDA', :printable_name => 'Uganda', :iso3 => 'UGA', :numcode => '800'},
      {:iso => 'UM', :name => 'UNITED STATES MINOR OUTLYING ISLANDS', :printable_name => 'United States Minor Outlying Islands', :iso3 => 'UMI', :numcode => '581' },
      {:iso => 'US', :name => 'UNITED STATES', :printable_name => 'United States', :iso3 => 'USA', :numcode => '840'},
      {:iso => 'UY', :name => 'URUGUAY', :printable_name => 'Uruguay', :iso3 => 'URY', :numcode => '858'},
      {:iso => 'UZ', :name => 'UZBEKISTAN', :printable_name => 'Uzbekistan', :iso3 => 'UZB', :numcode => '860'},
      {:iso => 'VA', :name => 'HOLY SEE (VATICAN CITY STATE)', :printable_name => 'Holy See (Vatican City State)', :iso3 => 'VAT', :numcode => '336'},
      {:iso => 'VC', :name => 'SAINT VINCENT AND THE GRENADINES', :printable_name => 'Saint Vincent and the Grenadines', :iso3 => 'VCT', :numcode => '670'},
      {:iso => 'VE', :name => 'VENEZUELA', :printable_name => 'Venezuela', :iso3 => 'VEN', :numcode => '862'},
      {:iso => 'VG', :name => 'VIRGIN ISLANDS, BRITISH', :printable_name => 'Virgin Islands, British', :iso3 => 'VGB', :numcode => '092'},
      {:iso => 'VI', :name => 'VIRGIN ISLANDS, U.S.', :printable_name => 'Virgin Islands, U.s.', :iso3 => 'VIR', :numcode => '850'},
      {:iso => 'VN', :name => 'VIET NAM', :printable_name => 'Viet Nam', :iso3 => 'VNM', :numcode => '704'},
      {:iso => 'VU', :name => 'VANUATU', :printable_name => 'Vanuatu', :iso3 => 'VUT', :numcode => '548'},
      {:iso => 'WF', :name => 'WALLIS AND FUTUNA', :printable_name => 'Wallis and Futuna', :iso3 => 'WLF', :numcode => '876'},
      {:iso => 'WS', :name => 'SAMOA', :printable_name => 'Samoa', :iso3 => 'WSM', :numcode => '882'},
      {:iso => 'YE', :name => 'YEMEN', :printable_name => 'Yemen', :iso3 => 'YEM', :numcode => '887'},
      {:iso => 'YT', :name => 'MAYOTTE', :printable_name => 'Mayotte', :iso3 => 'MYT', :numcode => '175' },
      {:iso => 'ZA', :name => 'SOUTH AFRICA', :printable_name => 'South Africa', :iso3 => 'ZAF', :numcode => '710'},
      {:iso => 'ZM', :name => 'ZAMBIA', :printable_name => 'Zambia', :iso3 => 'ZMB', :numcode => '894'},
      {:iso => 'ZW', :name => 'ZIMBABWE', :printable_name => 'Zimbabwe', :iso3 => 'ZWE', :numcode => '716'},
    ]
  end
end
