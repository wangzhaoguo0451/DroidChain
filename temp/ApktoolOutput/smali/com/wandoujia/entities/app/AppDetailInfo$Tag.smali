.class public Lcom/wandoujia/entities/app/AppDetailInfo$Tag;
.super Ljava/lang/Object;
.source "AppDetailInfo.java"

# interfaces
.implements Lcom/wandoujia/entities/app/IAppDetailInfo$ITag;
.implements Ljava/io/Serializable;


# instance fields
.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/wandoujia/entities/app/AppDetailInfo$Tag;->tag:Ljava/lang/String;

    return-object v0
.end method
