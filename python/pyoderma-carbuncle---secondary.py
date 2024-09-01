# phekb, 2024.

import sys, csv, re

codes = [{"code":"135027","system":"ICD10CM"},{"code":"141089","system":"ICD10CM"},{"code":"4001887","system":"ICD10CM"},{"code":"4028236","system":"ICD10CM"},{"code":"4042997","system":"ICD10CM"},{"code":"4061712","system":"ICD10CM"},{"code":"4063806","system":"ICD10CM"},{"code":"4065976","system":"ICD10CM"},{"code":"4067383","system":"ICD10CM"},{"code":"4199152","system":"ICD10CM"},{"code":"4261626","system":"ICD10CM"},{"code":"4263692","system":"ICD10CM"},{"code":"442638","system":"ICD10CM"},{"code":"444287","system":"ICD10CM"},{"code":"444418","system":"ICD10CM"},{"code":"4001887","system":"ICD10CM"},{"code":"4263692","system":"ICD10CM"},{"code":"4042997","system":"ICD10CM"},{"code":"141089","system":"ICD10CM"},{"code":"4067383","system":"ICD10CM"},{"code":"4261626","system":"ICD10CM"},{"code":"4199152","system":"ICD10CM"},{"code":"442638","system":"ICD10CM"},{"code":"444287","system":"ICD10CM"},{"code":"444418","system":"ICD10CM"},{"code":"4028236","system":"ICD10CM"},{"code":"4065976","system":"ICD10CM"},{"code":"4063806","system":"ICD10CM"},{"code":"135027","system":"ICD10CM"},{"code":"4061712","system":"ICD10CM"},{"code":"135027","system":"ICD10CM"},{"code":"141089","system":"ICD10CM"},{"code":"4001887","system":"ICD10CM"},{"code":"4028236","system":"ICD10CM"},{"code":"4042997","system":"ICD10CM"},{"code":"4061712","system":"ICD10CM"},{"code":"4063806","system":"ICD10CM"},{"code":"4065976","system":"ICD10CM"},{"code":"4067383","system":"ICD10CM"},{"code":"4199152","system":"ICD10CM"},{"code":"4261626","system":"ICD10CM"},{"code":"4263692","system":"ICD10CM"},{"code":"442638","system":"ICD10CM"},{"code":"444287","system":"ICD10CM"},{"code":"444418","system":"ICD10CM"},{"code":"4001887","system":"ICD10CM"},{"code":"4263692","system":"ICD10CM"},{"code":"4042997","system":"ICD10CM"},{"code":"141089","system":"ICD10CM"},{"code":"4067383","system":"ICD10CM"},{"code":"4261626","system":"ICD10CM"},{"code":"4199152","system":"ICD10CM"},{"code":"442638","system":"ICD10CM"},{"code":"444287","system":"ICD10CM"},{"code":"444418","system":"ICD10CM"},{"code":"4028236","system":"ICD10CM"},{"code":"4065976","system":"ICD10CM"},{"code":"4063806","system":"ICD10CM"},{"code":"135027","system":"ICD10CM"},{"code":"4061712","system":"ICD10CM"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('pyoderma-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["pyoderma-carbuncle---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["pyoderma-carbuncle---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["pyoderma-carbuncle---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
