.class public Lcom/wandoujia/p4/search/model/ProviderOpenInfo;
.super Ljava/lang/Object;
.source "ProviderOpenInfo.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# instance fields
.field public intent:Lcom/wandoujia/push/protocol/PushEntityV1$Intent;

.field public minVersion:I

.field public minWdjVersion:I

.field public providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
