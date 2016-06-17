.class public final Lcom/wandoujia/base/models/BaseBoolean$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BaseBoolean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/base/models/BaseBoolean;",
        ">;"
    }
.end annotation


# instance fields
.field public val:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/base/models/BaseBoolean;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 45
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/base/models/BaseBoolean;->val:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/base/models/BaseBoolean$Builder;->val:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/base/models/BaseBoolean$Builder;->build()Lcom/wandoujia/base/models/BaseBoolean;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/base/models/BaseBoolean;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/wandoujia/base/models/BaseBoolean$Builder;->checkRequiredFields()V

    .line 57
    new-instance v0, Lcom/wandoujia/base/models/BaseBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/base/models/BaseBoolean;-><init>(Lcom/wandoujia/base/models/BaseBoolean$Builder;Ld;)V

    return-object v0
.end method

.method public final val(Ljava/lang/Boolean;)Lcom/wandoujia/base/models/BaseBoolean$Builder;
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/wandoujia/base/models/BaseBoolean$Builder;->val:Ljava/lang/Boolean;

    .line 51
    return-object p0
.end method
