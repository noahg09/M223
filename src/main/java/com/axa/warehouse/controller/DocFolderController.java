package com.axa.warehouse.controller;

import com.axa.warehouse.ExeptionHandler.ResourceNotFoundException;
import com.axa.warehouse.model.DocFolder;
import com.axa.warehouse.model.Document;
import com.axa.warehouse.repository.DocFolderRepository;
import com.axa.warehouse.repository.DocumentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/docFolders")
public class DocFolderController {

    @Autowired
    private DocFolderRepository docFolderRepository;

    @Autowired
    private DocumentRepository documentRepository;

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping
    public List<DocFolder> getAllFolders() {
        return docFolderRepository.findAll();
    }

    @PostMapping
    public DocFolder createFolder(@RequestBody DocFolder docFolder) {
        return docFolderRepository.save(docFolder);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteFolder(@PathVariable Long id) {
        if (!docFolderRepository.existsById(id)) {
            throw new ResourceNotFoundException("DocFolder with id " + id + " not found");
        }
        docFolderRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/{id}/documents")
    public List<Document> getFolderDocuments(@PathVariable Long id) {
        if (!docFolderRepository.existsById(id)) {
            throw new ResourceNotFoundException("DocFolder with id " + id + " not found");
        }
        return documentRepository.findByDocFolderId(id);
    }

    @PostMapping("/{id}/documents")
    public Document addDocumentToFolder(@PathVariable Long id, @RequestBody Document document) {
        return docFolderRepository.findById(id).map(docFolder -> {
            document.setDocFolder(docFolder);
            return documentRepository.save(document);
        }).orElseThrow(() -> new ResourceNotFoundException("DocFolder with id " + id + " not found"));
    }

    @CrossOrigin(origins = "http://localhost:3000")
    @GetMapping("/{id}/totalSize")
    public double getTotalSize(@PathVariable Long id) {
        if (!docFolderRepository.existsById(id)) {
            throw new ResourceNotFoundException("DocFolder with id " + id + " not found");
        }
        return documentRepository.findByDocFolderId(id).stream()
                .mapToDouble(Document::getSize)
                .sum();
    }
}