.class public final Lcom/wandoujia/api/proto/OnboardResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OnboardResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/wandoujia/api/proto/OnboardResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public onboard_status:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/api/proto/OnboardResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 48
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/api/proto/OnboardResponse;->onboard_status:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/wandoujia/api/proto/OnboardResponse$Builder;->onboard_status:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/OnboardResponse$Builder;->build()Lcom/wandoujia/api/proto/OnboardResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/wandoujia/api/proto/OnboardResponse;
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/wandoujia/api/proto/OnboardResponse$Builder;->checkRequiredFields()V

    .line 63
    new-instance v0, Lcom/wandoujia/api/proto/OnboardResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/api/proto/OnboardResponse;-><init>(Lcom/wandoujia/api/proto/OnboardResponse$Builder;Ld;)V

    return-object v0
.end method

.method public final onboard_status(Ljava/lang/Boolean;)Lcom/wandoujia/api/proto/OnboardResponse$Builder;
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wandoujia/api/proto/OnboardResponse$Builder;->onboard_status:Ljava/lang/Boolean;

    .line 57
    return-object p0
.end method
