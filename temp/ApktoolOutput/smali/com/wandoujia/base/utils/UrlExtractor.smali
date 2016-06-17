.class public Lcom/wandoujia/base/utils/UrlExtractor;
.super Ljava/lang/Object;
.source "UrlExtractor.java"


# instance fields
.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    .line 30
    return-void
.end method

.method private extractUrl()Ljava/net/URL;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/wandoujia/base/utils/UrlExtractor;->splitUrlQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 47
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "url"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 63
    :goto_0
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 63
    goto :goto_0
.end method

.method public static getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 114
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This isn\'t a hierarchical URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 123
    if-nez v3, :cond_2

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_2
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 128
    const/4 v0, 0x0

    .line 130
    :cond_3
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 131
    if-ne v1, v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 133
    :cond_4
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 134
    if-gt v2, v1, :cond_5

    if-ne v2, v5, :cond_6

    :cond_5
    move v2, v1

    .line 138
    :cond_6
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v1, 0x1

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 145
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private isContainHost(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static splitUrlQuery(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 99
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_1

    array-length v0, v3

    if-lez v0, :cond_1

    .line 101
    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 102
    const-string v6, "="

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 103
    if-eqz v5, :cond_0

    array-length v6, v5

    if-ne v6, v8, :cond_0

    .line 104
    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    return-object v2
.end method


# virtual methods
.method public extractHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/wandoujia/base/utils/UrlExtractor;->isContainHost(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/wandoujia/base/utils/UrlExtractor;->extractUrl()Ljava/net/URL;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/wandoujia/base/utils/UrlExtractor;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
