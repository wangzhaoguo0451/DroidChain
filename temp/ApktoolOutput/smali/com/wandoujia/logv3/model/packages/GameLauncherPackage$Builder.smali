.class public final Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GameLauncherPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public game_count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 44
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;->game_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage;-><init>(Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final game_count(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/GameLauncherPackage$Builder;->game_count:Ljava/lang/Integer;

    .line 50
    return-object p0
.end method
