.class public final Lcom/wandoujia/api/proto/UserCenterInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UserCenterInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/UserCenterInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public activeSina:Ljava/lang/Boolean;

.field public avatar:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/UserCenterInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 74
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->uid:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->username:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->activeSina:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->activeSina:Ljava/lang/Boolean;

    .line 78
    iget-object v0, p1, Lcom/wandoujia/api/proto/UserCenterInfo;->avatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->avatar:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final activeSina(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/UserCenterInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->activeSina:Ljava/lang/Boolean;

    .line 93
    return-object p0
.end method

.method public final avatar(Ljava/lang/String;)Lcom/wandoujia/api/proto/UserCenterInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->avatar:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->build()Lcom/wandoujia/api/proto/UserCenterInfo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/UserCenterInfo;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/wandoujia/api/proto/UserCenterInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/UserCenterInfo;-><init>(Lcom/wandoujia/api/proto/UserCenterInfo$Builder;Ld;)V

    return-object v0
.end method

.method public final uid(Ljava/lang/String;)Lcom/wandoujia/api/proto/UserCenterInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->uid:Ljava/lang/String;

    .line 83
    return-object p0
.end method

.method public final username(Ljava/lang/String;)Lcom/wandoujia/api/proto/UserCenterInfo$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/api/proto/UserCenterInfo$Builder;->username:Ljava/lang/String;

    .line 88
    return-object p0
.end method
