.class public final Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "LaunchSourcePackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;",
        ">;"
    }
.end annotation


# instance fields
.field public keyword:Ljava/lang/String;

.field public source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 68
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;->keyword:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->keyword:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage;-><init>(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;Ld;)V

    return-object v0
.end method

.method public final keyword(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->keyword:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public final source(Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;)Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Builder;->source:Lcom/wandoujia/logv3/model/packages/LaunchSourcePackage$Source;

    .line 78
    return-object p0
.end method
