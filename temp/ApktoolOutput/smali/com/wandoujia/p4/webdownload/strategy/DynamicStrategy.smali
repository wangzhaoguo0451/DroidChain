.class public Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;
.super Ljava/lang/Object;
.source "DynamicStrategy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEBUG_STRATEGY_PATH:Ljava/lang/String; = null

.field public static final STRATEGY_DIR:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x2e8876b5ae6545d9L


# instance fields
.field public identity:Ljava/lang/String;

.field public rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "strategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->STRATEGY_DIR:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgxl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "playexp/rules.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->DEBUG_STRATEGY_PATH:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->STRATEGY_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->STRATEGY_DIR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDebugCacheFileIfExist(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->DEBUG_STRATEGY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->DEBUG_STRATEGY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static strategyMatchPatternOnlyOnce(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 240
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 241
    const v2, 0x3f8ccccd

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    const-string v1, "dongting"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mbaidu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mqq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "kugou"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "m163"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "xiami"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private stringMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    .line 162
    :cond_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method private urlMatchPattern(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 121
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;->protocol:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 155
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;->host:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 129
    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getPort()I

    move-result v0

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;->port:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 135
    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 141
    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;->query:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 146
    iget-object v0, p2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;->query:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->stringMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_5
    move v0, v2

    .line 151
    goto :goto_0

    .line 155
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getCacheFile()Ljava/io/File;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->identity:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getUrlRuleIndexInStrategy(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->getUrlRuleIndexInStrategy(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getUrlRuleIndexInStrategy(Ljava/lang/String;Z)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 95
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 114
    :cond_1
    :goto_0
    return v0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    array-length v2, v0

    .line 100
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    .line 101
    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    aget-object v3, v3, v0

    .line 102
    if-eqz v3, :cond_4

    .line 103
    if-eqz p2, :cond_3

    iget-boolean v4, v3, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;->usingInDownload:Z

    if-eqz v4, :cond_4

    .line 107
    :cond_3
    iget-object v3, v3, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;->urlPattern:Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;

    invoke-direct {p0, p1, v3}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->urlMatchPattern(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlPattern;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 114
    goto :goto_0
.end method

.method public useStrategyOnChannel(Lhud;ILjava/lang/String;Ljava/lang/String;)Lhud;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 178
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object p1

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->rules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;

    aget-object v2, v1, p2

    .line 184
    :try_start_0
    invoke-static {p1}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Lhud;)Liaj;

    move-result-object v3

    .line 185
    iget-object v1, v2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;->cacheModifyRules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$ModifyRules;

    array-length v4, v1

    .line 186
    new-array v5, v4, [Ljava/lang/String;

    .line 187
    new-array v6, v4, [Ljava/lang/String;

    .line 189
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    .line 190
    iget-object v7, v2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;->cacheModifyRules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$ModifyRules;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$ModifyRules;->pattern:Ljava/lang/String;

    aput-object v7, v5, v1

    .line 191
    iget-object v7, v2, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$UrlRules;->cacheModifyRules:[Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$ModifyRules;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy$ModifyRules;->replacement:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 193
    aget-object v7, v5, v1

    const-string v8, "{{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v5, v1

    const-string v8, "}}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v6, v1

    const-string v8, "{{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v5, v1

    const-string v8, "}}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 196
    aget-object v7, v5, v1

    aget-object v8, v5, v1

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget-object v9, v5, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 198
    aget-object v8, v6, v1

    aget-object v9, v6, v1

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v6, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 208
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 209
    invoke-virtual {v9, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 211
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 212
    invoke-virtual {v7, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 214
    aget-object v7, v5, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v6, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 189
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 221
    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->identity:Ljava/lang/String;

    iget-object v4, p0, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->version:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/wandoujia/p4/webdownload/strategy/DynamicStrategy;->strategyMatchPatternOnlyOnce(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v3, v1, v5, v6, v2}, Ld;->a(Liaz;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 223
    invoke-static {v3}, Lcom/wandoujia/p4/webdownload/util/ResponseChannelConverter;->a(Liaz;)Lhud;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto/16 :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object p1, v0

    goto/16 :goto_0
.end method
