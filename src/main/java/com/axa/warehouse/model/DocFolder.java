package com.axa.warehouse.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class DocFolder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private int sortOrder;

    @OneToMany(mappedBy = "docFolder", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Document> documents;
}