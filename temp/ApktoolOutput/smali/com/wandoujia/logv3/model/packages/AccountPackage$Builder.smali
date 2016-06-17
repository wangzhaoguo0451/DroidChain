.class public final Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "AccountPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/AccountPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public telephone:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/AccountPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 77
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AccountPackage;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->uid:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AccountPackage;->telephone:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->telephone:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/AccountPackage;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->email:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/AccountPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/AccountPackage;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/wandoujia/logv3/model/packages/AccountPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/AccountPackage;-><init>(Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final email(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->email:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public final telephone(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->telephone:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public final uid(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/AccountPackage$Builder;->uid:Ljava/lang/String;

    .line 88
    return-object p0
.end method
