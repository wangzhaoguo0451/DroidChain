.class public Lcom/wandoujia/entities/game/GameTag;
.super Ljava/lang/Object;
.source "GameTag.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private color:Lcom/wandoujia/entities/game/GameTag$TagColor;

.field private configureUrl:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private tagId:J

.field private tagName:Ljava/lang/String;

.field private tagType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public getColor()Lcom/wandoujia/entities/game/GameTag$TagColor;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameTag;->color:Lcom/wandoujia/entities/game/GameTag$TagColor;

    return-object v0
.end method

.method public getConfigureUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameTag;->configureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameTag;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTagId()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/wandoujia/entities/game/GameTag;->tagId:J

    return-wide v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/wandoujia/entities/game/GameTag;->tagType:I

    return v0
.end method
