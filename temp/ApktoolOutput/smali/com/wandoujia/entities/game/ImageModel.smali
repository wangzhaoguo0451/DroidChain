.class public Lcom/wandoujia/entities/game/ImageModel;
.super Ljava/lang/Object;
.source "ImageModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/wandoujia/entities/game/ImageModel;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/entities/game/ImageModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/wandoujia/entities/game/ImageModel;->width:I

    return v0
.end method
