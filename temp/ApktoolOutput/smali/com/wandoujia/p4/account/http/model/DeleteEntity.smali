.class public Lcom/wandoujia/p4/account/http/model/DeleteEntity;
.super Ljava/lang/Object;
.source "DeleteEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hiddenStatus:Z

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/wandoujia/p4/account/http/model/DeleteEntity;->packageName:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/account/http/model/DeleteEntity;->hiddenStatus:Z

    .line 12
    return-void
.end method
