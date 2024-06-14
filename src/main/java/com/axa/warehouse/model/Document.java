package com.axa.warehouse.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Document {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private int sortOrder;
    private String documentUrl;
    private double size; // size in KB

    @ManyToOne
    @JoinColumn(name = "doc_folder_id", referencedColumnName = "id")
    @JsonIgnore
    private DocFolder docFolder;
}