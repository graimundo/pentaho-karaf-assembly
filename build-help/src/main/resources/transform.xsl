<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://karaf.apache.org/xmlns/features-processing/v1.0.0"
                xpath-default-namespace="http://karaf.apache.org/xmlns/features-processing/v1.0.0">

  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

  <!-- Identity template : copy all text nodes, elements and attributes -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>

  <xsl:param name="sourceFilePath"/>

  <xsl:variable name="sourceFile" select="document($sourceFilePath)"/>

  <xsl:template match="/featuresProcessing/blacklistedRepositories">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <xsl:for-each select="$sourceFile/featuresProcessing/blacklistedRepositories/node()">
      <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/featuresProcessing/blacklistedFeatures">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <xsl:for-each select="$sourceFile/featuresProcessing/blacklistedFeatures/node()">
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/featuresProcessing/blacklistedBundles">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <xsl:for-each select="$sourceFile/featuresProcessing/blacklistedBundles/node()">
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/featuresProcessing/overrideBundleDependency">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <xsl:for-each select="$sourceFile/featuresProcessing/overrideBundleDependency/node()">
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/featuresProcessing/bundleReplacements">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <xsl:for-each select="$sourceFile/featuresProcessing/bundleReplacements/node()">
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/featuresProcessing/featureReplacements">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <xsl:for-each select="$sourceFile/featuresProcessing/featureReplacements/node()">
        <xsl:copy>
          <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      </xsl:for-each>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>