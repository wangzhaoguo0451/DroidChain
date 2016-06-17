.class public Lcom/wandoujia/entities/game/GameExtraProfile$CoverImage;
.super Ljava/lang/Object;
.source "GameExtraProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/entities/game/GameExtraProfile$CoverImage;->url:Ljava/lang/String;

    return-object v0
.end method
