.class public Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;
.super Ljava/lang/Object;
.source "GiftBeanModels.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cdkey:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCdkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->cdkey:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/gift/http/model/GiftBeanModels$GiftBeanCdkey;->error:Ljava/lang/String;

    return-object v0
.end method
