.class public final Lcom/wandoujia/base/models/BaseStr$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BaseStr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/base/models/BaseStr;",
        ">;"
    }
.end annotation


# instance fields
.field public val:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/base/models/BaseStr;)V
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
    iget-object v0, p1, Lcom/wandoujia/base/models/BaseStr;->val:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/base/models/BaseStr$Builder;->val:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/base/models/BaseStr$Builder;->build()Lcom/wandoujia/base/models/BaseStr;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/base/models/BaseStr;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/wandoujia/base/models/BaseStr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/base/models/BaseStr;-><init>(Lcom/wandoujia/base/models/BaseStr$Builder;Ld;)V

    return-object v0
.end method

.method public final val(Ljava/lang/String;)Lcom/wandoujia/base/models/BaseStr$Builder;
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wandoujia/base/models/BaseStr$Builder;->val:Ljava/lang/String;

    .line 50
    return-object p0
.end method
