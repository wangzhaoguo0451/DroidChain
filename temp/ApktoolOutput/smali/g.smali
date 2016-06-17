.class public final Lg;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Lam;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Layl;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static a:Landroid/content/SharedPreferences;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z

.field private static e:Landroid/content/SharedPreferences;

.field private static f:Ldyp;

.field private static g:Landroid/content/SharedPreferences;


# instance fields
.field private synthetic b:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1186
    iput-object p1, p0, Lg;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLandroid/content/Context;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 32
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    .line 57
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 10
    const-string v0, "id"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Lach;Ljava/lang/String;Lorg/json/JSONObject;)Lacz;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 67
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    .line 69
    invoke-static {}, Ladi;->b()Ladi;

    move-result-object v0

    .line 71
    invoke-static {v2, p2}, Ld;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 73
    :try_start_0
    iget-object v4, v0, Ladi;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 74
    const-string v4, "tid"

    iget-object v5, v0, Ladi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :goto_0
    const-string v4, "user_agent"

    iget-object v5, v1, Lade;->b:Lcom/alipay/android/app/d;

    .line 81
    invoke-interface {v5, v0}, Lcom/alipay/android/app/d;->a(Ladi;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v0, "has_alipay"

    .line 83
    iget-object v4, v1, Lade;->a:Landroid/content/Context;

    invoke-static {v4}, Ladd;->c(Landroid/content/Context;)Z

    move-result v4

    .line 82
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 85
    const-string v0, "external_info"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v0, "utdid"

    iget-object v4, v1, Lade;->a:Landroid/content/Context;

    invoke-static {v4}, Ld;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    const-string v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    const-string v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Lcom/alipay/wandoujia/md;

    .line 98
    :goto_2
    if-nez v0, :cond_0

    .line 99
    iget-object v0, v1, Lade;->b:Lcom/alipay/android/app/d;

    invoke-interface {v0}, Lcom/alipay/android/app/d;->v()Lcom/alipay/wandoujia/md;

    move-result-object v0

    .line 102
    :cond_0
    sget-object v1, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    if-ne v0, v1, :cond_8

    .line 103
    invoke-static {v3}, Lg;->b(Lorg/json/JSONObject;)Lacz;

    move-result-object v0

    move-object v7, v0

    .line 107
    :goto_3
    if-eqz v7, :cond_6

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    if-eqz v0, :cond_6

    array-length v9, v8

    move v5, v6

    move-object v0, v2

    move-object v4, v2

    move-object v3, v2

    move-object v1, v2

    :goto_4
    if-lt v5, v9, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "biz_type="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "biz_no="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "trade_no="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "app_userid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/Header;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Msp-Param"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    iput-object v1, p0, Lach;->a:[Lorg/apache/http/Header;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v7, Lacz;->b:Ljava/lang/ref/WeakReference;

    .line 110
    :cond_6
    return-object v7

    .line 77
    :cond_7
    :try_start_1
    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Ladi;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 105
    :cond_8
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    new-instance v1, Lacv;

    invoke-direct {v1}, Lacv;-><init>()V

    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lacv;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/android/app/d;->m()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lacv;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/app/d;->n()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lacv;->c:Ljava/lang/String;

    invoke-interface {v0}, Lcom/alipay/android/app/d;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lacv;->d:Ljava/lang/String;

    new-instance v0, Lacz;

    sget-object v4, Lcom/alipay/wandoujia/md;->a:Lcom/alipay/wandoujia/md;

    invoke-direct {v0, v1, v3, v4}, Lacz;-><init>(Lacv;Lorg/json/JSONObject;Lcom/alipay/wandoujia/md;)V

    move-object v7, v0

    goto/16 :goto_3

    .line 108
    :cond_9
    aget-object v10, v8, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v1, "biz_type"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    move-object v1, v2

    :cond_a
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v3, "biz_no"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object v3, v2

    :cond_b
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v4, "trade_no"

    invoke-virtual {v10, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object v4, v2

    :cond_c
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v0, "app_userid"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, v2

    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_e
    const-string v1, "\""

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    const-string v3, "\""

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_10
    const-string v4, "\""

    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_11
    const-string v0, "\""

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_12
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public static a(Lagp;)Lagi;
    .locals 15
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 28
    new-instance v14, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v14, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 29
    iget-object v0, p0, Lagp;->b:Ljava/util/Map;

    invoke-interface {v14, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    const-string v0, "Date"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    if-eqz v0, :cond_a

    .line 42
    invoke-static {v0}, Ld;->k(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    .line 45
    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    if-eqz v0, :cond_9

    .line 47
    const/4 v1, 0x1

    .line 48
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v0, v6

    move-wide v6, v4

    .line 49
    :goto_1
    array-length v9, v8

    if-ge v0, v9, :cond_5

    .line 50
    aget-object v9, v8, v0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 51
    const-string v10, "no-cache"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "no-store"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_2
    return-object v0

    .line 53
    :cond_1
    const-string v10, "max-age="

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 55
    const/16 v10, 0x8

    :try_start_0
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 49
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_3
    const-string v10, "must-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "proxy-revalidate"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_4
    move-wide v6, v4

    .line 58
    goto :goto_3

    :cond_5
    move-wide v8, v6

    move v6, v1

    .line 63
    :goto_4
    const-string v0, "Expires"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    if-eqz v0, :cond_8

    .line 65
    invoke-static {v0}, Ld;->k(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    .line 68
    :goto_5
    const-string v0, "ETag"

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    if-eqz v6, :cond_7

    .line 73
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v8

    add-long/2addr v4, v12

    .line 79
    :cond_6
    :goto_6
    new-instance v1, Lagi;

    invoke-direct {v1}, Lagi;-><init>()V

    .line 80
    iget-object v6, p0, Lagp;->a:[B

    iput-object v6, v1, Lagi;->a:[B

    .line 81
    iput-object v0, v1, Lagi;->b:Ljava/lang/String;

    .line 82
    iput-wide v4, v1, Lagi;->e:J

    .line 83
    iget-wide v4, v1, Lagi;->e:J

    iput-wide v4, v1, Lagi;->d:J

    .line 84
    iput-wide v2, v1, Lagi;->c:J

    .line 85
    iput-object v14, v1, Lagi;->f:Ljava/util/Map;

    move-object v0, v1

    .line 87
    goto :goto_2

    .line 74
    :cond_7
    cmp-long v1, v2, v4

    if-lez v1, :cond_6

    cmp-long v1, v10, v2

    if-ltz v1, :cond_6

    .line 76
    sub-long v4, v10, v2

    add-long/2addr v4, v12

    goto :goto_6

    .line 56
    :catch_0
    move-exception v9

    goto :goto_3

    :cond_8
    move-wide v10, v4

    goto :goto_5

    :cond_9
    move-wide v8, v4

    goto :goto_4

    :cond_a
    move-wide v2, v4

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    const-string v1, "com.wandoujia.update.toolkit.install"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method public static a(II)Landroid/text/style/DynamicDrawableSpan;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 142
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    int-to-float v1, p0

    .line 146
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 147
    float-to-int v2, v2

    float-to-int v1, v1

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    :cond_0
    new-instance v1, Lhlj;

    invoke-direct {v1, v0}, Lhlj;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 164
    invoke-static {v0, p1}, Lery;->a(Landroid/view/View;I)V

    .line 165
    return-object v0
.end method

.method private static a(Landroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Lgf;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_1

    instance-of v2, v0, Lftr;

    if-eqz v2, :cond_1

    .line 394
    check-cast v0, Lftr;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lftr;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 395
    if-nez v0, :cond_0

    move-object v0, v1

    .line 408
    :goto_0
    return-object v0

    .line 395
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 398
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    add-int v4, v3, v0

    .line 399
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 400
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 402
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 403
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 404
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    move-object v0, v2

    .line 405
    goto :goto_0

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 408
    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/wandoujia/p4/tips/TipsType;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/tips/TipsType;->createTips(Landroid/content/Context;)Lgct;

    move-result-object v2

    .line 51
    if-nez v2, :cond_0

    move-object v0, v1

    .line 54
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/tips/TipsType;->ordinal()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/wandoujia/p4/views/CoverViewContainer;

    if-eqz v1, :cond_2

    invoke-virtual {v2, p0, v0, v3}, Lgct;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/wandoujia/p4/views/CoverViewContainer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/wandoujia/p4/views/CoverViewContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v1, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1, v0}, Ld;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v2, p0, v1, v3}, Lgct;->a(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 136
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 137
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 142
    :goto_1
    return-object v0

    .line 136
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lakd;)Lapc;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakd",
            "<",
            "Lapn;",
            ">;)",
            "Lapc",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lapj;

    invoke-direct {v0}, Lapj;-><init>()V

    .line 31
    new-instance v1, Lapo;

    invoke-direct {v1}, Lapo;-><init>()V

    .line 33
    new-instance v1, Lapc;

    invoke-direct {v1, v0, p0}, Lapc;-><init>(Lapr;Lakd;)V

    .line 36
    return-object v1
.end method

.method public static a(Lapc;)Lapm;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapc",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;)",
            "Lapm",
            "<",
            "Laip;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lapk;

    invoke-direct {v0}, Lapk;-><init>()V

    .line 40
    new-instance v0, Lapl;

    invoke-direct {v0, p0}, Lapl;-><init>(Lapm;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lbaa;
    .locals 2

    new-instance v0, Lbaa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbaa;-><init>(Ljava/lang/Object;B)V

    return-object v0
.end method

.method public static a(Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->NEW_PRODUCT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    and-int/2addr v2, v1

    sget-object v3, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->NEW_PRODUCT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 70
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->NEW_PRODUCT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    goto :goto_0

    .line 71
    :cond_2
    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->GIFT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    and-int/2addr v2, v1

    sget-object v3, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->GIFT:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 72
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->GIFT:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    goto :goto_0

    .line 73
    :cond_3
    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->AWARD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    and-int/2addr v2, v1

    sget-object v3, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->AWARD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 74
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->DESIGN_AWARD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    goto :goto_0

    .line 75
    :cond_4
    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->PUBLISH:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->PUBLISH:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 76
    sget-object v0, Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;->PUBLISH:Lcom/wandoujia/ripple_framework/util/BadgeUtil$BadgeType;

    goto :goto_0
.end method

.method public static a(ILcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->getImageResId()I

    move-result v0

    invoke-static {p0, v0}, Lg;->a(II)Landroid/text/style/DynamicDrawableSpan;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x11

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 136
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 109
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 110
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, ""

    .line 72
    sget-object v1, Lhcn;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 88
    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    const-string v0, "game_packet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, ".packet"

    goto :goto_0

    .line 78
    :cond_0
    const-string v0, ".apk"

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, ".patch"

    goto :goto_0

    .line 84
    :pswitch_2
    const-string v0, ".png"

    goto :goto_0

    .line 87
    :pswitch_3
    const-string v0, ".mp4"

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    if-nez p1, :cond_0

    .line 131
    sget-object p1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lham;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 139
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    .line 143
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 45
    :try_start_0
    const-string v0, "RSA"

    invoke-static {p1}, Lwn;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 47
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 50
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 52
    invoke-virtual {v5}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 53
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_1
    array-length v0, v6

    if-lt v4, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lwn;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 67
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 71
    :goto_1
    return-object v0

    .line 57
    :cond_0
    :try_start_3
    array-length v0, v6

    sub-int/2addr v0, v4

    if-ge v0, v3, :cond_1

    array-length v0, v6

    sub-int/2addr v0, v4

    .line 56
    :goto_2
    invoke-virtual {v5, v6, v4, v0}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 55
    add-int v0, v4, v3

    move v4, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 58
    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    .line 65
    :goto_3
    if-eqz v0, :cond_3

    .line 69
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    :goto_4
    if-eqz v1, :cond_2

    .line 69
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 71
    :cond_2
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_1

    .line 66
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3f

    const/16 v5, 0x2f

    const/16 v4, 0x2e

    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_1

    .line 203
    invoke-static {p3, p5, p6}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;

    move-result-object p2

    .line 211
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    new-instance v0, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;

    const-string v1, "no target Folder"

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    const-wide/16 v0, -0x1

    invoke-static {p3, v0, v1}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {p7, p3}, Lg;->a(Ljava/lang/String;Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 214
    :cond_3
    const-string v0, "file://"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    .line 220
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_5

    .line 221
    new-instance v0, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;

    const-string v1, "unable to make folder"

    invoke-direct {v0, v1}, Lcom/wandoujia/ripple_framework/download/StorageUtil$GenerateSaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 229
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, "[a-zA-Z_0-9\\.\\-\\(\\)]+"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_c

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 231
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 232
    invoke-static {v1}, Lcom/wandoujia/base/utils/FileNameUtil;->removeIllegalChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_7
    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-eq p3, v2, :cond_8

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->PATCH:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne p3, v2, :cond_d

    .line 240
    :cond_8
    invoke-static {p3, p4}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    :cond_9
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 251
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const/16 v0, 0x5f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 229
    :cond_c
    const-string v1, ""

    goto :goto_2

    .line 242
    :cond_d
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_e
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_f

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    const-string v2, "[a-zA-Z_0-9\\.\\-\\(\\)]+"

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_10

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 244
    invoke-static {p3, p4}, Lg;->a(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 242
    :cond_10
    const-string v2, ""

    goto :goto_4

    :cond_11
    move-object v1, p1

    goto/16 :goto_1

    :cond_12
    move-object v1, p0

    goto/16 :goto_2
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {p0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 52
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Not Call on UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v2, Lfwh;

    invoke-direct {v2}, Lfwh;-><init>()V

    .line 45
    invoke-virtual {v2}, Lfwh;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lfxl;

    invoke-static {p0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ","

    invoke-static {p0, v3}, Lcom/wandoujia/base/utils/StringUtil;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfxl;->a:Ljava/lang/String;

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, v0, Lfxl;->b:Z

    const/4 v3, 0x1

    iput v3, v0, Lfxw;->f:I

    .line 48
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lg;->b(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    .line 52
    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 147
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    const-string v1, "folder_message_num"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 150
    return-void
.end method

.method public static a(Lach;Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 234
    const-string v0, "Msp-Param"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 235
    if-eqz p0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 236
    iput-object v0, p0, Lach;->a:[Lorg/apache/http/Header;

    .line 239
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgdt;

    invoke-direct {v1, p0, p1, p2}, Lgdt;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x19

    .line 260
    .line 261
    if-eqz p1, :cond_0

    const-string v0, "url="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "url="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 266
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-static {p0}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v2, -0x1

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 280
    const v2, 0x7f0e0151

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :goto_0
    const v2, 0x7f0e028f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Ldxa;->b:I

    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ldxa;->a()V

    .line 290
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lgdv;

    invoke-direct {v2, v0}, Lgdv;-><init>(Ldxa;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    :cond_2
    :goto_1
    return-void

    .line 283
    :cond_3
    const v2, 0x7f0e012b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 284
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    goto :goto_1

    .line 268
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    instance-of v0, p0, Lcr;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lcr;

    invoke-interface {p0, p1}, Lcr;->setTint(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    instance-of v0, p0, Lcr;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lcr;

    invoke-interface {p0, p1}, Lcr;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    instance-of v0, p0, Lcr;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lcr;

    invoke-interface {p0, p1}, Lcr;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 71
    sget-boolean v0, Lg;->d:Z

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 74
    sput-object v0, Lg;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    sput-boolean v2, Lg;->d:Z

    .line 82
    :cond_0
    sget-object v0, Lg;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 84
    :try_start_1
    sget-object v0, Lg;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :cond_1
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; inflation may have unexpected results."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; inflation may have unexpected results."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p3, p4}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)Leny;

    move-result-object v0

    invoke-virtual {v0, p0}, Leny;->b(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 110
    instance-of v1, p0, Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v1, :cond_2

    .line 111
    check-cast p0, Lcom/wandoujia/image/view/AsyncImageView;

    .line 112
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_1

    .line 113
    invoke-virtual {p0, v0}, Lcom/wandoujia/image/view/AsyncImageView;->a(Z)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/wandoujia/image/view/AsyncImageView;->a()V

    goto :goto_0

    .line 117
    :cond_2
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 118
    check-cast p0, Landroid/view/ViewGroup;

    .line 119
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 121
    invoke-static {v1, p1}, Lg;->a(Landroid/view/View;Z)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static varargs a(Landroid/view/View;[Lcom/wandoujia/p4/tips/TipsType;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 65
    if-eqz p0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 71
    :cond_0
    return-void

    .line 68
    :cond_1
    array-length v7, p1

    move v6, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, p1, v6

    .line 69
    invoke-virtual {v0}, Lcom/wandoujia/p4/tips/TipsType;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, v0, Lcom/wandoujia/p4/views/CoverViewContainer;

    if-eqz v2, :cond_7

    invoke-static {v0, v1}, Lg;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move v2, v3

    move v4, v3

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgct;

    if-eqz v1, :cond_3

    if-nez v4, :cond_2

    iget-boolean v1, v1, Lgct;->b:Z

    if-eqz v1, :cond_4

    :cond_2
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move v4, v3

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_8

    const/4 v1, 0x4

    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {v1, p0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 68
    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_8
    move v1, v3

    .line 69
    goto :goto_3
.end method

.method public static a(Landroid/widget/AbsListView;)V
    .locals 2
    .parameter

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    const v0, 0x7f0c002d

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->setTag(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 241
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 124
    invoke-static {}, Leny;->b()Leny;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 125
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 290
    const-string v0, "client_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "client_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v1, "tid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lade;->a()Lade;

    move-result-object v2

    iget-object v2, v2, Lade;->a:Landroid/content/Context;

    .line 297
    invoke-static {}, Ladi;->b()Ladi;

    move-result-object v3

    .line 298
    iput-object v1, v3, Ladi;->b:Ljava/lang/String;

    .line 299
    iput-object v0, v3, Ladi;->c:Ljava/lang/String;

    .line 300
    invoke-virtual {v3, v2}, Ladi;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(ZLjava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static varargs a(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-static {p0, v0, v1, p1, p2}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "MicroMsg.SDK.MMessageAct"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_2

    invoke-virtual {v1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_mmessage_sdkVersion"

    const v4, 0x21020001

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "_mmessage_appPackage"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_mmessage_content"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "_mmessage_checksum"

    invoke-static {p3, v2}, Lg;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "MicroMsg.SDK.MMessageAct"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send mm message, intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcby;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "MicroMsg.SDK.MMessageAct"

    invoke-static {v1}, Lcby;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 14
    const-string v0, "anim"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static b(Lorg/json/JSONObject;)Lacz;
    .locals 3
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    .line 136
    new-instance v1, Lacv;

    invoke-direct {v1}, Lacv;-><init>()V

    .line 137
    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lacv;->a(Ljava/lang/String;)V

    .line 138
    const-string v0, "com.alipay.mobilecashier"

    iput-object v0, v1, Lacv;->b:Ljava/lang/String;

    .line 139
    const-string v0, "/cashier/main"

    iput-object v0, v1, Lacv;->c:Ljava/lang/String;

    .line 140
    const-string v0, "3.0.0"

    iput-object v0, v1, Lacv;->d:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    .line 142
    if-eqz p0, :cond_0

    .line 145
    :try_start_0
    const-string v0, "new_client_key"

    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v0, "app_key"

    const-string v2, "2013122500002449"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    new-instance v0, Lacz;

    sget-object v2, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    invoke-direct {v0, v1, p0, v2}, Lacz;-><init>(Lacv;Lorg/json/JSONObject;Lcom/alipay/wandoujia/md;)V

    .line 153
    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 151
    invoke-static {v0, p1}, Lery;->a(Landroid/view/View;I)V

    .line 152
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 44
    invoke-static {}, Lg;->o()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 46
    if-eq v1, v2, :cond_0

    .line 47
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 49
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 50
    if-eq v1, v2, :cond_1

    .line 51
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Linux "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 121
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->badge:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 93
    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->SPREAD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    and-int/2addr v2, v1

    sget-object v3, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->SPREAD:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 94
    sget-object v2, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->SPREAD:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_2
    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->VERIFIED:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    and-int/2addr v1, v2

    sget-object v2, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->VERIFIED:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 97
    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/model/GoldenCardModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/model/GoldenCardModel;

    .line 63
    new-instance v3, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    .line 64
    new-instance v4, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/model/GoldenCardModel;->getApp()Lcom/wandoujia/entities/app/AppLiteInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/entities/app/AppLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/AppDetail$Builder;->package_name(Ljava/lang/String;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v4

    .line 66
    new-instance v5, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v5, v4}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 67
    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BANNER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 68
    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->INTRODUCTION:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 69
    invoke-virtual {v0}, Lcom/wandoujia/p4/model/GoldenCardModel;->getId()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->id(Ljava/lang/Long;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 70
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    new-instance v5, Lcom/wandoujia/api/proto/Image$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Image$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/model/GoldenCardModel;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Image$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/api/proto/Image$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/Image$Builder;->build()Lcom/wandoujia/api/proto/Image;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->cover(Ljava/util/List;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 73
    invoke-virtual {v0}, Lcom/wandoujia/p4/model/GoldenCardModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 74
    invoke-virtual {v0}, Lcom/wandoujia/p4/model/GoldenCardModel;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 75
    new-instance v4, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/wandoujia/p4/model/GoldenCardModel;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 76
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v3}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    move-object v0, v1

    .line 78
    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-static {p1}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10000001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Z)V
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static b(ZLjava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    const-string v0, "color"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37
    :cond_0
    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, "https"

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 140
    const-string v1, "-1;-1"

    .line 144
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 145
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 148
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public static c(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter

    .prologue
    .line 158
    invoke-static {p0}, Lg;->b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;->VERIFIED:Lcom/wandoujia/ripple_framework/util/BadgeUtil$SubBadgeType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const v1, 0x21020001

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "mMcShCsTr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ld;->d([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    const-string v0, "dimen"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4039

    .line 165
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 166
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 169
    packed-switch v3, :pswitch_data_0

    .line 167
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :pswitch_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4050400000000000L

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 173
    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 176
    :pswitch_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v8

    const-wide v6, 0x4058400000000000L

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 177
    long-to-int v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 180
    :pswitch_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static d(Z)V
    .locals 4
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    const-string v1, "game_shortcut_generated"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    if-eqz p0, :cond_0

    .line 61
    const-string v1, "game_shortcut_generated_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    :cond_0
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 64
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 373
    if-nez p0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 376
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 377
    invoke-static {}, Lg;->p()I

    move-result v3

    const/16 v4, 0x11

    if-ge v3, v4, :cond_2

    .line 379
    :try_start_0
    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 381
    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 388
    :cond_2
    :try_start_1
    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 390
    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 383
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)F
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    return v0
.end method

.method public static e(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    const-string v0, "drawable"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e()Lacz;
    .locals 5

    .prologue
    .line 38
    new-instance v1, Lacv;

    invoke-direct {v1}, Lacv;-><init>()V

    .line 39
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->b:Lcom/alipay/android/app/d;

    .line 40
    invoke-interface {v0}, Lcom/alipay/android/app/d;->h()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lacv;->a(Ljava/lang/String;)V

    .line 41
    const-string v0, "com.alipay.mobilecashier"

    iput-object v0, v1, Lacv;->b:Ljava/lang/String;

    .line 42
    const-string v0, "/device/findAccount"

    iput-object v0, v1, Lacv;->c:Ljava/lang/String;

    .line 43
    const-string v0, "3.0.0"

    iput-object v0, v1, Lacv;->d:Ljava/lang/String;

    .line 45
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    .line 46
    invoke-static {}, Ladi;->b()Ladi;

    move-result-object v2

    .line 47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_0
    iget-object v4, v2, Ladi;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const-string v4, "tid"

    iget-object v2, v2, Ladi;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :goto_0
    const-string v2, "utdid"

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    invoke-static {v0}, Ld;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "app_key"

    const-string v2, "2013122500002449"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v0, "new_client_key"

    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_1
    new-instance v0, Lacz;

    sget-object v2, Lcom/alipay/wandoujia/md;->b:Lcom/alipay/wandoujia/md;

    invoke-direct {v0, v1, v3, v2}, Lacz;-><init>(Lacv;Lorg/json/JSONObject;Lcom/alipay/wandoujia/md;)V

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    invoke-static {}, Ladi;->d()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ladi;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    invoke-static {v0}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 214
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    const-string v1, "folder_suggestion_updated"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 217
    return-void
.end method

.method public static f()I
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid version number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbml;->a()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    const-string v0, "layout"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgdr;

    invoke-direct {v1, p0}, Lgdr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

.method public static f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 50
    invoke-static {}, Lg;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    const-string v1, "IS_LAUNCHER_IN_WIHTELIST"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 53
    return-void
.end method

.method public static g(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    const-string v0, "string"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "game_shortcut_generated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 320
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v2

    .line 323
    :cond_1
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 324
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 325
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 329
    instance-of v0, v1, Landroid/widget/AbsListView;

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 333
    const v0, 0x7f0c002d

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 336
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 338
    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-eq v1, v3, :cond_0

    :cond_3
    invoke-static {v0, v2}, Lg;->a(Landroid/widget/AbsListView;I)V

    const/4 v2, 0x1

    goto :goto_0

    .line 342
    :cond_4
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 343
    check-cast v1, Landroid/view/ViewGroup;

    .line 344
    instance-of v0, v1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_5

    .line 346
    check-cast v1, Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Lg;->a(Landroid/support/v4/view/ViewPager;)Landroid/view/View;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2

    .line 348
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move v0, v2

    .line 352
    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 353
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 354
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static h()I
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_message_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    const-string v0, "style"

    invoke-static {p0, v0}, Lg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given String is empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public static i()Z
    .locals 3

    .prologue
    .line 210
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_suggestion_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static j()Z
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lg;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "folder_local_game_loaded"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static k()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 240
    sget-object v0, Lg;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wan-user-prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lg;->e:Landroid/content/SharedPreferences;

    .line 244
    :cond_0
    sget-object v0, Lg;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/String;)Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;
    .locals 3
    .parameter

    .prologue
    .line 40
    new-instance v0, Ldyr;

    invoke-direct {v0}, Ldyr;-><init>()V

    .line 42
    :try_start_0
    invoke-static {}, Lg;->q()Ldyp;

    move-result-object v1

    iput-object p0, v0, Ldyr;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ldyr;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-class v2, Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;

    invoke-virtual {v1, v0, v2}, Ldyp;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/GameRecommendModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Lcom/wandoujia/launcher/launcher/models/RecommendListModel;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ldyq;

    invoke-direct {v0}, Ldyq;-><init>()V

    .line 76
    :try_start_0
    invoke-static {}, Lg;->q()Ldyp;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v0, Ldyt;->a:I

    const/16 v2, 0xb4

    iput v2, v0, Ldyt;->b:I

    invoke-virtual {v0}, Ldyt;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-class v2, Lcom/wandoujia/launcher/launcher/models/RecommendListModel;

    invoke-virtual {v1, v0, v2}, Ldyp;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/launcher/models/RecommendListModel;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m()J
    .locals 4

    .prologue
    .line 36
    invoke-static {}, Legx;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lg;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "zero_flow_download_lower_limit"

    const-wide/32 v2, 0xf00000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 40
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public static n()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 310
    invoke-static {}, Lcom/wandoujia/base/storage/StorageManager;->getInstance()Lcom/wandoujia/base/storage/StorageManager;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/wandoujia/base/storage/StorageManager;->getExternalStorageDirectory(J)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lham;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 324
    goto :goto_0
.end method

.method private static o()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 60
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    .line 61
    const-string v2, "/proc/version"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    .line 60
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 65
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 68
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v0, "Unavailable"

    .line 102
    :goto_0
    return-object v0

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 66
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 102
    :catch_0
    move-exception v0

    const-string v0, "Unavailable"

    goto :goto_0

    .line 88
    :cond_0
    :try_start_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    if-ge v1, v3, :cond_1

    .line 91
    const-string v0, "Unavailable"

    goto :goto_0

    .line 93
    :cond_1
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method private static p()I
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    .line 474
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 476
    :try_start_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 482
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static declared-synchronized q()Ldyp;
    .locals 3

    .prologue
    .line 28
    const-class v1, Lg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lg;->f:Ldyp;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ldyp;

    invoke-static {}, Legx;->d()Lcom/wandoujia/rpc/http/client/DataApi;

    move-result-object v2

    invoke-direct {v0, v2}, Ldyp;-><init>(Lcom/wandoujia/rpc/http/client/DataApi;)V

    sput-object v0, Lg;->f:Ldyp;

    .line 31
    :cond_0
    sget-object v0, Lg;->f:Ldyp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized r()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 29
    const-class v1, Lg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lg;->g:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "com.wandoujia.phoenix2"

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lg;->g:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    sget-object v0, Lg;->g:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lg;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
