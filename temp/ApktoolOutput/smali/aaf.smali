.class public Laaf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;

.field b:Laez;

.field protected c:Ljava/util/Map;

.field private d:Lcom/alipay/wandoujia/rg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laaf;->a:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laaf;->c:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private a(Lcom/alipay/wandoujia/sg;Lorg/json/JSONObject;)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v1, "value"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 92
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    iget-object v1, v1, Lade;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 93
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 94
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-lt v10, v13, :cond_0

    .line 114
    return-void

    .line 95
    :cond_0
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    const-string v1, "mini_margin_top"

    invoke-static {v1}, Lg;->d(Ljava/lang/String;)I

    move-result v1

    .line 96
    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    .line 98
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    float-to-int v8, v1

    .line 100
    const-string v1, "component"

    const-string v2, "type"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    .line 101
    invoke-static {v3}, Lafd;->a(Lorg/json/JSONObject;)Lcom/alipay/wandoujia/sh;

    move-result-object v2

    check-cast v2, Lcom/alipay/wandoujia/sg;

    .line 102
    const-string v1, "value"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 103
    invoke-interface {v2, v3}, Lcom/alipay/wandoujia/sg;->a(Lorg/json/JSONObject;)V

    .line 104
    invoke-static {}, Lade;->a()Lade;

    move-result-object v1

    iget-object v1, v1, Lade;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/4 v1, 0x0

    move v9, v1

    :goto_3
    move/from16 v0, v16

    if-lt v9, v0, :cond_3

    .line 105
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/alipay/wandoujia/sg;->a(Lcom/alipay/wandoujia/sh;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Laaf;->c:Ljava/util/Map;

    invoke-interface {v2}, Lcom/alipay/wandoujia/sg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_4
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 99
    :cond_1
    const-string v1, "mini_margin_bottom"

    invoke-static {v1}, Lg;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_1

    .line 100
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v9, v1, :cond_4

    const/4 v1, 0x0

    :goto_5
    float-to-int v7, v1

    const-string v1, "mini_margin_left"

    invoke-static {v1}, Lg;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v5, v1

    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Laaf;->a(Lcom/alipay/wandoujia/sg;Lorg/json/JSONObject;IIIII)V

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_3

    :cond_4
    const-string v1, "mini_margin_right"

    invoke-static {v1}, Lg;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_5

    .line 109
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Laaf;->a(Lcom/alipay/wandoujia/sg;Lorg/json/JSONObject;IIIII)V

    goto :goto_4
.end method

.method private a(Lcom/alipay/wandoujia/sg;Lorg/json/JSONObject;IIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/alipay/wandoujia/sf;->a(Ljava/lang/String;)Lcom/alipay/wandoujia/sf;

    move-result-object v1

    .line 147
    if-nez v1, :cond_0

    .line 148
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no such control type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {v1, v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    invoke-static {v1}, Lafd;->a(Lcom/alipay/wandoujia/sf;)Lcom/alipay/wandoujia/sh;

    move-result-object v0

    check-cast v0, Laez;

    .line 152
    if-eqz v0, :cond_4

    .line 153
    iput-object p1, v0, Laez;->o:Lcom/alipay/wandoujia/sg;

    .line 155
    invoke-virtual {v0, p4, p5, p6, p7}, Laez;->a(IIII)V

    .line 156
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 157
    const/4 v2, -0x1

    iput v2, v0, Laez;->n:I

    .line 159
    :cond_1
    invoke-virtual {v0, p2}, Laez;->a(Lorg/json/JSONObject;)V

    .line 160
    invoke-interface {p1, v0}, Lcom/alipay/wandoujia/sg;->a(Lcom/alipay/wandoujia/sh;)V

    .line 161
    iget-object v2, p0, Laaf;->c:Ljava/util/Map;

    invoke-virtual {v0}, Laez;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Laaf;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v2, p0, Laaf;->b:Laez;

    if-nez v2, :cond_3

    .line 164
    sget-object v2, Lcom/alipay/wandoujia/sf;->c:Lcom/alipay/wandoujia/sf;

    if-eq v1, v2, :cond_2

    .line 165
    sget-object v2, Lcom/alipay/wandoujia/sf;->e:Lcom/alipay/wandoujia/sf;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/wandoujia/sf;->f:Lcom/alipay/wandoujia/sf;

    if-ne v1, v2, :cond_3

    .line 166
    :cond_2
    iput-object v0, p0, Laaf;->b:Laez;

    .line 168
    :cond_3
    iget-object v1, p0, Laaf;->d:Lcom/alipay/wandoujia/rg;

    iput-object v1, v0, Laez;->m:Lcom/alipay/wandoujia/rg;

    .line 169
    return-void

    .line 170
    :cond_4
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Laaf;

    .line 171
    const-string v2, "element type is null,resp data error"

    .line 170
    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alipay/wandoujia/rg;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    if-nez p2, :cond_0

    .line 63
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-class v1, Laaf;

    const-string v2, "data is no blocks"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Laaf;->d:Lcom/alipay/wandoujia/rg;

    .line 66
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 68
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 79
    return-object v4

    .line 69
    :cond_1
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 70
    invoke-static {v5}, Lafd;->a(Lorg/json/JSONObject;)Lcom/alipay/wandoujia/sh;

    move-result-object v0

    check-cast v0, Lcom/alipay/wandoujia/sg;

    .line 72
    const-string v6, "mini_margin_left"

    invoke-static {v6}, Lg;->d(Ljava/lang/String;)I

    move-result v6

    .line 71
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 73
    const-string v7, "mini_margin_right"

    invoke-static {v7}, Lg;->d(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 71
    invoke-interface {v0, v6, v2, v7, v2}, Lcom/alipay/wandoujia/sg;->a(IIII)V

    .line 74
    invoke-interface {v0, v5}, Lcom/alipay/wandoujia/sg;->a(Lorg/json/JSONObject;)V

    .line 75
    invoke-direct {p0, v0, v5}, Laaf;->a(Lcom/alipay/wandoujia/sg;Lorg/json/JSONObject;)V

    .line 76
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v5, p0, Laaf;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/alipay/wandoujia/sg;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
