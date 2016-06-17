.class public Lcom/wandoujia/p4/app/detail/model/CommentSummary;
.super Ljava/lang/Object;
.source "CommentSummary.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x28a6c14662471d4L


# instance fields
.field private comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app/detail/model/CommentJson;",
            ">;"
        }
    .end annotation
.end field

.field private count:I

.field private enjoySummary:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

.field private savedComment:Lcom/wandoujia/p4/app/detail/model/CommentJson;

.field private target:Ljava/lang/String;

.field private user:Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->savedComment:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->user:Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->comments:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->enjoySummary:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/wandoujia/p4/app/detail/model/CommentJson;Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;Ljava/util/List;Lcom/wandoujia/p4/app/detail/model/EnjoySummary;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/wandoujia/p4/app/detail/model/CommentJson;",
            "Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app/detail/model/CommentJson;",
            ">;",
            "Lcom/wandoujia/p4/app/detail/model/EnjoySummary;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/CommentJson;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->savedComment:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 20
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->user:Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->comments:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/EnjoySummary;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->enjoySummary:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    .line 32
    iput p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->count:I

    .line 33
    iput-object p2, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->target:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->savedComment:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 35
    iput-object p4, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->user:Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;

    .line 36
    iput-object p5, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->comments:Ljava/util/List;

    .line 37
    iput-object p6, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->enjoySummary:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    .line 38
    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/wandoujia/p4/app/detail/model/CommentSummary;
    .locals 6
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;-><init>()V

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->parseFromJsonObject(Lorg/json/JSONObject;)Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    move-result-object v1

    .line 72
    const-string v2, "comments"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "comments"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    new-instance v3, Lorg/json/JSONArray;

    const-string v2, "comments"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 77
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-class v5, Lcom/wandoujia/p4/app/detail/model/CommentJson;

    invoke-static {v0, v5}, Lcom/wandoujia/base/utils/JsonSerializer;->fromJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 79
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 82
    :cond_0
    iput-object v4, v1, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->comments:Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 86
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static parseFromJsonObject(Lorg/json/JSONObject;)Lcom/wandoujia/p4/app/detail/model/CommentSummary;
    .locals 1
    .parameter

    .prologue
    .line 92
    const-class v0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/JsonSerializer;->fromJsonObject(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;

    return-object v0
.end method


# virtual methods
.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app/detail/model/CommentJson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->count:I

    return v0
.end method

.method public getEnjoySummary()Lcom/wandoujia/p4/app/detail/model/EnjoySummary;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->enjoySummary:Lcom/wandoujia/p4/app/detail/model/EnjoySummary;

    return-object v0
.end method

.method public getSavedComment()Lcom/wandoujia/p4/app/detail/model/CommentJson;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->savedComment:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->user:Lcom/wandoujia/p4/app/detail/model/UserCenterInfo;

    return-object v0
.end method

.method public setSavedComment(Lcom/wandoujia/p4/app/detail/model/CommentJson;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/wandoujia/p4/app/detail/model/CommentSummary;->savedComment:Lcom/wandoujia/p4/app/detail/model/CommentJson;

    .line 54
    return-void
.end method
