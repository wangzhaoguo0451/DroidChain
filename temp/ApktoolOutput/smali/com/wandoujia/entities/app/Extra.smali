.class public Lcom/wandoujia/entities/app/Extra;
.super Ljava/lang/Object;
.source "Extra.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appOperatorRemark:Lcom/wandoujia/entities/app/AppOperatorRemark;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppOperatorRemark()Lcom/wandoujia/entities/app/AppOperatorRemark;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/entities/app/Extra;->appOperatorRemark:Lcom/wandoujia/entities/app/AppOperatorRemark;

    return-object v0
.end method

.method public setAppOperatorRemark(Lcom/wandoujia/entities/app/AppOperatorRemark;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wandoujia/entities/app/Extra;->appOperatorRemark:Lcom/wandoujia/entities/app/AppOperatorRemark;

    .line 20
    return-void
.end method
