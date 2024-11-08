
# Activité Pratique - Technologie XML

This repository contains solutions for an XML practical exercise focused on managing bank account statements using XML and related technologies.

## Exercice Description

The objective is to develop an application to manage bank account statements. The data is stored in XML files with the following format:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<releve RIB="011112222333344445555666">
  <dateReleve>2021-11-10</dateReleve>
  <solde>14500</solde>
  <operations dateDebut="2021-01-01" dateFin="2021-01-30">
    <operation type="CREDIT" date="2021-01-01" montant="9000" description="Vers Espèce"></operation>
    <operation type="DEBIT" date="2021-01-11" montant="3400" description="Chèque Guichet"></operation>
    <operation type="DEBIT" date="2021-01-15" montant="120" description="Prélèvement Assurence"></operation>
    <operation type="CREDIT" date="2021-01-25" montant="70000" description="Virement .."></operation>
  </operations>
</releve>
```

### Travail demandé

1. **Elaborer la structure graphique de l’arbre XML**
   - Créer une représentation graphique de l’arbre XML de ce document.

2. **Créer un DTD**
   - Développer un DTD pour déclarer la structure de ce document XML.
   - Fournir un fichier XML valide qui respecte ce DTD.

3. **Créer un Schéma XML (XSD)**
   - Créer un schéma XML pour définir la structure de ce document.
   - Fournir un fichier XML valide qui respecte ce schéma.

4. **Créer une feuille de style XSL pour affichage complet**
   - Créer une feuille de style XSL pour afficher toutes les données du document XML en format HTML.
   - Afficher le total des opérations de débit et le total des opérations de crédit.

5. **Créer une feuille de style XSL pour affichage des opérations de type CREDIT**
   - Créer une feuille de style XSL pour afficher uniquement les opérations de type CREDIT en format HTML.

## Project Structure

The repository includes the following files:

- `releve.dtd` - Defines the DTD for the XML document structure.
- `releve.xml` - Sample XML document that validates against the DTD.
- `releve.xsd` - XML Schema defining the document structure.
- `releveXSD.xml` - Sample XML document that validates against the XSD.
- `releveTotal.xsl` - XSL file to display all data in HTML format, including debit and credit totals.
- `releveCreditOnly.xsl` - XSL file to display only "CREDIT" operations in HTML format.

## Author

This repository was created by md-naciri as part of a practical XML exercise.
