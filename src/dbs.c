#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "common.h"
#include "cs165_api.h"
#include "dbs.h"
#include "utils.h"
#include "message.h"
#include "persist.h"

#define MASTER_DBS_FILENAME "dbs"

// structure that keeps track of all of the dbs we have in memory
db *dbs = NULL;
size_t num_of_dbs = 0;
size_t allocated_dbs = 0;

db *get_next_allocated_db(void) {
    return get_next_allocated_element(&num_of_dbs, &allocated_dbs, sizeof(db), &dbs);
}

db *get_db_by_name(const char *lookup_name) {
    for (size_t i = 0; i < num_of_dbs; i++)
        if (strcmp(dbs[i].name, lookup_name) == 0)
            return &dbs[i];
    return NULL;
}

table *get_table_from_db_by_name(db *db, const char *tbl_name) {
    if (db == NULL)
        return NULL;

    table *tables = db->tables;
    for ( size_t i = 0; i < db->table_count; i++)
        if (strcmp(tables[i].name, tbl_name) == 0)
            return &tables[i];

    return NULL;
}
table *get_table_by_name(const char *db_name, const char *tbl_name) {
    db *db = get_db_by_name(db_name);
    return get_table_from_db_by_name(db, tbl_name);
}

column *get_column_from_table_by_name(table *tbl, const char *col_name) {
    if (tbl == NULL)
        return NULL;

    column *cols = tbl->cols;
    for (size_t i = 0; i < tbl->col_count; i++)
        if (strcmp(cols[i].name, col_name) == 0)
            return &cols[i];
    return NULL;
}

column *get_column_by_name(const char *db_name, const char *tbl_name, const char *col_name) {
    table *tbl = get_table_by_name(db_name, tbl_name);

    return get_column_from_table_by_name(tbl, col_name);
}

void load_dbs(void) {
    FILE *fp = persist_fopen(MASTER_DBS_FILENAME, "r");
    if (fp == NULL)
        return;
    char buf[NAME_SIZE];

    // first we get the number of dbs
    fgets(buf, NAME_SIZE, fp);
    assert(num_of_dbs == 0);
    num_of_dbs = atoi(buf);

    // now we allocate space for all of them
    dbs = malloc(sizeof(db) * num_of_dbs);
    allocated_dbs = num_of_dbs;

    // finally we load their data
    for (size_t i = 0; i < num_of_dbs; i++) {
        fgets(buf, NAME_SIZE, fp);
        newline_to_null(buf);

        load_db(buf, &(dbs[i]));
    }
    fclose(fp);
}

void persist_dbs(void) {
    FILE *fp = persist_fopen(MASTER_DBS_FILENAME, "w");
    assert(fp != NULL);
    fprintf(fp, "%ld\n", num_of_dbs);

    // load the name of each db
    for (size_t i = 0; i < num_of_dbs; i++) {
        fputs(dbs[i].name, fp);
        fputc('\n', fp);

        persist_db(&dbs[i]);
    }
    fclose(fp);

}

void drop_dbs(void) {
    for (size_t i = 0; i < num_of_dbs; i++)
        drop_db(&dbs[i]);

    if (dbs != NULL)
        free(dbs);
    dbs = NULL;
}
