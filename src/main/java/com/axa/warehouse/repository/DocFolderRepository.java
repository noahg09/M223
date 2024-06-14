package com.axa.warehouse.repository;

import com.axa.warehouse.model.DocFolder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DocFolderRepository extends JpaRepository<DocFolder, Long> {
}