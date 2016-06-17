.class public Lcom/wandoujia/entities/game/GameExtraProfile;
.super Ljava/lang/Object;
.source "GameExtraProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private coverImage:Lcom/wandoujia/entities/game/GameExtraProfile$CoverImage;

.field private userNotice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getCoverImage()Lcom/wandoujia/entities/game/GameExtraProfile$CoverImage;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameExtraProfile;->coverImage:Lcom/wandoujia/entities/game/GameExtraProfile$CoverImage;

    return-object v0
.end method

.method public getUserNotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameExtraProfile;->userNotice:Ljava/lang/String;

    return-object v0
.end method
