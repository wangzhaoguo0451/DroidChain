.class public Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;
.super Ljava/lang/Object;
.source "GameLeaderboardModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/GameLiteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v3

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/game/GameLiteInfo;

    .line 42
    invoke-virtual {p1}, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/entities/game/GameLiteInfo;

    .line 43
    invoke-virtual {v0}, Lcom/wandoujia/entities/game/GameLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/wandoujia/entities/game/GameLiteInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 47
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/game/GameLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->apps:Ljava/util/List;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->apps:Ljava/util/List;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->apps:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/launcher/launcher/models/GameLeaderboardModel;->title:Ljava/lang/String;

    goto :goto_0
.end method
