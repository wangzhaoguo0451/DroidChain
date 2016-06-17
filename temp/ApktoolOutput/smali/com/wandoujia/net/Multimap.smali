.class public Lcom/wandoujia/net/Multimap;
.super Ljava/util/LinkedHashMap;
.source "Multimap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/http/NameValuePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final QUERY_DECODER:Leqd;

.field private static final URL_DECODER:Leqd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Leqb;

    invoke-direct {v0}, Leqb;-><init>()V

    sput-object v0, Lcom/wandoujia/net/Multimap;->QUERY_DECODER:Leqd;

    .line 103
    new-instance v0, Leqc;

    invoke-direct {v0}, Leqc;-><init>()V

    sput-object v0, Lcom/wandoujia/net/Multimap;->URL_DECODER:Leqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/net/Multimap;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/wandoujia/net/Multimap;->putAll(Ljava/util/Map;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 50
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/wandoujia/net/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;ZLeqd;)Lcom/wandoujia/net/Multimap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 63
    new-instance v2, Lcom/wandoujia/net/Multimap;

    invoke-direct {v2}, Lcom/wandoujia/net/Multimap;-><init>()V

    .line 64
    if-nez p0, :cond_0

    move-object v0, v2

    .line 81
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 67
    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v0, v5, v3

    .line 68
    const-string v1, "="

    const/4 v7, 0x2

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 69
    aget-object v0, v7, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 70
    const/4 v0, 0x0

    .line 71
    array-length v8, v7

    if-le v8, v9, :cond_1

    .line 72
    aget-object v0, v7, v9

    .line 73
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 75
    :cond_2
    if-eqz p3, :cond_3

    .line 76
    invoke-interface {p3, v1}, Leqd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {p3, v0}, Leqd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_3
    invoke-virtual {v2, v1, v0}, Lcom/wandoujia/net/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 81
    goto :goto_0
.end method

.method public static parseCommaDelimited(Ljava/lang/String;)Lcom/wandoujia/net/Multimap;
    .locals 3
    .parameter

    .prologue
    .line 89
    const-string v0, ","

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/wandoujia/net/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLeqd;)Lcom/wandoujia/net/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static parseQuery(Ljava/lang/String;)Lcom/wandoujia/net/Multimap;
    .locals 3
    .parameter

    .prologue
    .line 100
    const-string v0, "&"

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/net/Multimap;->QUERY_DECODER:Leqd;

    invoke-static {p0, v0, v1, v2}, Lcom/wandoujia/net/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLeqd;)Lcom/wandoujia/net/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static parseSemicolonDelimited(Ljava/lang/String;)Lcom/wandoujia/net/Multimap;
    .locals 3
    .parameter

    .prologue
    .line 85
    const-string v0, ";"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/wandoujia/net/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLeqd;)Lcom/wandoujia/net/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static parseUrlEncoded(Ljava/lang/String;)Lcom/wandoujia/net/Multimap;
    .locals 3
    .parameter

    .prologue
    .line 111
    const-string v0, "&"

    const/4 v1, 0x0

    sget-object v2, Lcom/wandoujia/net/Multimap;->URL_DECODER:Leqd;

    invoke-static {p0, v0, v1, v2}, Lcom/wandoujia/net/Multimap;->parse(Ljava/lang/String;Ljava/lang/String;ZLeqd;)Lcom/wandoujia/net/Multimap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/wandoujia/net/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 35
    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/net/Multimap;->newList()Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/net/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/wandoujia/net/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 28
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-virtual {p0}, Lcom/wandoujia/net/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {p0, v0}, Lcom/wandoujia/net/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 120
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v5, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected newList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/wandoujia/net/Multimap;->newList()Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/net/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method
