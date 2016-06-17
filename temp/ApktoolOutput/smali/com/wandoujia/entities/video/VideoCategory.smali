.class public Lcom/wandoujia/entities/video/VideoCategory;
.super Ljava/lang/Object;
.source "VideoCategory.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field alias:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoCategory;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoCategory;->name:Ljava/lang/String;

    return-object v0
.end method
