/**
 * Portions of this software was developed by employees of the National Institute
 * of Standards and Technology (NIST), an agency of the Federal Government and is
 * being made available as a public service. Pursuant to title 17 United States
 * Code Section 105, works of NIST employees are not subject to copyright
 * protection in the United States. This software may be subject to foreign
 * copyright. Permission in the United States and in foreign countries, to the
 * extent that NIST may hold copyright, to use, copy, modify, create derivative
 * works, and distribute this software and its documentation without fee is hereby
 * granted on a non-exclusive basis, provided that this notice and disclaimer
 * of warranty appears in all copies.
 *
 * THE SOFTWARE IS PROVIDED 'AS IS' WITHOUT ANY WARRANTY OF ANY KIND, EITHER
 * EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, ANY WARRANTY
 * THAT THE SOFTWARE WILL CONFORM TO SPECIFICATIONS, ANY IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND FREEDOM FROM
 * INFRINGEMENT, AND ANY WARRANTY THAT THE DOCUMENTATION WILL CONFORM TO THE
 * SOFTWARE, OR ANY WARRANTY THAT THE SOFTWARE WILL BE ERROR FREE.  IN NO EVENT
 * SHALL NIST BE LIABLE FOR ANY DAMAGES, INCLUDING, BUT NOT LIMITED TO, DIRECT,
 * INDIRECT, SPECIAL OR CONSEQUENTIAL DAMAGES, ARISING OUT OF, RESULTING FROM,
 * OR IN ANY WAY CONNECTED WITH THIS SOFTWARE, WHETHER OR NOT BASED UPON WARRANTY,
 * CONTRACT, TORT, OR OTHERWISE, WHETHER OR NOT INJURY WAS SUSTAINED BY PERSONS OR
 * PROPERTY OR OTHERWISE, AND WHETHER OR NOT LOSS WAS SUSTAINED FROM, OR AROSE OUT
 * OF THE RESULTS OF, OR USE OF, THE SOFTWARE OR SERVICES PROVIDED HEREUNDER.
 */

package gov.nist.secauto.scap.validation.candidate;

import gov.nist.secauto.decima.core.classpath.ClasspathHandler;
import gov.nist.secauto.scap.validation.candidate.CanOpener;
import gov.nist.secauto.scap.validation.candidate.CandidateFile;
import gov.nist.secauto.scap.validation.candidate.CandidateFileList;
import gov.nist.secauto.scap.validation.candidate.ZipExpander;
import gov.nist.secauto.scap.validation.component.SCAP11Components;
import gov.nist.secauto.scap.validation.utils.FileUtils;

import org.junit.BeforeClass;
import org.junit.Test;

import java.io.File;
import java.net.URL;
import java.util.List;

import static org.junit.Assert.*;

public class CanOpenerTest {

  @BeforeClass
  public static void initialize() {
    ClasspathHandler.initialize();
  }

  @Test
  public void testZipWithMultipleBundles() throws Exception {

    final CanOpener opener = new CanOpener(1024);
    final File file = new File(
        new URL("classpath:src/test/resources/candidates/scap-11-zip-with-extra-files/Win7-53-1.2.1.0.zip").getFile());

    // if the last set of tests were interrupted, ensure dir is cleaned up
    File checkDir = new File(
        new URL("classpath:src/test/resources/candidates/scap-11-zip-with-extra-files/Win7-53-1.2.1.0").getFile());
    if (checkDir.isDirectory()) {
      new ZipExpander(1024).deleteDirectory(checkDir);
    }

    final CandidateFileList result = opener.findCandidateFiles(file);

    // wrap the rest in try/finally to ensure proper cleanup after the test
    try {
      final List<CandidateFile> candidates = result.getCandidates();
      assertEquals(4, candidates.size());

      // the file was expanded
      final CandidateFile root = candidates.get(0);

      assertTrue(root.getAbsolutePath()
          .endsWith("src" + FileUtils.PATH_SEPERATOR + "test" + FileUtils.PATH_SEPERATOR + "resources"
              + FileUtils.PATH_SEPERATOR + "candidates" + FileUtils.PATH_SEPERATOR + "scap-11-zip-with-extra-files"
              + FileUtils.PATH_SEPERATOR + "Win7-53-1.2.1.0"));
      assertEquals(CandidateFile.Type.UNKNOWN, root.getType());

      // the first file is a sample readme file, not SCAP
      final CandidateFile someFile = candidates.get(1);
      assertEquals("readme.txt", someFile.getName());
      assertEquals(CandidateFile.Type.UNKNOWN, someFile.getType());

      // for the rest of the files
      for (int index = 2; index < candidates.size(); index++) {
        final CandidateFile child = candidates.get(index);
        // the rest of the files should be SCAP bundles
        assertEquals(CandidateFile.Type.SCAP_BUNDLE, child.getType());
      }
      // there are 2 validatable SCAP bundles
      assertEquals(2, result.getValidatableCandidates().size());

      if (result.getValidatableCandidates().get(0).getName().equals("Win7")) {
        // Win7 candidate should contain 6 types
        assertEquals(result.getValidatableCandidates().get(0).getScapContentTypes().size(), 6);
        assertEquals(result.getValidatableCandidates().get(1).getScapContentTypes().size(), 5);
      } else {
        assertEquals(result.getValidatableCandidates().get(0).getScapContentTypes().size(), 5);
        // Win7 candidate should contain 6 types
        assertEquals(result.getValidatableCandidates().get(1).getScapContentTypes().size(), 6);
      }

    } finally {
      // clean up
      opener.deleteExpandedFiles(result);
    }

  }

