# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_20_152822) do
  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string "barris"
    t.float "precio_alquiler"
    t.float "precio_venta"
    t.integer "euros_any"
    t.integer "població"
    t.integer "densitat_neta_habha"
    t.integer "activitats_construcció"
    t.integer "activitats_transport"
    t.integer "activitats_transport_emmagatzematge"
    t.integer "activitats_emmagatzematge"
    t.integer "activitats_immobiliàries"
    t.integer "activitats_industrials"
    t.integer "administració"
    t.integer "agències_viatge"
    t.integer "altres"
    t.integer "vending"
    t.integer "altres_equipaments_esportius"
    t.integer "aparells_domèstics"
    t.integer "arranjaments"
    t.integer "arts_gràfiques"
    t.integer "associacions"
    t.integer "autoservei_supermercat"
    t.integer "bars_cibercafè"
    t.integer "bars_especials_amb_actuació_bars_musicals_discoteques_pub"
    t.integer "basars"
    t.integer "begudes"
    t.integer "calçat_pell"
    t.integer "carn_porc"
    t.integer "centres_destètica"
    t.integer "combustibles_carburants"
    t.integer "drogueria_perfumeria"
    t.integer "en_reforma"
    t.integer "ensenyament"
    t.integer "equipaments_culturals_recreatius"
    t.integer "equipaments_religiosos"
    t.integer "esports"
    t.integer "fabricació_tèxtil"
    t.integer "farmàcies_parafarmàcia"
    t.integer "finances_assegurances"
    t.integer "floristeries"
    t.integer "fotografia"
    t.integer "fruites_verdures"
    t.integer "gimnàs_fitnes"
    t.integer "grans_magatzems_hipermercats"
    t.integer "herbolaris_dietètica_nutrició"
    t.integer "informàtica"
    t.integer "joguines_esports"
    t.integer "joieria_rellotgeria_bijuteria"
    t.integer "llibres_diaris_revistes"
    t.integer "locals_buits_en_lloguer"
    t.integer "locals_buits_en_venda"
    t.integer "locals_buits_en_venda_lloguer"
    t.integer "locutoris"
    t.integer "manteniment_neteja_similars"
    t.integer "maquinària"
    t.integer "material_equipament_llar"
    t.integer "merceria"
    t.integer "mobles_articles_fusta_metall"
    t.integer "música"
    t.integer "òptiques"
    t.integer "ous_aus"
    t.integer "pa_pastisseria_làctics"
    t.integer "parament_ferreteria"
    t.integer "peix_marisc"
    t.integer "perruqueries"
    t.integer "plats_preparats_no_degustació"
    t.integer "pàrquings_garatges"
    t.integer "reparacions_electrodomèstics_automòbils"
    t.integer "restaurants"
    t.integer "sanitat_assistència"
    t.integer "segells_monedes_antiguitats"
    t.integer "sense_informació"
    t.integer "sense_informació_havia_tingut_activitat_rètol"
    t.integer "serveis_socials"
    t.integer "serveis_a_les_empreses_oficines"
    t.integer "serveis_menjar_take_away_menjar_ràpid"
    t.integer "serveis_telecomunicacions"
    t.integer "souvenirs"
    t.integer "tabac_articles_fumadors"
    t.integer "tintoreries"
    t.integer "vehicles"
    t.integer "vestir"
    t.integer "veterinaris_mascotes"
    t.integer "xocolateries_geladeries_degustació"
    t.integer "serveis_dallotjament"
    t.integer "serveis_menjar_begudes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
