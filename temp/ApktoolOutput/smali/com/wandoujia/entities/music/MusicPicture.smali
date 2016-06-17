.class public Lcom/wandoujia/entities/music/MusicPicture;
.super Ljava/lang/Object;
.source "MusicPicture.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x24513e406b479bb6L


# instance fields
.field public b:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/wandoujia/entities/music/MusicPicture;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/wandoujia/entities/music/MusicPicture;

    invoke-direct {v0}, Lcom/wandoujia/entities/music/MusicPicture;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/wandoujia/entities/music/MusicPicture;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/entities/music/MusicPicture;->s:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcom/wandoujia/entities/music/MusicPicture;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/entities/music/MusicPicture;->l:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/wandoujia/entities/music/MusicPicture;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/wandoujia/entities/music/MusicPicture;->b:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/wandoujia/entities/music/MusicPicture;->clone()Lcom/wandoujia/entities/music/MusicPicture;

    move-result-object v0

    return-object v0
.end method
