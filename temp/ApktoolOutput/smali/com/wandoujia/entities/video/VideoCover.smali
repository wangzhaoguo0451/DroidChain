.class public Lcom/wandoujia/entities/video/VideoCover;
.super Ljava/lang/Object;
.source "VideoCover.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field l:Ljava/lang/String;

.field s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoCover;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoCover;->s:Ljava/lang/String;

    return-object v0
.end method

.method public setL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/wandoujia/entities/video/VideoCover;->l:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setS(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wandoujia/entities/video/VideoCover;->s:Ljava/lang/String;

    .line 20
    return-void
.end method
