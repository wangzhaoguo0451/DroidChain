.class public Lcom/wandoujia/update/toolkit/SelfUpdateResult;
.super Ljava/lang/Object;
.source "SelfUpdateResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public installerPath:Ljava/lang/String;
    .annotation runtime Lcwj;
        a = "installerPath"
    .end annotation
.end field

.field public updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;
    .annotation runtime Lcwj;
        a = "updateInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 21
    iput-object p2, p0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->installerPath:Ljava/lang/String;

    .line 22
    return-void
.end method