  @Test
  public void testWindowsZipFromCab() throws Exception {
    final CanOpener opener = new CanOpener(1024);
    final File file = new File(
        new URL("classpath:src/test/resources/candidates/scap-11-zip-with-extra-files/Win7-53-1.2.1.0.zip").getFile());

    // if the last set of tests were interrupted, ensure dir is cleaned up
    File checkDir = new File(
        new URL("classpath:src/test/resources/candidates/scap-11-zip-with-extra-files/Win7-53-1.2.1.0").getFile());
    if (checkDir.isDirectory()) {
      new ZipExpander(1024).deleteDirectory(checkDir);
    }

    final CandidateFileList result = opener.findCandidateFiles(file);
    try {
      final List<CandidateFile> candidates = result.getCandidates();
      assertEquals(4, candidates.size());

      final CandidateFile root = candidates.get(0);
      assertEquals("Win7-53-1.2.1.0.zip", root.getName());
      assertTrue(root.isExpanded());
      assertEquals(CandidateFile.Type.UNKNOWN, root.getType());

      checkScapBundle("Win7", candidates);
      checkScapBundle("Win7-Energy", candidates);

    } finally {
      // clean up
      opener.deleteExpandedFiles(result);
    }
  }

  private void checkScapBundle(final String expectedName, List<CandidateFile> candidates) {

    CandidateFile candidate = null;
    for (CandidateFile candidateFile : candidates) {
      if (candidateFile.getName().equals(expectedName)) {
        candidate = candidateFile;
      }
    }

    assertNotNull(candidate);
    assertEquals(expectedName, candidate.getName());
    assertEquals(CandidateFile.Type.SCAP_BUNDLE, candidate.getType());
    assertTrue(candidate.getScapContentTypes().contains(SCAP11Components.CPE_INVENTORY));
    assertTrue(candidate.getScapContentTypes().contains(SCAP11Components.OVAL_COMPLIANCE));
    assertTrue(candidate.getScapContentTypes().contains(SCAP11Components.XCCDF_BENCHMARK));
    assertTrue(candidate.getScapContentTypes().contains(SCAP11Components.CPE_DICTIONARY));
  }

  @Test
  public void testScap11Zip() throws Exception {

    final CanOpener opener = new CanOpener(1024);
    final File file
        = new File(new URL("classpath:src/test/resources/candidates/scap-11-zip/R1100-scap11.zip").getFile());

    // if the last set of tests were interrupted, ensure dir is cleaned up
    File checkDir = new File(new URL("classpath:src/test/resources/candidates/scap-11-zip/R1100-scap11").getFile());
    if (checkDir.isDirectory()) {
      new ZipExpander(1024).deleteDirectory(checkDir);
    }

    final CandidateFileList result = opener.findCandidateFiles(file);
    try {
      final List<CandidateFile> candidates = result.getCandidates();
      assertEquals(1, candidates.size());

      final CandidateFile bundle = candidates.get(0);
      assertEquals("R1100-scap11.zip", bundle.getName());
      assertTrue(bundle.getAbsolutePath()
          .endsWith("src" + FileUtils.PATH_SEPERATOR + "test" + FileUtils.PATH_SEPERATOR + "resources"
              + FileUtils.PATH_SEPERATOR + "candidates" + FileUtils.PATH_SEPERATOR + "scap-11-zip"
              + FileUtils.PATH_SEPERATOR + "R1100-scap11"));
      assertTrue(bundle.isExpanded());
      assertEquals(CandidateFile.Type.SCAP_BUNDLE, bundle.getType());
    } finally {
      // clean up
      opener.deleteExpandedFiles(result);
    }
  }

  @Test
  public void testScap11ZipExtraFiles() throws Exception {

    final CanOpener opener = new CanOpener(1024);
    final File file = new File(
        new URL("classpath:src/test/resources/candidates/scap-11-zip-with" + "-extra-files/R1100-scap11-extra-file.zip")
            .getFile());

    // if the last set of tests were interrupted, ensure dir is cleaned up
    File checkDir = new File(
        new URL("classpath:src/test/resources/candidates/scap-11-zip-with" + "-extra-files/R1100-scap11-extra-file")
            .getFile());
    if (checkDir.isDirectory()) {
      new ZipExpander(1024).deleteDirectory(checkDir);
    }

    final CandidateFileList result = opener.findCandidateFiles(file);
    try {
      final List<CandidateFile> candidates = result.getCandidates();
      assertEquals(1, candidates.size());

      final CandidateFile bundle = candidates.get(0);
      assertEquals("R1100-scap11-extra-file.zip", bundle.getName());
      assertTrue(bundle.getAbsolutePath()
          .endsWith("src" + FileUtils.PATH_SEPERATOR + "test" + FileUtils.PATH_SEPERATOR + "resources"
              + FileUtils.PATH_SEPERATOR + "candidates" + FileUtils.PATH_SEPERATOR + "scap-11-zip-with-extra-files"
              + FileUtils.PATH_SEPERATOR + "R1100-scap11-extra" + "-file"));
      assertTrue(bundle.isExpanded());
      assertEquals(CandidateFile.Type.SCAP_BUNDLE, bundle.getType());
    } finally {
      // clean up
      opener.deleteExpandedFiles(result);
    }
  }
}
