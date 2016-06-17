.class public final Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IdPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/IdPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public identity:Ljava/lang/String;

.field public pcid:Ljava/lang/String;

.field public udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/IdPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 78
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;->identity:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->identity:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;->udid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->udid:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/IdPackage;->pcid:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->pcid:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/IdPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/IdPackage;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->checkRequiredFields()V

    .line 111
    new-instance v0, Lcom/wandoujia/logv3/model/packages/IdPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/IdPackage;-><init>(Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->identity:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public final pcid(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->pcid:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public final udid(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/IdPackage$Builder;->udid:Ljava/lang/String;

    .line 97
    return-object p0
.end method
