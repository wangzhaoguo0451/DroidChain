.class public final Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ViewLogPackage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;",
        ">;"
    }
.end annotation


# instance fields
.field public index:Ljava/lang/Integer;

.field public sub_index:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 244
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 248
    if-nez p1, :cond_0

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->index:Ljava/lang/Integer;

    .line 250
    iget-object v0, p1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;->sub_index:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->sub_index:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage;-><init>(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;Ld;)V

    return-object v0
.end method

.method public final index(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->index:Ljava/lang/Integer;

    .line 258
    return-object p0
.end method

.method public final sub_index(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$IndexPackage$Builder;->sub_index:Ljava/lang/Integer;

    .line 266
    return-object p0
.end method
