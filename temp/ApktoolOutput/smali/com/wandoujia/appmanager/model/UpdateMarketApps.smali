.class public Lcom/wandoujia/appmanager/model/UpdateMarketApps;
.super Ljava/lang/Object;
.source "UpdateMarketApps.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public importantPushFrequency:F

.field public pushFrequency:F

.field public sysApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public userApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->userApps:Ljava/util/List;

    .line 14
    iput-object v1, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->sysApps:Ljava/util/List;

    .line 15
    iput v0, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->pushFrequency:F

    .line 16
    iput v0, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->importantPushFrequency:F

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/wandoujia/appmanager/model/UpdateMarketApps;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    :try_start_0
    new-instance v0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;

    invoke-direct {v0}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;-><init>()V

    .line 37
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v2, "userApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "userApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    const-string v2, "userApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 41
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 42
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->parseFromJsonObj(Lorg/json/JSONObject;)Lcom/wandoujia/appmanager/model/MarketAppInfo;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, v5}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->setUserApps(Ljava/util/List;)V

    .line 46
    :cond_1
    const-string v2, "sysApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "sysApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 47
    const-string v2, "sysApps"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 50
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/wandoujia/appmanager/model/MarketAppInfo;->parseFromJsonObj(Lorg/json/JSONObject;)Lcom/wandoujia/appmanager/model/MarketAppInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v0, v4}, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->setSysApps(Ljava/util/List;)V

    .line 55
    :cond_3
    const-string v1, "pushFrequency"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "pushFrequency"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 56
    const-string v1, "pushFrequency"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    const-string v2, "normal"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->pushFrequency:F

    .line 58
    const-string v2, "important"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->importantPushFrequency:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_4
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getSysApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->sysApps:Ljava/util/List;

    return-object v0
.end method

.method public getUserApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->userApps:Ljava/util/List;

    return-object v0
.end method

.method public setSysApps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->sysApps:Ljava/util/List;

    .line 32
    return-void
.end method

.method public setUserApps(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/model/MarketAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wandoujia/appmanager/model/UpdateMarketApps;->userApps:Ljava/util/List;

    .line 24
    return-void
.end method
