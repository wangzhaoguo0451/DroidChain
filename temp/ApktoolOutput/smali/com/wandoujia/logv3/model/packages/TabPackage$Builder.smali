.class public final Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TabPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TabPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public unread_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/TabPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 63
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TabPackage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;->name:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/TabPackage;->unread_num:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;->unread_num:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/TabPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/TabPackage;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TabPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/TabPackage;-><init>(Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;->name:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public final unread_num(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/TabPackage$Builder;->unread_num:Ljava/lang/String;

    .line 81
    return-object p0
.end method
